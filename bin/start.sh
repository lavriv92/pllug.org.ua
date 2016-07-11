docker-machine create pllug-site --driver virtualbox
docker-machine start pllug-site
eval $(docker-machine env pllug-site)
docker-compose up
