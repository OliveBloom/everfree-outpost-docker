Clone down everfree outpost and put it in the root dir.

TODO: This should be a git submodule

To run:

```bash
# Create the main build image
./docker-build.sh

# Build the compose images
docker-compose build

# Run compose
docker-compose up -d
```
