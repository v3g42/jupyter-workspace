# Jupyter Magic

### Kaggle Problems

1. [Titanic][1]
1. [Digit Recogniser][4]

### Setup

1) Install docker

2) Run docker stacks data-science container ( `datascience-notebook` or `all-spark-notebook`)

> datascience-notebook
```
docker build -t datascience-notebook .
docker run --rm -it -p 8888:8888  -v ~/projects/jupyter-workspace/notebooks:/home/jovyan/work -P datascience-notebook
```

> all-spark-notebook
```
docker build -t all-spark-notebook .
docker run --rm -it -p 8888:8888  -v ~/projects/jupyter-workspace/notebooks:/home/jovyan/work -P all-spark-notebook
```

### Get local ip on Mac
```
ifconfig en0 | awk '$1 == "inet" {print $2}'
```

### Cleanup
```
docker rm -v $(docker ps -a -q -f status=exited)
```

### Resources
[docker-stacks][2]
[Keyboard Shortcuts][3]

[1]: ./notebooks/titanic/titanic.ipynb
[2]: https://github.com/jupyter/docker-stacks
[3]: https://gist.github.com/kidpixo/f4318f8c8143adee5b40
[4]: ./notebooks/digits/digits.ipynb
