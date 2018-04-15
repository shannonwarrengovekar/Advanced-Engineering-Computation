#include <iostream>
#include <polygonalmesh.h>
#include "naca4digit.h"
#include <ysclass.h>

using namespace std;
std::vector <YsVec3> MakeNACA4DigitAirfoil(vector<int> naca,const double dz)
{
	YsVec3 obj;
	std::vector <YsVec3> vtx;
	double fd = naca[0];
	double sd = naca[1];
	double td = naca[2];
	double fod = naca[3];	
	double t = (double)(td*10+fod)/100;
	double p = (double)sd/10;
	double m = (double)fd/100;
	double c = 1.0;
	double yc;

	for(double z=0.0; z <= 1;)
	{
		double x = 0;
		double y = 5*t*(0.2969*pow(z,0.5)-0.1260*z-0.3516*pow(z,2)+0.2843*pow(z,3)-0.1015*pow(z,4));

		double ratio = z/c;
		if( z > 0 && z <= p)
		{
			yc = (m/pow(p,2))*(2*p*(ratio)-pow(ratio,2));
		}	
		else if ( z > p)
		{
			yc = (m/pow(1-p,2))*((1-2*p)+2*p*(ratio)-pow(ratio,2));
		}
		double zUp = z;
		double yUp = yc + y;
		z=z+dz;
		obj.SetX(x);
		obj.SetY(yUp);
		obj.SetZ(zUp);
		vtx.push_back(obj);	
	}

	for(double z = 1; z >=0;)
	{
		double x = 0;
		double y = 5*t*(0.2969*pow(z,0.5)-0.1260*z-0.3516*pow(z,2)+0.2843*pow(z,3)-0.1015*pow(z,4));

		double ratio = z/c;
		if( z > 0 && z <= p)
		{
			yc = (m/pow(p,2))*(2*p*(ratio)-pow(ratio,2));
		}	
		else if ( z > p )
		{
			yc = (m/pow(1-p,2))*((1-2*p)+2*p*(ratio)-pow(ratio,2));
		}
		double zLo = z;
		double yLo = yc - y;
		z=z-dz;
		obj.SetX(x);
		obj.SetY(yLo);
		obj.SetZ(zLo);
		vtx.push_back(obj);	
	}
	// int answer = vtx.size();


	// double x_temp,y_temp,z_temp;
	// for(int i=0; i < answer; ++i)
	// {

	// 	vtx[i].Get(x_temp, y_temp, z_temp);
	// 	cout << "x: " << x_temp << " y: " << y_temp << " z: " << z_temp << endl; 		

	// }

	return vtx;
}

void MakeNACA4DigitAirfoilWing(class PolygonalMesh &mesh,vector <int> naca,float span,float sweepBack,float dihedral,float taper,float dz)
{
// vertices at x= 0;
	//std::vector <PolygonalMesh::VertexHandle> vtHdArray;
	std::vector <YsVec3> test;
	std::vector <YsVec3> pmesh;
	std::vector<PolygonalMesh::VertexHandle> plVtHd;
	std::vector <float> vtx;
	std::vector <float> vtx1;
	std::vector <float> vtx2;


	double value = double((span));
	test = MakeNACA4DigitAirfoil(naca,dz);


	int j = 0;
	int k = 0;

	


		// for(int i = 0; i < test.size(); ++i)
		// {
		// 		vtx.push_back(test[i][0]);
		// 		vtx.push_back(test[i][1]);
		// 		vtx.push_back(test[i][2]);
		// 		vtx.push_back(value);
		// 		vtx.push_back((vtx[j+1]+dihedral)*taper);
		// 		vtx.push_back((vtx[j+2]+sweepBack)*taper);
		// 		vtx.push_back(-value);
		// 		vtx.push_back((vtx[j+1]+dihedral)*taper);
		// 		vtx.push_back((vtx[j+2]+sweepBack)*taper);
		// 		j=j+9;
		// 		k=k+11;	
		// }
    for(int i = 0; i < test.size(); ++i)
		{
				vtx.push_back(test[i][0]);
				vtx.push_back(test[i][1]);
				vtx.push_back(test[i][2]);	
		}



	int answer = vtx.size();
	printf("size of vec = %d", answer);

	for(int i = 0 ; i < answer;)
	{
		double value = double((span));
		vtx1.push_back(value);
		vtx1.push_back((vtx[i+1]+dihedral));
		vtx1.push_back(sweepBack + (vtx[i+2])*taper);
		i = i+3;
	}

	for(int i = 0 ; i < answer-3;)
	{
		double value = double((-span));
		vtx2.push_back(value);
		vtx2.push_back((vtx[i+1]+dihedral));
		vtx2.push_back(sweepBack + (vtx[i+2])*taper);
		i = i+3;
	}


	for(int i = 0; i < answer-5;)
	{
	 std::vector <PolygonalMesh::VertexHandle> vtHdArray;
	 PolygonalMesh::PolygonHandle plHdArray;
	 YsVec3 nom;
	 YsVec3 v1;
	 YsVec3 v2;


	 vtHdArray.push_back(mesh.AddVertex(YsVec3(vtx[i],vtx[i+1],vtx[i+2])));
	 vtHdArray.push_back(mesh.AddVertex(YsVec3(vtx1[i],vtx1[i+1],vtx1[i+2]))); 
	 vtHdArray.push_back(mesh.AddVertex(YsVec3(vtx1[i+3],vtx1[i+4],vtx1[i+5]))); 

	 v1.SetX(vtx[i]-vtx1[i]);
	 v1.SetY(vtx[i+1]-vtx1[i+1]);
	 v1.SetZ(vtx[i+2]-vtx1[i+2]);
	 v2.SetX(vtx1[i]-vtx1[i+3]);
	 v2.SetY(vtx1[i+1]-vtx1[i+4]);
	 v2.SetZ(vtx1[i+2]-vtx1[i+5]);


	 nom=YsUnitVector(v1^v2);
	 plHdArray = mesh.AddPolygon(vtHdArray); 
	 mesh.SetPolygonColor(plHdArray,YsBlue());
	 mesh.SetPolygonNormal(plHdArray,nom);
	 //clear

	 //2nd polygon
	 std::vector <PolygonalMesh::VertexHandle> vtHdArray1;
	 PolygonalMesh::PolygonHandle plHdArray1;
	 YsVec3 nom1;
	 YsVec3 v3;
	 YsVec3 v4;

	 vtHdArray1.push_back(mesh.AddVertex(YsVec3(vtx[i],vtx[i+1],vtx[i+2])));
	 vtHdArray1.push_back(mesh.AddVertex(YsVec3(vtx2[i+3],vtx2[i+4],vtx2[i+5]))); 
	 vtHdArray1.push_back(mesh.AddVertex(YsVec3(vtx2[i],vtx2[i+1],vtx2[i+2])));

	 v3.SetX(vtx[i]-vtx2[i+3]);
	 v3.SetY(vtx[i+1]-vtx2[i+4]);
	 v3.SetZ(vtx[i+2]-vtx2[i+5]);
	 v4.SetX(vtx2[i+3]-vtx2[i]);
	 v4.SetY(vtx2[i+4]-vtx2[i+1]);
	 v4.SetZ(vtx2[i+5]-vtx2[i+2]);


	 nom1=YsUnitVector(v3^v4);
	 plHdArray1 = mesh.AddPolygon(vtHdArray1); 
	 mesh.SetPolygonColor(plHdArray1,YsBlue());
	 mesh.SetPolygonNormal(plHdArray1,nom1);


	 // //clear
	 //3rd polygon
	 std::vector <PolygonalMesh::VertexHandle> vtHdArray2;
	 PolygonalMesh::PolygonHandle plHdArray2;
	 YsVec3 nom2;
	 YsVec3 v5;
	 YsVec3 v6;

	 vtHdArray2.push_back(mesh.AddVertex(YsVec3(vtx1[i+3],vtx1[i+4],vtx1[i+5]))); 
	 vtHdArray2.push_back(mesh.AddVertex(YsVec3(vtx[i+3],vtx[i+4],vtx[i+5]))); 
	 vtHdArray2.push_back(mesh.AddVertex(YsVec3(vtx[i],vtx[i+1],vtx[i+2]))); 

	 v5.SetX(vtx1[i+3]-vtx[i+3]);
	 v5.SetY(vtx1[i+4]-vtx[i+4]);
	 v5.SetZ(vtx1[i+4]-vtx[i+5]);
	 v6.SetX(vtx[i+3]-vtx[i]);
	 v6.SetY(vtx[i+4]-vtx[i+1]);
	 v6.SetZ(vtx[i+5]-vtx[i+2]);

	 nom2=YsUnitVector(v5^v6);


	 plHdArray2 = mesh.AddPolygon(vtHdArray2);
	 mesh.SetPolygonColor(plHdArray2,YsBlue()); 
	 mesh.SetPolygonNormal(plHdArray2,nom2);


	 //clear
	 //4th polygon
	 std::vector <PolygonalMesh::VertexHandle> vtHdArray3; 
	 PolygonalMesh::PolygonHandle plHdArray3;
	
	 YsVec3 nom3;
	 YsVec3 v7;
	 YsVec3 v8;

	 vtHdArray3.push_back(mesh.AddVertex(YsVec3(vtx[i],vtx[i+1],vtx[i+2])));  
	 vtHdArray3.push_back(mesh.AddVertex(YsVec3(vtx[i+3],vtx[i+4],vtx[i+5])));
	 vtHdArray3.push_back(mesh.AddVertex(YsVec3(vtx2[i+3],vtx2[i+4],vtx2[i+5]))); 

	 v7.SetX(vtx[i]-vtx[i+3]);
	 v7.SetY(vtx[i+1]-vtx[i+4]);
	 v7.SetZ(vtx[i+2]-vtx[i+5]);
	 v8.SetX(vtx[i+3]-vtx2[i+3]);
	 v8.SetY(vtx[i+4]-vtx2[i+4]);
	 v8.SetZ(vtx[i+5]-vtx2[i+5]);

	 nom3=YsUnitVector(v7^v8);


	 plHdArray3 =mesh.AddPolygon(vtHdArray3); 
	 mesh.SetPolygonColor(plHdArray3,YsBlue());
	 mesh.SetPolygonNormal(plHdArray3,nom3);
	 //clear
	 i=i+3;
	};
	//SetPolygonColor(plHdArray,YsBlue());
	printf("\n%lld vertices\n",mesh.GetNumVertex());
	printf("%lld polygons\n",mesh.GetNumPolygon());


	//int nanswer = vtx.size();
	//printf("size of vec = %d", nanswer);

	// for(int i =0 ; i < nanswer; ++i)
	// {
 //    vtHdArray.push_back(mesh.AddVertex(YsVec3(vtx[i],vtx[i+1],vtx[i+2])));
 //    vtHdArray.push_back(mesh.AddVertex(YsVec3( vtx[answer+i],vtx[answer+i+1],vtx[answer+i+2])));
 //    i=i+3;
 //    vtHdArray.push_back(mesh.AddVertex(YsVec3(vtx[i],vtx[i+1],vtx[i+2])));
 //    vtHdArray.push_back(mesh.AddVertex(YsVec3( vtx[answer+i],vtx[answer+i+1],vtx[answer+i+2])));
 //    plHdArray.push_back(mesh.AddPolygon(plVtHd));
	// }

	// for(int i =0 ; i < nanswer; ++i)
	// {
 //    vtHdArray.push_back(mesh.AddVertex(YsVec3(vtx[i],vtx[i+1],vtx[i+2])));
 //    vtHdArray.push_back(mesh.AddVertex(YsVec3( vtx[answer+i],vtx[answer+i+1],vtx[answer+i+2])));
 //    i=i+3;
 //    vtHdArray.push_back(mesh.AddVertex(YsVec3(vtx[i],vtx[i+1],vtx[i+2])));
 //    vtHdArray.push_back(mesh.AddVertex(YsVec3( vtx[2*answer+i],vtx[2*answer+i+1],vtx[2*answer+i+2])));
 //    plHdArray.push_back(mesh.AddPolygon(plVtHd));
	// }

	// printf("\n%lld vertices\n",mesh.GetNumVertex());
	// printf("%lld polygons\n",mesh.GetNumPolygon());

//return vtx;

return;

}
