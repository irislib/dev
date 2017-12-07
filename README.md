# Check prerequisites
    git -v
    docker -v
    docker-compose

# Initialize
    git submodule init && git submodule update
    docker-compose up

Identifi-angular will be available on http://localhost:3000 and identifi-daemon API on http://localhost:4944 (use with identifi-cli). Identifi-angular livereloads with browsersync and identifi-daemon is run using npm-watch to restart on code changes.

Use identifi-cli to interact with identifi-daemon:

    docker container exec -i -t identifidocker_identifi-daemon_1 sh
    cd /identifi-cli
    ./identifi

Build identifi-angular:

    docker container exec -i -t identifidocker_identifi-angular_1 gulp build

# Thanks
https://www.airpair.com/docker/posts/efficiant-development-workfow-using-git-submodules-and-docker-compose
