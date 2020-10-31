# env-replace

Docker image to expand environment variables in files

## Use case

If there's an existing application you don't control, but you need to write configs for it, it can be really tricky to expand environment variables into them (for example when writing Helm charts or templates).

`env-replace` doesn't do much: just expands the environment variables in all the files in the working directory, optionally outputting to a desired destination.

## Usage

### Plain Docker

Having some files in the `./in` folder that use the environment variables `$A` and `$B`, this will expand and output into the `./out` folder.

```shell
docker run --rm \
  -v $(pwd)/in:/root/in \
  -v $(pwd)/out:/root/out \
  -w /root/in \
  -e DESTINATION=/root/out \
  -e A=12 \
  -e B=13 valerauko/env-replace
```
