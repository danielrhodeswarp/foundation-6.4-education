#this for debugging (eg. running "foundation watch")
#docker run -p8000:8000 -p3001:3001 -v "$PWD"/foundation_projects:/foundation_projects  -it --rm foundation64education_danielrhodeswarp-foundation-cli-interactive

#this for actual
docker run -v "$PWD"/foundation_projects:/foundation_projects  -it --rm foundation64education_danielrhodeswarp-foundation-cli-interactive
