#!/bin/bash

# Change directory to Examples
cd Examples

# Check for command line arguments
if [[ "$1" == "--stereoEuroc" ]]; then
    ./Stereo-Inertial/stereo_inertial_euroc \
	../Vocabulary/ORBvoc.txt \
	./Stereo-Inertial/EuRoC.yaml \
	/home/jyee/dataset/MH_01_easy \
	./Stereo-Inertial/EuRoC_TimeStamps/MH01.txt \
	dataset-MH01_stereoi
elif [[ "$1" == "--monoEuroc" ]]; then
    ./Monocular-Inertial/mono_inertial_euroc \
	../Vocabulary/ORBvoc.txt \
	./Monocular-Inertial/EuRoC.yaml \
	/home/jyee/dataset/MH_01_easy \
	./Monocular-Inertial/EuRoC_TimeStamps/MH01.txt \
	dataset-MH01_monoi
elif [[ "$1" == "--stereoTum" ]]; then
    ./Stereo-Inertial/stereo_inertial_tum_vi \
	../Vocabulary/ORBvoc.txt \
	./Stereo-Inertial/TUM-VI.yaml \
	/home/jyee/dataset/dataset-magistrale1_512_16/mav0/cam0/data \
	/home/jyee/dataset/dataset-magistrale1_512_16/mav0/cam1/data \
	./Stereo-Inertial/TUM_TimeStamps/dataset-magistrale1_512.txt \
	Stereo-Inertial/TUM_IMU/dataset-magistrale1_512.txt \
	dataset-magistrale1_stereoi
elif [[ "$1" == "--monoTum" ]]; then
    ./Monocular-Inertial/mono_inertial_tum_vi \
	../Vocabulary/ORBvoc.txt \
	./Monocular-Inertial/TUM-VI.yaml \
	/home/jyee/dataset/dataset-magistrale1_512_16/mav0/cam0/data \
	./Monocular-Inertial/TUM_TimeStamps/dataset-magistrale1_512.txt \
	Stereo-Inertial/TUM_IMU/dataset-magistrale1_512.txt \
	dataset-magistrale1_monoi
elif [[ "$1" == "--monoTumSlide" ]]; then
    ./Monocular-Inertial/mono_inertial_tum_vi \
	../Vocabulary/ORBvoc.txt \
	./Monocular-Inertial/TUM-VI.yaml \
	/home/jyee/dataset/dataset-slides1_512_16/mav0/cam0/data \
	./Monocular-Inertial/TUM_TimeStamps/dataset-slides1_512.txt \
	Stereo-Inertial/TUM_IMU/dataset-slides1_512.txt \
	dataset-slides1_monoi
elif [[ "$1" == "--stereoTumSlide" ]]; then
    ./Stereo-Inertial/stereo_inertial_tum_vi \
	../Vocabulary/ORBvoc.txt \
	./Stereo-Inertial/TUM-VI.yaml \
	/home/jyee/dataset/dataset-slides1_512_16/mav0/cam0/data \
	/home/jyee/dataset/dataset-slides1_512_16/mav0/cam1/data \
	./Stereo-Inertial/TUM_TimeStamps/dataset-slides1_512.txt \
	Stereo-Inertial/TUM_IMU/dataset-slides1_512.txt \
	dataset-slides1_stereoi
else
    echo "Invalid argument. Please use --stereoEuroc, --monoEuroc, --stereoTum or --monoTum."
fi
