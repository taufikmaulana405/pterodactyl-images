## Building this Image
To build the image, you can use the following command:
```bash
docker build --build-arg PHP_VERSION=<PHP VERSION> -t tes-image:frankenphp-<PHP VERSION> .
```
Description:
- The `PHP_VERSION` argument can be set to `8.2`, `8.3`, or `8.4` version of PHP that is supported by the base image.

Example:
```bash
docker build --build-arg PHP_VERSION=8.2 -t tes-image:frankenphp-php8.2 .
```