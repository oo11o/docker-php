# Docker configs for PHP Development
## Overview

This project aims to simplify PHP development by providing various pre-configured docker-compose setups.

Thanks to different configurations tailored to specific needs, developers can quickly start working on their PHP projects without the hassle of setting up environments from scratch.

## base/php8.2-nginx

services:
- `php: 8.2`
- `nginx: latest`
- `xdebug: latest`

contains:
- `docker` - folder containing configuration files for containers
- `app` - folder containing index.php The folder consists of a file index.php with one function phpinfo()
- `docker-copmpose.yml`
- `.env.docker` - special to Linux

# BRANCH ONLY FOR LINUX USER
# CONFIGURATION WITH PHPSTORM

## How to download
### Options 1. Clone a specific branch
Create a folder and enter it

`git clone -b xdebug-linux/php8.2-nginx https://github.com/oo11o/docker-php.git .`<br>

`docker-compose up -d --build`

### Options 2. Clone the repository and select the required branch.
Create a folder and enter it

`git clone https://github.com/oo11o/docker-php.git .`<br>
`git checkout base/xdebug-linux/php8.2-nginx`<br>

`docker-compose up -d --build`

### Options 3. Saving a Repository Archive
1. Click on the "Code" button.
2. Select "Download ZIP" to save the repository archive to your computer.
3. Extract the archive and enter the folder.

`docker-compose up -d --build`

## CHECK xdebug
    docker-compose run php php -v
    ![image](https://github.com/oo11o/docker-php/assets/63920713/203704f7-84da-4f46-8bff-0cfa6f671139)

    if you see <strong>with Xdebug v...., Copyright (c) 2002-2023, by Derick Rethans</strong> xDebug was initialized

## How to configuration .env.docker
<strong>In case Xdebug didn't start, check the DOCKER HOST IP</strong><br>

To enable Xdebug to communicate with an external system inside a Docker container,
it needs to know the IP address of the Docker host. This IP address is used to establish
connection between Xdebug inside the container and the debugging client (such as your IDE)
on the external system.

<strong>To find out the IP of the Docker host, use the following command:</strong></br>
`$(ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+')`
#### Default: 172.17.0.1
After you find out your IP address, open the .env.docker file and paste your IP <br/>
ex. <strong>DOCKER_HOST_IP=172.17.0.1</strong>
