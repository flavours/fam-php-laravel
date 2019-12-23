FROM flavour/fam-php:0.2.0

WORKDIR /app

FROM divio/base:0.1-php7.3-stretch

ENV FAM_IDENTIFIER flavour/fam-php-laravel:0.2.0

ENV PATH="/fam-php-laravel/bin:${PATH}"

ENTRYPOINT [ "" ]
CMD [ "/bin/sh" ]

COPY --from=0 /fam-php /fam-php
COPY --from=0 /fam-php /fam-php-laravel
COPY bin/* /fam-php-laravel/bin/
