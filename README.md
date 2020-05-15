A Slimmed Version of `forest-notebook`
=====================================================

This Docker image is based heavily off of the `rigetti/forest-notebook` environment but with the following changes

* Jupyter Lab has been replaced with Jupyter Notebooks
  * All related changes needed to run Jupyter Lab (user permissions, file copying, etc.) have been eliminated
* Opening ports, as well as the added functionality of shared volumes, are now delegated to a `docker-compose`
* Any files for gitlab or Jenkins build systems have also been removed entirely

## Usage

Copy-paste the `Dockerfile` and `docker-compose.yml` into the directory of your choice and run the following

```
docker-compose up
```

You'll be able to interact and save any Jupyter notebooks in the same directory as those two files.