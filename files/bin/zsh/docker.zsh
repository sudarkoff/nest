docker-clean() {
    # containers
    docker rm $(docker ps -a -q)

    # images
    docker rmi $(docker images -q --filter "dangling=true")
}
