# Jupyter Magic

### Setup

1) Install docker

2) Run docker container with rothnic/anaconda-notebook ( Comes pre-built with all datascience libraries. )

```
docker run -p 8888:8888 -v <your-notebooks-path>:/home/condauser/notebooks  -i -t rothnic/anaconda-notebook
#~/projects/jupyter-workspace
```
