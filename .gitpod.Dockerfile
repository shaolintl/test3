FROM gitpod/workspace-full

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN sudo apt-get update

RUN sudo apt-get install -y \
    libgtk2.0-0 \
    libgtk-3-0 \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    libxtst6 \
    xauth \
    xvfb
    
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    libgbm-dev \
    libnotify-dev
    
USER gitpod
