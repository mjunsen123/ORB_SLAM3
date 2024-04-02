#!/bin/bash

# Change directory to Examples
cd Examples

# Check for command line arguments
if [[ "$1" == "--stereo" ]]; then
    ./Stereo-Inertial/stereo_inertial_euroc ../Vocabulary/ORBvoc.txt ./Stereo-Inertial/EuRoC.yaml /home/jyee/dataset/MH_01_easy ./Stereo-Inertial/EuRoC_TimeStamps/MH01.txt dataset-MH01_stereoi
elif [[ "$1" == "--mono" ]]; then
    ./Monocular-Inertial/mono_inertial_euroc ../Vocabulary/ORBvoc.txt ./Monocular-Inertial/EuRoC.yaml /home/jyee/dataset/MH_01_easy ./Monocular-Inertial/EuRoC_TimeStamps/MH01.txt dataset-MH01_monoi
else
    echo "Invalid argument. Please use --stereo or --mono."
fi
