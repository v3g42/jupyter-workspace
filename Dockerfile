FROM jupyter/datascience-notebook

MAINTAINER vivekg342

# Make sure our user owns the directory
USER root

# Install postgres apt dependencies
RUN apt-get update
RUN apt-get install -y postgresql-9.4 postgresql-client-9.4 libpq-dev


USER $NB_USER
ADD requirements.txt .
RUN pip install -r requirements.txt
