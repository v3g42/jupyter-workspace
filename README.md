# Jupyter Magic

### Kaggle Problems

1. [Titanic][1]

### Setup

1) Install docker

2) Build docker container

```
docker build -t anaconda-notebook .
```

3) Run docker container with either local or rothnic/anaconda-notebook ( Comes pre-built with all datascience libraries. )


```
# Use local image ( added support for postgres )
docker run -p 8888:8888 -v <your-notebooks-path>:/home/condauser/notebooks  -i -t anaconda-notebook

# or use rothnic's image
docker run -p 8888:8888 -v <your-notebooks-path>:/home/condauser/notebooks  -i -t rothnic/anaconda-notebook

# So in my case it will be
docker run -p 8888:8888 -v ~/projects/jupyter-workspace/notebooks:/home/condauser/notebooks/personal  -i -t anaconda-notebook
```
### Shortcuts
https://gist.github.com/kidpixo/f4318f8c8143adee5b40

[1]: ./notebooks/titanic/titanic.ipynb
