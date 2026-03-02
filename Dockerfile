FROM openjdk:17

RUN apt-get update && apt-get install -y wget unzip

# Install Android SDK
RUN mkdir -p /opt/android-sdk
ENV ANDROID_HOME /opt/android-sdk
ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Install SDK tools here...
