# Config files for Ruby on Rails development using Docker

## How to Dockerize your Rails app

0. install Docker;
1. clone repo somewhere;
2. `cd` in the repo dir;
3. run `./install.sh <you-rails-app-path>`;
4. change your db config to use host `db`, username `postgres` and `''` as password;
5. done!

Use scripts in `scripts/` dir to run commands inside the container.
