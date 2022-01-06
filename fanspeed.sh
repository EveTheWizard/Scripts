while getopts s: flag
do
    case "${flag}" in
        s) speed=${OPTARG};;
    esac
done

echo $speed | sudo tee /sys/devices/platform/applesmc.768/fan1_min
echo $speed | sudo tee /sys/devices/platform/applesmc.768/fan2_min
