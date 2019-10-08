# LaTeX-docker

I don't trust containers build by others, so that's how I build LaTeX for my personal use.

## Usage

`sudo docker run --rm --user $(id -u):$(id -g) -it -v $(pwd):/latex scolytus/latex:SNAPSHOT-20191008-133129 make pdf`

