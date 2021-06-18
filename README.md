### To use with Docker

First build the image with

```
docker build . -t warptoken:latest
```

Then test your container with

```
docker run warptoken:latest npx hardhat compile
```

If everything went well you should get a success message before the container exits.
