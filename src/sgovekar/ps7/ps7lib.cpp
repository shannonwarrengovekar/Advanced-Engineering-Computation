#include <iostream>
#include <fssimplewindow.h> // For FsSubSecondTimer
#include <meshlattice.h>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <lattice.h>
#include <algorithm>
#include <unordered_map>

#include "ps7lib.h"

std::vector <float> MakeSliceVertexArray(const YsShellExt &mesh)
{
	// auto t0=FsSubSecondTimer();

	// std::vector <float> sliceVtx;
	// YsVec3 bbx[2];

	// mesh.GetBoundingBox(bbx[0],bbx[1]);
	// float yPlane[100];
	// float yMinimum = bbx[0].yf();
	// float yMaximum = bbx[1].yf();
	// float yInterval = (yMaximum - yMinimum)/100;

	// for(int i = 0; i < 100; ++i)
	// {
	// 	yPlane[i] = yMinimum + i*yInterval;
	// }

	// printf("%d milli seconds\n",(int)FsSubSecondTimer()-t0);
	// return sliceVtx;
	auto t0=FsSubSecondTimer();
	std::vector <float> sliceVtx;

	float y_plane[100];
	YsVec3 bbx[2];

	std::unordered_map <unsigned int, std::vector <YsVec3>> intersection;

	
	mesh.GetBoundingBox(bbx[0], bbx[1]);
	float y_min = bbx[0].yf(), y_max = bbx[1].yf(), y_interval = (y_max - y_min) / 99.f;
	
	for(int i = 0; i < 100; ++i)
	{
		y_plane[i] = y_min + i * y_interval;
	}

	
	for(auto curPolygon : mesh.AllPolygon())
	{
	
		intersection.clear();
		auto curVertices = mesh.GetPolygonVertex(curPolygon);
		int vtx_number = curVertices.size();

		for(int i = 0; i < vtx_number; ++i)
		{

			
			YsShellExt::VertexHandle vtx1Hd = curVertices[i];
			YsShellExt::VertexHandle vtx2Hd = curVertices[(i + 1) % vtx_number];

			YsVec3 vtx1 = mesh.GetVertexPosition(vtx1Hd);
			YsVec3 vtx2 = mesh.GetVertexPosition(vtx2Hd);

			float vtx1Y = vtx1.yf(), vtx2Y = vtx2.yf();
			if(vtx1Y < vtx2Y)
			{
				YsVec3 temp = vtx2;
				vtx2 = vtx1;
				vtx1 = temp;
			}
			
			vtx1Y = vtx1.yf(), vtx2Y = vtx2.yf();
			float vtx1X = vtx1.xf(), vtx2X = vtx2.xf();
			float vtx1Z = vtx1.zf(), vtx2Z = vtx2.zf();

			int vtx1_layer = int((vtx1Y - y_min) / y_interval - 0.5);
			int vtx2_layer = int((vtx2Y - y_min) / y_interval - 0.5);

			if((vtx1_layer - vtx2_layer) == 0)
			{
				continue;
			}
			for(int i = vtx2_layer + 1; i <= vtx1_layer; i ++)
			{
				float planeY = y_plane[i];
				float alpha = (vtx1Y - planeY) / (vtx1Y - vtx2Y);
				float planeX = (1.f - alpha) * vtx1X + alpha * vtx2X;
				float planeZ = (1.f - alpha) * vtx1Z + alpha * vtx2Z;
				intersection[i].push_back(YsVec3(planeX, planeY, planeZ));
			}
		}

		for(auto it = intersection.begin(); it != intersection.end(); it ++)
		{
			if(it->second.size() == 2)
			{
				sliceVtx.push_back(it->second[0].xf());
				sliceVtx.push_back(it->second[0].yf());
				sliceVtx.push_back(it->second[0].zf());

				sliceVtx.push_back(it->second[1].xf());
				sliceVtx.push_back(it->second[1].yf());
				sliceVtx.push_back(it->second[1].zf());
			}
		}
	}
	printf("%d milli seconds\n",(int)FsSubSecondTimer()-t0);
	return sliceVtx;
}


#define USE_LATTICE


std::vector <float> MakeRayIntersectionVertexArray(const YsShellExt &mesh)
{
	auto t0=FsSubSecondTimer();

	std::vector <float> rayItscVtx;


	YsVec3 bbx[2];
	mesh.GetBoundingBox(bbx[0],bbx[1]);

	float bottomX = bbx[0].x();
	float bottomY = bbx[0].y();
	float bottomZ = bbx[0].z();

	float topX = bbx[1].x();
	float topY = bbx[1].y();
	float topZ = bbx[1].z();

	MeshLattice meshLattice;

	meshLattice.SetDomain(mesh,100,100,1);


	for(float i = bottomX; i <= topX; i+= (topX-bottomX)/99.0)
	{
		for(float j = bottomY; j <= topY; j+= (topY - bottomY)/99.0)
		{
			
			auto index = meshLattice.GetBlockIndex(YsVec3(i,j,(topZ-bottomZ)/2));
			
			std::vector<YsShellExt::PolygonHandle> tempPolyVec = meshLattice[index].plHd;
			printf("[DEBUG] \n");
			for(int z = 0; z < tempPolyVec.size(); ++z)
			{
				
				YsVec3 points [3];
				printf("[DEBUG]\n");
				int counter = 0;

				for(auto vtHd : mesh.GetPolygonVertex(tempPolyVec[z]))
				{
					points[counter] = (mesh.GetVertexPosition(vtHd));
					counter++;
				}

				YsPlane plane;
				YsVec3 vec;

				plane.MakePlaneFromTriangle(points[0],points[1],points[2]);
				

				if(YSOK == plane.GetPenetration(vec,YsVec3(i,j,bottomZ),YsVec3(i,j,topZ)))
				{
					YSSIDE val = YsCheckInsidePolygon3(vec,3,points);
					if(val == YSINSIDE || val == YSBOUNDARY)
					{
						rayItscVtx.push_back(vec.x());
						rayItscVtx.push_back(vec.y());
						rayItscVtx.push_back(vec.z());
					}
				}
			}
		}
	}
	printf("%d milli seconds\n",(int)FsSubSecondTimer()-t0);
	return rayItscVtx;
}

void Paint(YsShellExt &mesh,YsShell::PolygonHandle from,const double angleTolerance)
{
	std::vector<YsShell::PolygonHandle> polyg;

	if(from == NULL)
	{
		printf("ERROR : NULL POINTER");
		return;
	}
	polyg.push_back(from);
	mesh.SetPolygonColor(from,YsRed());
	YsVec3 normalFrom = mesh.GetNormal(from);

	for(int index = 0; index < polyg.size(); ++index)
	{

	auto nEdge = mesh.GetPolygonNumVertex(polyg[index]);
		for(int i = 0; i < nEdge; ++i)
		{
			auto neigHd = mesh.GetNeighborPolygon(polyg[index],i);
			if(neigHd != NULL)
			{
				std::cout << nEdge << std::endl;
				YsVec3 nei_norm = mesh.GetNormal(neigHd);

				double angle_cos = normalFrom * nei_norm;
				double tolerance = cos(angleTolerance * YsPi /180.f);
		

				if((angle_cos >= tolerance) && polyg.end() == std::find(polyg.begin(), polyg.end(),neigHd))
				{
					mesh.SetPolygonColor(neigHd,YsRed());
					polyg.push_back(neigHd);
				}
			}
		}
	}
}
