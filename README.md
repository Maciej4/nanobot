# nanobot

This github repository stores a basic example of how to control CTRE products over the CAN bus, using Java on a [Nvidia Jetson Nano](https://developer.nvidia.com/embedded/jetson-nano-developer-kit) with a [CANable USB to CAN adapter](https://canable.io/). This code is heavily based on the [CTRE Phoenix-Linux-SocketCAN-Example](https://github.com/CrossTheRoadElec/Phoenix-Linux-SocketCAN-Example/tree/addJava), specifically the addJava branch.

## Prepping the Jetson nano

In order to set up the Jetson Nano [these steps](https://github.com/iron-claw-972/VisionOnPi/blob/master/VisionOnJetson.md) should be followed. Assuming that you do not want to do computer vision on the Jetson Nano, you can stop after completing the `jtop` step.

## Software Setup

The software [setup steps](https://github.com/CrossTheRoadElec/Phoenix-Linux-SocketCAN-Example/tree/addJava#jetson-nano-setup) provided by CTRE should be followed. These directions should setup all of the CAN specific software needed for using the code example in this repository.

#### "Access Denied" error when flashing CANable with web interface

In order to solve this error, the web browser should be run with administrator privileges. On the Jetson this can be done by closing Chromium and running the command `sudo chromium-browser --no-sandbox`

## Running example

In order to run the example in this repository the repository must first be cloned onto the Jetson:

```
git clone https://github.com/Maciej4/nanobot
```

After navigating into the repository, the permissions on `run.sh` need to be changed. This can be done by using the command:

```
chmod a+x run.sh
```

The `run.sh` script compiles and runs `Example.java`. `Example.java` has a commented line that spins a attached Talon FX with CAN ID 1 at 0.1 or 10%. It also runs the diagnostic server, which allows the configuration of the CAN bus using Phoenix Tuner. This is done by finding the IP of the Jetson Nano based on the instructions found [here](https://github.com/CrossTheRoadElec/Phoenix-Linux-SocketCAN-Example/tree/addJava#connecting-to-diagnostics-server) and putting the IP Adress into the `Diagnostic Server Address` field of the `Robot Controller Install` tab. At this point the devices connected to the CAN bus on the Jetson should appear on the `CAN Devices` tab.
