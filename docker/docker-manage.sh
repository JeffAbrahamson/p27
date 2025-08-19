#!/bin/bash

action="$1"
shift
case "$action" in
    build)
        docker compose up --build site-build
        ;;
    run)
        docker compose   up  --build  site-build
        ;;
    test)
        docker compose   run --build  site-build "$@"
        ;;
    sh)
	container_id=$(docker ps -qf "name=site-build")
        if [ ! -z "$container_id" ]; then
          echo "Container is already running.  Attaching shell..."
          docker exec -ti "$container_id" /bin/bash
        else
          echo "Container is not running.  Starting the container in shell mode..."
          docker compose run --build -it  --user $(id -u):$(id -g) --rm site-build /bin/bash
        fi
        ;;

    *)
        echo "Unrecognised action: \"$action\"."
        ;;
esac
