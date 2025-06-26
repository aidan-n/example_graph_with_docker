To run in Docker:

host_directory> `docker build --no-cache -t image-name .`

host_directory> `docker run -d bar-graph-image sleep infinity`
The above line runs the container, and keeps running it, but does not actually 
execute the python script.

Find the new running container name in Docker.

host_directory> `docker exec -it container-name bash`
The above line accesses the container terminal.

Go to the /app/ subdirectory if not already in it.

container-directory/app# `python bar_graph.py`
Now my_plot.png should be in container-directory/app

Exit the container terminal. This can be done with ctrl+Z

host_directory> `docker cp container-name:./app/my_plot.png .`
The above line copies my_plot.png to the current host directory.

Now my_plot.png should be accessible in the host directory.