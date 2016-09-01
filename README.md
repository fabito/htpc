# htpc
My docker-compose HTPC configuration 


## Features:

* Transmission for torrents
* Couchpotato for Movies
* Sickrage for TV Shows
* Emby as media center
* HTPC Manager to rule them all
* Nginx as reverse proxy


```
docker-compose up -d --norecreate
```


## Upgrading Emby
```
docker pull emby/embyserver                      
docker-compose stop emby
docker-compose rm emby
docker-compose up -d --norecreate
```