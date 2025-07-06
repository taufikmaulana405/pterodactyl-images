## Building this Image
To build the image, you can use the following command:
```bash
docker build --build-arg PHP_VERSION=<PHP VERSION> -t tes-image:php<PHP VERSION> .
```
Replace `<PHP VERSION>` with the desired version of PHP, such as `8.1`, `8.2`, etc.

For additional nginx support, you can use the same command but specify the `nginx` Dockerfile:
```bash
docker build --build-arg PHP_VERSION=<PHP VERSION> -t tes-image:php<PHP VERSION>-nginx -f nginx.Dockerfile .
```

Example:
```bash
docker build --build-arg PHP_VERSION=8.2 -t tes-image:php8.2 .
```