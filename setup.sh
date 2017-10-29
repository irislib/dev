mkdir src
cd src
git clone git@github.com:identifi/identifi-daemon.git
git clone git@github.com:identifi/identifi-angular.git
git clone git@github.com:identifi/identifi-cli.git
git clone git@github.com:identifi/identifi-lib.git
git clone git@github.com:identifi/identifi-crawlers.git
git clone git@github.com:identifi/identifi.git
cd ..
echo 'Identifi git repos initialized. Run "docker-compose up" to get started.'
