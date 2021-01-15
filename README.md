[![katft182](https://app.circleci.com/pipelines/github/katft182/project-ml-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/katft182/project-ml-microservice-kubernetes)

## Project Overview

In this project, there is the `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

### Project Tasks

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

### Pre-Requisites

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally

