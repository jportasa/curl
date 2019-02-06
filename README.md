# Wuaki.tv SysAdmin/DevOps challenge

## Start environment

Arranco "bash docker-compose-start.sh" desde el root del repo

```
root@ip-192-168-105-14:/home/ubuntu/repos/flask# docker ps
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS              PORTS                    NAMES
83612b801213        python-backend:latest   "python app/app.py"      12 minutes ago      Up 12 minutes       0.0.0.0:5000->5000/tcp   flask_backend_1
0997ce73e3d6        mysql:5.7               "docker-entrypoint.s…"   12 minutes ago      Up 12 minutes       3306/tcp, 33060/tcp      flask_dbhost_1

```


## Problemas

Desde dentro del container de la app funciona:

```
root@83612b801213:/var/log# curl http://localhost:5000
Hello world!
```

Desde el nodo de docker no funciona:

```
root@ip-192-168-105-14:/home/ubuntu/repos/flask# curl localhost:5000
curl: (52) Empty reply from server
```

## Solución

He tenido que cambiar en la app este bloque:

```
if __name__ == '__main__':
    app.run()
```

Por este:

```
if __name__ == '__main__':
    app.run(host='0.0.0.0'))
```

Y finalmente funciona:

```
root@ip-192-168-105-14:/home/ubuntu/repos/flask# curl http://127.0.0.1:5000
Hello world!
```