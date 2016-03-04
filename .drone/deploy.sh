#!/bin/bash

set -e
#
#curl -X POST -H "Content-Type: application/json" m-master-01.ua.int:8080/v2/apps -d @edipro_run.json | python -m json.tool
#curl -X POST m-master-01.ua.int:8080/v2/apps/edipro-deb79/restart

#export DOCKER_HOST=swarm.lab.int:2375
#docker rmi docker.lab.int:5000/academy:1
#export DOCKER_HOST=swarm1.lab.int:2375
#docker rmi docker.lab.int:5000/academy:1
#export DOCKER_HOST=swarm2.lab.int:2375
#docker rmi docker.lab.int:5000/academy:1



curl -X POST -H 'X-Access-Token:user:$2a$10$Pp6bdgNtf0e.9QooaQ5YbOiD0IZmpkBxWCtfR64lQpj9K.a38ViG2' -H "Content-Type:application/json" -d '{"Name":"ocker", "Running":true,"Paused":false,"Restarting":false, "Image": "docker.lab.int:5000/academy:1", "AttachStdin":false, "AttachStdout":false, "Tty":false, "OpenStdin":false, "DisableNetwork":false, "OOMKilled":false,"Dead":false, "Args":["-g","daemon off;"], "Cmd":["nginx","-g","daemon off;"], "PublishAllPorts":true, "RestartPolicy": {"Name": "always"}}' http://10.0.0.132:8080/containers/academy_1/rename?name=academy_old



curl -X POST -H 'X-Access-Token:user:$2a$10$Pp6bdgNtf0e.9QooaQ5YbOiD0IZmpkBxWCtfR64lQpj9K.a38ViG2' -H "Content-Type:application/json" -d '{"Name":"ocker", "Running":true,"Paused":false,"Restarting":false, "Image": "docker.lab.int:5000/academy:1", "AttachStdin":false, "AttachStdout":false, "Tty":false, "OpenStdin":false, "DisableNetwork":false, "OOMKilled":false,"Dead":false, "Args":["-g","daemon off;"], "Cmd":["nginx","-g","daemon off;"], "PublishAllPorts":true, "RestartPolicy": {"Name": "always"}}' http://10.0.0.132:8080/containers/create?name=academy_1

sleep 10

curl -X POST -H 'X-Access-Token:user:$2a$10$Pp6bdgNtf0e.9QooaQ5YbOiD0IZmpkBxWCtfR64lQpj9K.a38ViG2' -H "Content-Type:application/json" -d '{"Name":"ocker", "Running":true,"Paused":false,"Restarting":false, "Image": "docker.lab.int:5000/academy:1", "AttachStdin":false, "AttachStdout":false, "Tty":false, "OpenStdin":false, "DisableNetwork":false, "OOMKilled":false,"Dead":false, "Args":["-g","daemon off;"], "Cmd":["nginx","-g","daemon off;"], "PublishAllPorts":true, "RestartPolicy": {"Name": "always"}}' http://10.0.0.132:8080/containers/academy_1/start





