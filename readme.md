# Lucy's Void Packages
Automated build scripts for different packages, built for use under Void Linux.

# How To Use
1. Create the base build image using `./build_core.sh`
2. Build any package in the `applications` directory using `./build.sh <APPLICATION_NAME>`

For example, to compile "orca_slicer", you would run `./build_core.sh && ./build.sh orca_slicer`