[![katft182](https://circleci.com/gh/katft182/project-ml-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/katft182/project-ml-microservice-kubernetes)

## Project Overview

In this project, there is the `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

### Pre-Requisites

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Setup Hado lint locally
    sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
    sudo chmod +x /bin/hadolint

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Upload Docker image: `./upload_docker.sh`
4. Run in Kubernetes:  `./run_kubernetes.sh`
5. Run predictions: `./make_prediction.sh`
6. Get logs for house app: `kubectl logs kubernetes-house`

### Files
.circleci/config.yml - config for circle ci to lint the app.py and Dockerfile
output_txt_files/docker_out.txt - example log of docker running the app code successfully and handling predictions
output_txt_files/kubernetes_out.txt - example log of kubernetes running the docker image successfully, with port forwarding and handling predictions
model_data/boston_housing_prediction.joblib - the pretrained model used by app.py
app.py - main app code for the predictions
Dockerfile - the setup for the docker image
make_prediction - code for sending data to app to get predictions
Makefile - useful file with short cut command to run `make install` for installing dependencies and `make lint` for checking app.py and Dockerfile are valid
requirements.txt - the dependencies needed for the app
run_docker.sh - build and run the docker image
run_kubernetes.sh - install the docker image to kubernetes pod and setup port forwarding
upload_docker.sh - install the docker image to docker hub
    
