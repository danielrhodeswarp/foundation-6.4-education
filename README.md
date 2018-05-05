# foundation-6.4-education

Zurb Foundation 6.4 introduction and usage overview. A dollop of break testing too.

Foundation CLI (with working Sites Basic and Sites Zurb templates) running via Docker.


## Docker notes

Two server containers (one for Sites Basic template, one for Sites Zurb template) and one interactive container.
Interactive container can be run with the "docker-run-interactive-container.sh" script.

Server for Sites Basic template simply watches the scss folder for changes then recompiles css/app.css
(according to rules in gulpfile.js)
it doesn't open any webservers so you'll just have to open foundation_projects/basic_template/index.html directly in a browser.
Though it recompiles automatically, you will still need to refresh the browser.

Server for Sites Zurb template exposes localhost:8000 (the actual project) and localhost:3001 (BrowserSync UI)
{and also recompiles - according to rules in gulpfile.babel.js - based on changes to JS or SCSS or anything in src/ folder}
You will not need to refresh the browser!


### Docker blast off

Here's how to get it all working:

- docker-compose up (builds all images - don't worry about them all "exiting with code 0" this first time round)
- sh docker-run-interactive-container.sh (dive into BASH shell interactive container)
- {when in the above container} sh one_off_foundation_seed.sh (for good luck)
- {still in container} sh one_off_foundation_seed.sh (downloads Foundation Sites Basic and Sites Zurb templates) - this takes a while
- {still in container} exit (to come out of container)
- docker-compose up (again! but the server containers will run now as we have the Foundation source folders)

Nice! You've now got "foundation watch" running for both foundation_projects/basic_template
and foundation_projects/zurb_template. Note that they'll be running in the foreground.

If you run docker-run-interactive-container.sh you'll log in to an interactive Bash shell prompt
where you can see both template folders and experiment with the "foundation" CLI command




## TODO

Docker container servers for Zurb's "apps" and "emails" templates?
