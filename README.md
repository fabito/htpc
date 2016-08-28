# htpc
My docker-compose HTPC configuration 


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