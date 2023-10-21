# Docker configs for PHP Development
## Overview

This project aims to simplify PHP development by providing various pre-configured docker-compose setups.

Thanks to different configurations tailored to specific needs, developers can quickly start working on their PHP projects without the hassle of setting up environments from scratch.

## base/php8.2-nginx

services:
- `php 8.2`
- `nginx: latest`

contains:
- `docker` - folder containing configuration files for containers
- `app` - folder containing index.php The folder consists of a file index.php with one function phpinfo()
- `docker-copmpose.yml` - папка с JavaScript файлами.

# How to use
### Options 1. Clone a specific branch
Create a folder and enter it

`git clone -b base/php8.2-nginx https://github.com/oo11o/docker-php.git .`<br>

`docker-compose up -d --build`

### Options 2. Clone the repository and select the required branch.
Create a folder and enter it

`git clone https://github.com/oo11o/docker-php.git .`<br>
`git checkout base/php8.2-nginx`<br>

`docker-compose up -d --build`

### Options 3. Saving a Repository Archive
1. Click on the "Code" button.
2. Select "Download ZIP" to save the repository archive to your computer.
3. Extract the archive and enter the folder.

`docker-compose up -d --build`


#### Open a browser and enter localhost:8080