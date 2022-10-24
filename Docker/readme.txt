pushing docker to Docker Repository


docker build -t pipeliners .

docker tag pipeliners tomaszkania2000/pipeliners:v1.0

docker push tomaszkania2000/pipeliners:v1.0