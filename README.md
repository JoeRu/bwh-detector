# bwh-detector
A #MachineLearning project with the aim to mark and count _#Bees_, _#Wasps_ and _#Hornets_ (appriviation used : _#BWH_) in a picture.

This Project has the following dependency:
https://github.com/AlexeyAB/darknet
or the original
https://pjreddie.com/darknet/yolo/

Darknet is a tool which implements a neural-net; The core of every detection-set is 
* a Weights-File
* the corresponding config-File
* the correspondig Class-Naming-File

The training of the weights-file is time- and power-consuming; and espacialy for Bees, Wasps and Hornet (#bwh) not an easy thing to do; 

# Problems
## Resolution of the Object
The taken picture can have variete of sizes;

## Object-Distance
Depending of the picture it can contain thounsands of bwh (where every #bwh is only some pixels big) - or just one big. 

## Wasps
Wasps and Bees are a Category - and there are many different kinds; This weights-file are trained on ["German Wasps / Vespula germanica"](https://de.wikipedia.org/wiki/Deutsche_Wespe) and ["Gemeine Wespe / Vespula vulgaris"](https://de.wikipedia.org/wiki/Gemeine_Wespe)

## DATASET
The main issue - i did have - was a big enough dataset espacially for _#Wasps_ and _#Hornets_. I did uses the following tool to #Label all Images:
https://github.com/Cartucho/OpenLabeling
The labeled image-dataset can be requested by issue; 

# Project-Content
## Config and Weights
This Repository contains several *config* and *weights*-Files in **ongoing** state. The quality is actually good for the use it was initialy created:

### Intended Use of this repositoy
The [BeeCam](https://imkerverein-usingen.de/bee-cam/) is a [4MP-Webcam](https://reolink.com/de/product/rlc-410w/). A lower resulotion may work but quality may differ; The distance to the #Bee-Hive is about 50-60 cm.

# FAQ
## Windows-Installation of Alexeys darknet-fork
On Windows the most easy way to build it - is this; But it may depend on updates of the darknet-repository.

* Download **[Visual-Studio 2017](https://visualstudio.microsoft.com/de/downloads/)** and install; 
* If not available -- install [GIT](https://git-scm.com/download/win)
* optional
> * Download **[CUDA](https://developer.nvidia.com/cuda-downloads?target_os=Windows&target_arch=x86_64)** and install; 
> * Download **[CUDNN](https://developer.nvidia.com/rdp/cudnn-download)** and unzip it into `%CUDA_PATH%\..\`; 
* Clone [VCPKG](https://github.com/Microsoft/vcpkg) 
* set environment-variable VCPKG_DEFAULT_TRIPLET : x64-windows
* set environment-variable VCPKG_ROOT : path-where-you-put-vcpkg
* build VCPKG like described in **[quickstart](https://github.com/Microsoft/vcpkg)**.
* Open a Terminal or Powershell enter `cd %VCPKG_ROOT%` and run `./vcpkg install darknet[opencv]` or `./vcpkg install darknet[opencv-cuda]`

> Be patient -- it did take about 2-3 hours to compile everything

* Add to environment variable PATH the following:
`%VCPKG_ROOT%\installed\%VCPKG_DEFAULT_TRIPLET%\bin;%VCPKG_ROOT%\installed\%VCPKG_DEFAULT_TRIPLET%\tools\darknet`

Now you should be able to start darknet.exe from every fresh CMD-Term or Powershell. 
