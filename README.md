# bash-arg-parser
Demo app to parse command line arguments for a bash script

Run the script with the following command:   
`bash script.sh [OPTIONS]`   

This bash script will accept two different arguments:   
`-n` or `--name`, followed by a string that refers to the desired name of the app.    
`-d` or `--debug-run` that indicates that we are doing a dry-run   

The name is required, otherwise the script will exit.   
The debug flag is optional.
Arguments can be given in any particular order. That is, `bash script.sh -d -n dev` and `bash script.sh -n dev -d` will give the same result.   

#### Limitations:   
You cannot concatenate the flags, e.g. `-dn dev` will not work.   


#### sources:    
https://stackoverflow.com/a/33826763 (base script for arg parsing)     
https://stackoverflow.com/a/13864829 (check if name is set)    
