#include <iostream>
#include <stdio.h>
#include <fstream>
#include "simplebitmap.h"

using namespace std;

int main(int argc , char *argv[])
{
	
	SimpleBitmap bmp;
	int count = 0;
	if(argc < 2)
	{
		cout << "Usage: ./ps4_1 <pngFileName.png>" << endl;
	}
	else if(argc ==2)
	{
		bmp.LoadPng(argv[1]);

		auto x =bmp.LoadPng(argv[1]);

			if(x==false)
			{
			return printf("Error in loading file please check\n");
			}

		int width = bmp.GetWidth();
		int height = bmp.GetHeight();
		//printf ("width = ",width);

		

		int length = width+height;
		int outputHeight =92.5;
		int outputWidth = 92.5;

		for (int i=0;i<height; i+=92.5)
			for(int j=0;j<width; j+=92.5)
		{
			SimpleBitmap cut;
			cut = bmp.CutOut(i, j, outputWidth, outputHeight);
			//cut.Invert();
			count++;

			if(count<200 || (i+j<length))
			{
				FILE *pFile ;
				char filename[32];
				sprintf (filename, "%d.png",count);
				if(pFile !=NULL)
				{
					pFile = fopen (filename, "wb");
					cut.SavePng(pFile);
					fclose(pFile);
				}			
			}
		}


		//for()	
	}
	return 0;
}
