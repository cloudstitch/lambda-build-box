# lambda-build-box

## To build:

```
docker build -t lambda-build-box .
```

## To push:

First get image ID

```
docker images
```

Then tag

```
docker tag ebef7ac16ffc tedb/lambda-build-box:8
```

Then push

```
docker push tedb/lambda-build-box:8
```

