Pequeno script para otimizar imagens PNG e JPG

### Depende de:

- jpegoptim `apt-get install jpegoptim`

- zopflipng 

* git clone https://github.com/google/zopfli
* cd zopfli
* make zopflipng
* mv zopflipng /usr/local/bin/


### Crontab

18 4 * * * /bin/bash /root/otimizar_imagens/otimizar_imagens.sh >/dev/null 2>&1
