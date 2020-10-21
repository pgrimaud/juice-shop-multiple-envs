# OWASP Juice Shop multiple envs
Run multiple OWASP Juice Shop containers on same host

![Juice Shop Logo](https://raw.githubusercontent.com/bkimminich/juice-shop/master/frontend/src/assets/public/images/JuiceShop_Logo_100px.png)
![Docker](https://d1q6f0aelx0por.cloudfront.net/product-logos/library-docker-logo.png)

Original project : [OWASP Juice Shop](https://github.com/bkimminich/juice-shop)

## Start 5 containers

```sh
  ./run.sh 5
```

This will create 5 containers on ports : 
- 3001
- 3002
- 3003
- 3004
- 3005

## Expose Juice Shops

Just create vhosts on :
- Apache
- NGINX
- Other...

## LICENSE
Licensed under the terms of the MIT License.
