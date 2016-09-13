FROM rothnic/anaconda-notebook

# Make sure our user owns the directory
USER root

# Install postgres apt dependencies
RUN  apt-get update
RUN  apt-get install -y postgresql-9.4 postgresql-client-9.4 libpq-dev

# Set persistent environment variables for python3 and python2
ENV PY2PATH=/home/condauser/anaconda3/envs/python2/bin
ENV PY3PATH=/home/condauser/anaconda3/bin

EXPOSE 8888
USER condauser

ENV HOME=/home/condauser
ENV SHELL=/bin/bash

# Install pip psyscopg2
#RUN pip install psycopg2

ENV USER=condauser
WORKDIR /home/condauser/notebooks

CMD $PY3PATH/ipython notebook
