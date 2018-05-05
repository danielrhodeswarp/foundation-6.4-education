#For Foundation's "basic" sites template

#this image has a builtin nonroot 'node' user
FROM node:8.11.1

VOLUME /foundation_basic

WORKDIR /foundation_basic

#actually, no, this command prompts for input
#RUN adduser --disabled-password --ingroup users nonroot

# or just use image's 'node' user?
#RUN useradd -g users nonroot

#Foundation CLI downloads stuff via Git
RUN apt-get -y install git

#install Foundation CLI
RUN npm -g update
RUN npm install -g foundation-cli

#NOPE this not work (prob coz no host volume mapped in at build time)
#RUN cd /foundation_project
#USER node
#USER 1000
#RUN foundation new --framework sites --template basic --directory basic_template



CMD ["foundation", "watch"]
