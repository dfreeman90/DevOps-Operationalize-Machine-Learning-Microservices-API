[![CircleCI](https://circleci.com/gh/dfreeman90/DevOps-Operationalize-Machine-Learning-Microservices-API.svg?style=svg)](https://circleci.com/gh/dfreeman90/DevOps-Operationalize-Machine-Learning-Microservices-API)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

### File explanations in repository:

* `.circleci/config.yml`: Config file used by Circle CI to lint project files
* `model_data/*`: model files for pre-trained microservice
* `output_txt_files/*`: console logs of successful Docker and Kubernetes tasks
* `app.py`: microservice application, running Flask
* `Dockerfile`: outlines the steps required to run a Docker image in a container
* `make_prediction.sh`: script used to obtain prediction outputs from the microservice across various deployment environments
* `Makefile`: used to prepare local Python environment/linting
* `requirements.txt`: used for package installation
* `run_docker.sh`: creates a Docker image locally
* `run_kubernetes.sh`: downloads the proper tagged image from Docker Hub and runs it locally on a port specified by port-forwarding
* `upload_docker.sh`: uploads the specified Docker image to Docker Hub for Kubernetes to later use

### Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Upload to Docker Hub

* `upload_docker.sh` contains the script to Docker Hub, simply update the username to use.
* note: winpty served as a wrapper to Docker due to my machine being Windows, and is needed as a workaround to the known Docker issue in Git Bash. Remove winpty from the script if not using Windows.
* `./upload_docker` 

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Ensure Kubernetes Clean Up

* kubectl delete (minikube delete) to completely delete the kubernetes cluster
* kubectl stop (minikube stop) to pause and save cluster state