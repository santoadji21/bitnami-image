compose: 	
			docker network rm traefik-network
			docker network create traefik-network
			docker-compose -f mdl-traefik-compose.yml up
down: 
			docker-compose -f mdl-traefik-compose.yml down

deploy:
			docker network create -d overlay traefik-proxy
			docker stack deploy -c mdl-stackfile.yml moodle

rm: 
			docker stack rm moodle

kill: 
			fuser -k 80/tcp
			fuser -k 8080/tcp