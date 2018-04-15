/* ////////////////////////////////////////////////////////////

File Name: main.cpp
Copyright (c) 2017 Soji Yamakawa.  All rights reserved.
http://www.ysflight.com

Redistribution and use in source and binary forms, with or without modification, 
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, 
   this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
   this list of conditions and the following disclaimer in the documentation 
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS 
BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE 
GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT 
OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

//////////////////////////////////////////////////////////// */
#include <stdio.h>
#include <iostream>
#include <fslazywindow.h>
#include "simplebitmap.h"
#include "hashtable.h"
#include "hashbase.h"

using namespace std;

template <>
HashCommon::CodeType HashBase<SimpleBitmap>::HashCode(const SimpleBitmap &key) const
{
	HashCommon::CodeType sum=0;
	const unsigned int m[]={2,3,5,7,11};
	// long sum = 31;
	SimpleBitmap bmp;
	int i=0;
	int wid,hei;
	wid = bmp.GetWidth();
	hei = bmp.GetHeight();
	HashCommon::CodeType numComp;
	numComp = bmp.GetTotalNumComponent(wid,hei);
			for(int k=0;k<numComp;k++)
			{
				sum += *(bmp.GetEditablePixelPointer(0,0)+k)*m[i%5];
				++i;
			}
	return sum;
}

class FsLazyWindowApplication : public FsLazyWindowApplicationBase
{
protected:
	bool needRedraw;
	SimpleBitmap bmp,Final;
	SimpleBitmap MakeClearBitmap(int wid, int hei);
	


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
};

SimpleBitmap FsLazyWindowApplication::MakeClearBitmap(int wid,int hei)
{
	SimpleBitmap Final;
	Final.Create(1200,800);
	Final.Clear(0,0,0,0);
	return Final;
}

FsLazyWindowApplication::FsLazyWindowApplication()
{
	needRedraw=false;
}

/* virtual */ void FsLazyWindowApplication::BeforeEverything(int argc,char *argv[])
{
	
	if(argc < 2)
	{
		cout << "Usage: ./ps4_1 <pngFileName.png>" << endl;
	}
	else
	{
		bmp.LoadPng(argv[1]);
		bmp.Invert();

	}
}
/* virtual */ void FsLazyWindowApplication::GetOpenWindowOption(FsOpenWindowOption &opt) const
{
	opt.x0=0;
	opt.y0=0;
	// opt.wid=bmp.GetWidth();
	// opt.hei=bmp.GetHeight();
	opt.wid=1200;
	opt.hei=800;
}
/* virtual */ void FsLazyWindowApplication::Initialize(int argc,char *argv[])
{
	HashTable <SimpleBitmap,int> table;
	

	int count = 0;
	if(argc < 2)
	{
		cout << "Usage: ./ps4_1 <pngFileName.png>" << endl;
	}
	else if(argc >= 2)
	{
		bmp.LoadPng(argv[1]);
		bmp.Invert();
		int width = bmp.GetWidth();
		int height = bmp.GetHeight();
		int outputHeight =40;
		int outputWidth = 40;
		
		table.CleanUp();
		int n=0;
		for (int i=0;i<height; i+=40)
		{
			// cout << "i: "<< i <<endl;
			for(int j=0;j<width; j+=40)
			{
				SimpleBitmap cut;
				cut = bmp.CutOut(j, i, outputWidth, outputHeight);
				cut.Invert();
				if(table.IsIncluded(cut)!=true)
				{
					table.Update(cut,n);
					++n;
				}
				else
				{ 
					continue;
				}

			}
		}

		cout << "total unique bitmaps : " << n << endl;
		Final.Create(1200,800);
		
		int m=0;
		int t=0;

		for(auto hd=table.First(); true==hd.IsNotNull(); hd=table.Next(hd))
		{
			auto keyPtr=table[hd];
			if(nullptr!=keyPtr)
			{
						if(t < 1200)
						{
						for(int i=0;i < 40;++i)
							{
								for(int j=0;j<40;++j)
								{
									for(int k=0;k<4;++k)
									{
										*(Final.GetEditablePixelPointer(i+t,j+m)+k) = *(keyPtr->GetPixelPointer(i,j)+k);
									}
								}
							}
						t=t+40;
						}
						else
						{
							m=m+40;
							t=0;
						}
			
			}
			else
			{
				printf("%s %d\n",__FUNCTION__,__LINE__);
			}	
		}
	Final.Invert();
	}
}

/* virtual */ void FsLazyWindowApplication::Interval(void)
{
	auto key=FsInkey();
	if(FSKEY_ESC==key)
	{
		SetMustTerminate(true);
	}

	if(FSKEY_C==key)
	{
		bmp=MakeClearBitmap(100,100);
	}

	// if(FSKEY_SPACE==key)
	// {
	// 	bmp=LoadPng(argv[1]);
	// }
	needRedraw=true;
}
/* virtual */ void FsLazyWindowApplication::Draw(void)
{
	glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
	glDrawPixels(Final.GetWidth(),Final.GetHeight(),GL_RGBA,GL_UNSIGNED_BYTE,Final.GetBitmapPointer()); 
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
