# imgproc
Process jpeg, png, qoi images files.  This can also process qiom movie files

This uses the [QOI image format](https://github.com/phoboslab/qoi) to read and write losslessly compressed images.

This also uses the [QOImovie](https://github.com/PaulHaeberli/QOImovie) to read and write losslessly compressed image sequences.

usage: imgproc in.img out.img process1 process2 process3 ...

	[zoom xscale yscale]      zoom 1.5 1.5
	
	    resize the image in x and y
  
  
	[zoomtosize sizex sizey]  zoomtosize 640 480
	
	    resize an image to a specific size
  
  
	[saturate sat]            saturate 1.5
	
	    saturate colors in images
  
  
	[sharpen smalldiam mag]   sharpen 30.0 0.5
	
	    unsharp masking 
  
  
	[softfocus smalldiam mag] softfocus 10.0 0.5
	
	    blending the original image with a blurred copy
  
  
	[enlighten smalldiam mag] enlighten 20.0 0.9
	
	    fix high contrast image by brightening just the dark parts
  
  
	[perhist min max]         perhist 0.01 0.99
	
	    percent histogram equalization. These option force at least 1% into black and al least 1% to white
  
  
	[expand min max]          expand 0.2 0.8
	
	    expand the contrast on images. level 0.2 gets maped to black. 0.8 and above maps to white
  
  
	[gammawarp pow]           gammawarp 0.4
	
	    adjust the gamma of an image
  
  
	[scalergb r g b]          scalergb 0.9 1.1 1.2
	
	    scale rred, green and blue
  
  
	[chromablur smalldiam]    chromablur 20
	
	    blur the chroma in an image


ops can be chained like this:

	imgproc in.jpg out.jpg zoom 0.5 0.5 perhist 0.01 0.99 enlighten 20.0 0.9 saturate 1.5

you can also process .png images like this:

	imgproc in.png out.png zoom 0.5 0.5 perhist 0.01 0.99 enlighten 20.0 0.9 saturate 1.5

you can also process .qoi images like this:

	imgproc in.qoi out.qoi zoom 0.5 0.5 perhist 0.01 0.99 enlighten 20.0 0.9 saturate 1.5

you can also process .qoim movies like this:

	imgproc in.qoim out.qoim zoom 0.5 0.5 perhist 0.01 0.99 enlighten 20.0 0.9 saturate 1.5


[Single-file libraries for C/C++](https://github.com/nothings/stb) - One of the best things for c and c++ ever.
