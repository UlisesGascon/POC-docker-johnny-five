# POC-docker-johnny-five
Proof of Concept - how to Dockerize your next IOT project with Johnny-five

## Introduction

This POC was built to support the article [Dockerize Javascript IOT Applications](https://blog.ulisesgascon.com/dockerize-js-iot-applications).

## Commands

Build the Docker image:

```bash
docker build -t blink .
```

Run the Docker image:

```bash
docker run --device=/dev/ttyUSB --privileged -it blink
```

Note: In my case the USB device was connected in `/dev/ttyUSB0`, but you can check yours with [this guide](https://www.mathworks.com/help/supportpkg/arduinoio/ug/find-arduino-port-on-windows-mac-and-linux.html)
