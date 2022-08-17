### Docker 環境でローカルのソースを使って作業したい
v(volume) オプションを使う
```
docker run -v <local_filepath>:<container_filepath> -w <container_filepath> <container_name> <exec_command>
docker run -v $(pwd):/home/user -w /home/user linux_env make test
```
参考: https://www.sigbus.info/compilerbook#docker

- 対話シェルでガチャガチャいじりたい場合
```
docker run --rm -it -v <local_filepath>:<container_filepath> <container_name> 
docker run --rm -it -v $(pwd):/home/user linux_env 
```

### 
