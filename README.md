# dotnet6-image
[.net 6] docker image with [node] on Debian 11.

## Building
```
docker build -t dotnet6-image .
```

## Running
```
docker run -it --name dotnet6 dotnet6-image
```

For background see [Using multi-stage containers for C++ development][1].

[.net 6]:https://docs.microsoft.com/en-us/dotnet/core/install/linux-debian
[node]: https://github.com/nodejs/docker-node/blob/main/README.md#how-to-use-this-image
[1]:https://devblogs.microsoft.com/cppblog/using-multi-stage-containers-for-c-development/