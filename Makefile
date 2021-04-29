compose: 	
			docker-compose -f mdl-traefik-compose.yml up
down: 
			docker-compose -f mdl-traefik-compose.yml down

deploy:
			docker stack deploy -c mdl-stackfile.yml moodle

rm: 
			docker stack rm moodle

network:
			docker network create traefik-network
rmn:
			docker network rm traefik-network
swn: 
			docker network create -d overlay traefik-proxy
rmswn:      
			docker network rm traefik-proxy