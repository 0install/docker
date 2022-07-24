# Zero Install Docker images

This repository provides Docker images for 0install and 0install-related tools:

- [0installnet/0install](https://hub.docker.com/r/0installnet/0install)
- [0installnet/0publish](https://hub.docker.com/r/0installnet/0publish)
- [0installnet/0release](https://hub.docker.com/r/0installnet/0release)
- [0installnet/0compile](https://hub.docker.com/r/0installnet/0compile)
- [0installnet/0template](https://hub.docker.com/r/0installnet/0template)
- [0installnet/0watch](https://hub.docker.com/r/0installnet/0watch)
- [0installnet/0repo](https://hub.docker.com/r/0installnet/0repo)

## Building

To publish new releases of these image:

- Adjust the version numbers in [`.env`](.env) as necessary
- Run `./build.sh` (performed automatically by [CI](.github/workflows/build.yml))
- Run `./push.sh` (performed automatically by [CI](.github/workflows/build.yml))
