docker rm $(docker stop docker-tutorial-build-container)
docker build -f Dockerfile.build -t docker-tutorial-build .
docker create --name docker-tutorial-build-container docker-tutorial-build
$FileName = "./out"
if (Test-Path $FileName) {
    Remove-Item -Recurse -Force $FileName 
}

docker cp docker-tutorial-build-container:/out ./out
docker build -t docker-tutorial .