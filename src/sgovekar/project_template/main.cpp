/* ////////////////////////////////////////////////////////////
File Name: main.cpp
Copyright (c) 2018 Shannon Govekar.  All rights reserved.

The main file to run the chess game engine, this file loads
GUI for the pieces and chess board
//////////////////////////////////////////////////////////// */

#include <vector>
#include <sstream>
#include <ysclass.h>
#include <iostream>
#include <fslazywindow.h>
#include <string>
#include <stdio.h>
#include <stdlib.h>
#include "simplebitmap.h"


using namespace std;
class FsLazyWindowApplication : public FsLazyWindowApplicationBase
{
protected:
	bool needRedraw;
	SimpleBitmap Final;
	SimpleBitmap Test;
	SimpleBitmap bmp;

	YsMatrix4x4 Rc;
	double d;
	YsVec3 t;
	
	std::vector <float> vtx,nom,col;
	std::vector <YsVec3> test;
	//std::vector <float> vtx1;
	YsVec3 bbx[2];

	static void AddColor(std::vector <float> &col,float r,float g,float b,float a);
	static void AddVertex(std::vector <float> &vtx,float x,float y,float z);
	static void AddNormal(std::vector <float> &nom,float x,float y,float z);

	void RemakeVertexArray(void);

public:
	FsLazyWindowApplication();
	virtual void BeforeEverything(int argc,char *argv[]);
	virtual void GetOpenWindowOption(FsOpenWindowOption &OPT) const;
	virtual void Initialize(int argc,char *argv[]);
	virtual void Interval(void);
	virtual void BeforeTerminate(void);
	virtual void Draw(void);
	virtual bool UserWantToCloseProgram(void);
	virtual bool MustTerminate(void) const;
	virtual long long int GetMinimumSleepPerInterval(void) const;
	virtual bool NeedRedraw(void) const;
	void drawBitmap(string s);

	void drawText(const char *text, int length, int x, int y)
	{
		glMatrixMode(GL_PROJECTION);
		double *matrix = new double[16];
		glGetDoublev(GL_PROJECTION_MATRIX, matrix);
		glLoadIdentity();
		glPushMatrix();
		glLoadIdentity();
		glRasterPos2i(x,y);
		for(int i =0; i < length; ++i)
		{
			//glutBitmapCharacter(GLUT_BITMAP_8_BY_13, (int)text[i]);
		}
		glPopMatrix();
		glMatrixMode(GL_PROJECTION);
		glLoadMatrixd(matrix);
		glMatrixMode(GL_MODELVIEW);
	}
};

/* static */ void FsLazyWindowApplication::AddColor(std::vector <float> &col,float r,float g,float b,float a)
{
	col.push_back(r);
	col.push_back(g);
	col.push_back(b);
	col.push_back(a);
}
/* static */ void FsLazyWindowApplication::AddVertex(std::vector <float> &vtx,float x,float y,float z)
{
	vtx.push_back(x);
	vtx.push_back(y);
	vtx.push_back(z);
}
/* static */ void FsLazyWindowApplication::AddNormal(std::vector <float> &nom,float x,float y,float z)
{
	nom.push_back(x);
	nom.push_back(y);
	nom.push_back(z);
}

void FsLazyWindowApplication::RemakeVertexArray(void)
{
	vtx.clear();
	col.clear();
	nom.clear();
}

FsLazyWindowApplication::FsLazyWindowApplication()
{
	needRedraw=false;
	d=2;
	t=YsVec3::Origin();
}

/* virtual */ void FsLazyWindowApplication::BeforeEverything(int argc,char *argv[])
{
	
}
/* virtual */ void FsLazyWindowApplication::GetOpenWindowOption(FsOpenWindowOption &opt) const
{
	opt.x0=0;
	opt.y0=0;
	opt.wid=1900;
	opt.hei=1400;
}
/* virtual */ void FsLazyWindowApplication::Initialize(int argc,char *argv[])
{
	
	int count = 0;
	
	if(argc <= 2)
	{
		Test.Create(1200,1200);
		//Test.LoadPng(argv[1]);
		Final.Create(740,740);
		int t = 0;
		int m = 0;
		vector<int> vec;
		char myword[65] = { '1', '2', '3', '4', '5', '6','7','8',
							'0', '9', '0', '9', '0', '9','0','9',
							'k', 'l', 'k', 'l', 'k', 'l','k','l',
							'l', 'k', 'l', 'k', 'l', 'k','l','k',
							'k', 'l', 'k', 'l', 'k', 'l','k','l',
							'l', 'k', 'l', 'k', 'l', 'k','l','k',
							'j', 'j', 'j', 'i', 'j', 'i','j','i',
							'a', 'b', 'c', 'd', 'e', 'f','g','h'};
		
		int q = 1;
		for(int n = 0; n < 64;)
		{
		if(t < 740)
		{
		stringstream ss;
		ss << myword[n] << ".png";
		string filename = ss.str();
		bmp.LoadPng(filename.c_str());
		bmp.Invert();
			for(int i =0; i < 92.5; ++i)
			{
				for(int j =0; j < 92.5; ++j)
				{
					for(int k=0; k<4; ++k)
					{
					*(Final.GetEditablePixelPointer(i+t,j+m)+k) = *(bmp.GetPixelPointer(i,j)+k);
					}
				}
			}
		t = t+93;
		++n;
		}
		else
		{
			t = 0;
			m=m+92.5;
		}
		}
	 }
}
/* virtual */ void FsLazyWindowApplication::Interval(void)
{
	auto key=FsInkey();
	if(FSKEY_ESC==key)
	{
		SetMustTerminate(true);
	}

	if(FsGetKeyState(FSKEY_LEFT))
	{
		Rc.RotateXZ(YsPi/60.0);
	}
	if(FsGetKeyState(FSKEY_RIGHT))
	{
		Rc.RotateXZ(-YsPi/60.0);
	}
	if(FsGetKeyState(FSKEY_UP))
	{
		Rc.RotateYZ(YsPi/60.0);
	}
	if(FsGetKeyState(FSKEY_DOWN))
	{
		Rc.RotateYZ(-YsPi/60.0);
	}


	needRedraw=true;
}
/* virtual */ void FsLazyWindowApplication::Draw(void)
{
	

	glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
	glEnable(GL_DEPTH_TEST);

	int wid,hei;
	std::string text;
	text = "Chess Game Engine";
	FsGetWindowSize(wid,hei);
	auto aspect=(double)wid/(double)hei;
	glViewport(0,0,wid,hei);

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45.0,aspect,d/10.0,d*2.0);

	YsMatrix4x4 globalToCamera=Rc;
	globalToCamera.Invert();

	YsMatrix4x4 modelView;  // need #include ysclass.h
	modelView.Translate(0,0,-d);
	modelView*=globalToCamera;
	modelView.Translate(-t);

	GLfloat modelViewGl[16];
	modelView.GetOpenGlCompatibleMatrix(modelViewGl);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();

	GLfloat lightDir[]={0.0f,1.0f/(float)sqrt(2.0f),1.0f/(float)sqrt(2.0f),0.0f};
	glLightfv(GL_LIGHT0,GL_POSITION,lightDir);
	glEnable(GL_COLOR_MATERIAL);
	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);

	glMultMatrixf(modelViewGl);

	glEnableClientState(GL_VERTEX_ARRAY);
	//glEnableClientState(GL_NORMAL_ARRAY);
	//glEnableClientState(GL_COLOR_ARRAY);
	//glColorPointer(4,GL_FLOAT,0,col.data());
	//glNormalPointer(GL_FLOAT,0,nom.data());	
	glVertexPointer(3,GL_FLOAT,0,vtx.data());
	glDrawArrays(GL_LINE,0,vtx.size()/3);
	glDisableClientState(GL_VERTEX_ARRAY);
	//glDisableClientState(GL_NORMAL_ARRAY);
	//glDisableClientState(GL_COLOR_ARRAY);

	glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
	glDrawPixels(Final.GetWidth(),Final.GetHeight(),GL_RGBA,GL_UNSIGNED_BYTE,Final.GetBitmapPointer());
	//glDrawPixels(Test.GetWidth(),Test.GetHeight(),GL_RGBA,GL_UNSIGNED_BYTE,Test.GetBitmapPointer());
	//drawText(text.data(),text.size(),0,0);

	FsSwapBuffers();
	needRedraw=false;
}
/* virtual */ bool FsLazyWindowApplication::UserWantToCloseProgram(void)
{
	return true; // Returning true will just close the program.
}
/* virtual */ bool FsLazyWindowApplication::MustTerminate(void) const
{
	return FsLazyWindowApplicationBase::MustTerminate();
}
/* virtual */ long long int FsLazyWindowApplication::GetMinimumSleepPerInterval(void) const
{
	return 10;
}
/* virtual */ void FsLazyWindowApplication::BeforeTerminate(void)
{
}
/* virtual */ bool FsLazyWindowApplication::NeedRedraw(void) const
{
	return needRedraw;
}


static FsLazyWindowApplication *appPtr=nullptr;

/* static */ FsLazyWindowApplicationBase *FsLazyWindowApplicationBase::GetApplication(void)
{
	if(nullptr==appPtr)
	{
		appPtr=new FsLazyWindowApplication;
	}
	return appPtr;
}
