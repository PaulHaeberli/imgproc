# imgproc
Process jpeg, png, qoi images files.  Can also process qiom movie files

usage: improc in.img out.img
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
	qoimproc in.jpg out.jpg zoom 0.5 0.5 saturate 1.5 expand 0.1 0.9

you can also process .png images like this:
	qoimproc in.png out.png zoom 0.5 0.5 saturate 1.5 expand 0.1 0.9

you can also process .qoi images like this:
	qoimproc in.qoi out.qoi zoom 0.5 0.5 saturate 1.5 expand 0.1 0.9

you can also process .qoim movies like this:
	qoimproc in.qoim out.qoim zoom 0.5 0.5 saturate 1.5 expand 0.1 0.9

