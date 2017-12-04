# Check prerequisites
    git -v
    docker -v
    docker-compose

# Initialize
    git submodule init && git submodule update
    docker-compose up

Identifi-angular will be available on http://localhost:3000 and identifi-daemon API on http://localhost:4944 (use with identifi-cli). Identifi-angular livereloads with browsersync and identifi-daemon is run using npm-watch to restart on code changes.

# Thanks
https://www.airpair.com/docker/posts/efficiant-development-workfow-using-git-submodules-and-docker-compose
