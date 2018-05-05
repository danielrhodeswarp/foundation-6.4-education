#this image has a builtin nonroot 'node' user
FROM node:8.11.1

VOLUME /foundation_projects

WORKDIR /foundation_projects

#actually, no, this command prompts for input
#RUN adduser --disabled-password --ingroup users nonroot

# or just use image's 'node' user?
#RUN useradd -g users nonroot

#Foundation CLI downloads stuff via Git
RUN apt-get -y install git

#install Foundation CLI
RUN npm -g update
RUN npm install -g foundation-cli


#RUN cd mounted_in_container
#RUN ember new ember-project
#RUN cd ember-project
#RUN npm install

#set user (for subsequent RUNs and when interactively coming into the container)
USER node

CMD ["bash"]
