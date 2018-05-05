#For Foundation's "Zurb" sites template

#this image has a builtin nonroot 'node' user
FROM node:8.11.1

#project source via BrowserSync
EXPOSE 8000

#BrowserSync's own UI
EXPOSE 3001


VOLUME /foundation_zurb

WORKDIR /foundation_zurb

#actually, no, this command prompts for input
#RUN adduser --disabled-password --ingroup users nonroot

# or just use image's 'node' user?
#RUN useradd -g users nonroot

#Foundation CLI downloads stuff via Git
RUN apt-get -y install git

RUN npm -g update
RUN npm install -g foundation-cli

#USER node
#RUN foundation new --framework sites --template zurb --directory zurb_template


#RUN cd mounted_in_container
#RUN ember new ember-project
#RUN cd ember-project
#RUN npm install


CMD ["foundation", "watch"]
