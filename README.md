# htpc
My docker-compose HTPC configuration 


```
docker-compose --x-networking up -d --norecreate
```


## Upgrading Emby
```
docker pull emby/embyserver                      
docker-compose stop emby
docker-compose rm emby
docker-compose --x-networking up -d --norecreate
```