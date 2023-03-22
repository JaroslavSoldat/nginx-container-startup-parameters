# NGINX start-up parameter substitution example

## Nginx image customization

Original Nginx image contains [basic substitution script](https://github.com/nginxinc/docker-nginx/blob/master/entrypoint/20-envsubst-on-templates.sh)
and logic ensuring the execution of scripts when the container starts (before nginx starts).

`05-expanded-envsubst-on-templates.sh` is a slightly extended version of the original script. 

## Templating

A template is a file with a `.template` extension.
The templates are searched in the folders listed in `05-expanded-envsubst-on-templates.sh`, 
a substitution is made in them - the values set in the environment variables are substituted. 
The resulting file is saved in the same location without the `.template` extension.

## How to run

Run
`make`
See logs.

Go to http://localhost:8080/

See page and HTTP headers.

Stop container using
`make stop`
