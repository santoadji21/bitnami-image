compose: 	
			docker-compose -f mdl-traefik-compose.yml up
down: 
			docker-compose -f mdl-traefik-compose.yml down

deploy:
			docker stack deploy --compose-file=mdl-stackfile.yml moodle
mdl: 
			docker stack deploy --compose-file=mdl-stackfile-two.yml moodle

rm: 
			docker stack rm moodle
ls: 
			docker service ls

network:
			docker network create traefik-network
rmn:
			docker network rm traefik-network
swn: 
			docker network create -d overlay traefik-proxy
dbn: 
			docker network create -d overlay database
mdln: 
			docker network create -d overlay traefik_default
rmswn:      
			docker network rm traefik-proxy

# docker service ps --filter "desired-state=running" 
# Mariadb replication service
mrep: 
			docker stack deploy --compose-file=mariadb-replication-stack.yml mariadb
rmrep: 
			docker stack rm mariadb