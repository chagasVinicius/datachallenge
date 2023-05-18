## Challenge data engineer
### enviroment
In order to run the follow instructions make sure that you have installed:
- [make](https://www.gnu.org/software/make/)
- [docker](https://docs.docker.com/get-docker/)
- [docker-compose](https://docs.docker.com/compose/install/)

### instructions
In the repository directory run:

``` sh
make load-data // to unzip data and copy to data folder
docker-compose build
docker compose up
```

The URL of the correspondent notebook should appears on terminal.

Access `notebooks`> case_totvs_churn.ipynb

