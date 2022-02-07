# imgproc
Process jpeg, png, qoi images files.  Can also process qiom movie files

This uses the [QOI image format](https://github.com/phoboslab/qoi) to read and write losslessly compressed images.

This also uses the [QOImovie](https://github.com/PaulHaeberli/QOImovie) to read and write losslessly compressed image sequences.

usage: imgproc in.img out.img process1 process2 process3 ...

	[zoom xscale yscale]      zoom 1.5 1.5
  
	[zoomtosize sizex sizey]  zoomtosize 640 480
  
	[saturate sat]            saturate 1.5
  
	[sharpen smalldiam mag]   sharpen 30.0 0.5
  
	[softfocus smalldiam mag] softfocus 10.0 0.5
  
	[enlighten smalldiam mag] enlighten 20.0 0.9
  
	[perhist min max]         perhist 0.01 0.99
  
	[expand min max]          expand 0.2 0.8
  
	[gammawarp pow]           gammawarp 0.4
  
	[scalergb r g b]          scalergb 0.9 1.1 1.2
  
	[chromablur smalldiam]    chromablur 20


ops can be chained like this:

	imgproc in.jpg out.jpg zoom 0.5 0.5 saturate 1.5 expand 0.1 0.9

you can also process .png images like this:

	imgproc in.png out.png zoom 0.5 0.5 saturate 1.5 expand 0.1 0.9

you can also process .qoi images like this:

	imgproc in.qoi out.qoi zoom 0.5 0.5 saturate 1.5 expand 0.1 0.9

you can also process .qoim movies like this:

	imgproc in.qoim out.qoim zoom 0.5 0.5 saturate 1.5 expand 0.1 0.9

More description coming soon.

