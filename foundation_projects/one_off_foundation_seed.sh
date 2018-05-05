

#the way we've configured the server machines will put these (empty) folders here
#we need to get rid else the foundation command complains (as Git can't clone)
#UPDATE there's actually some funniness around these folder (which are owned by root)
# they seem to disapear after running some commands in the folder??
#rm -rf zurb_template
#rm -rf basic_template
#UPDATE can simply run this script twice (first time will fail but will remove the ghost folders)

foundation new --framework sites --template zurb --directory zurb_template
foundation new --framework sites --template basic --directory basic_template
