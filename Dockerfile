FROM flavour/fam-php:0.1.1

WORKDIR /app

FROM robwi/divio-php

ENV FAM_IDENTIFIER flavour/fam-php-laravel:0.1.1

ENV PATH="/fam-php-laravel/bin:${PATH}"

ENTRYPOINT [ "" ]
CMD [ "/bin/sh" ]

COPY --from=0 /fam-php /fam-php
COPY --from=0 /fam-php /fam-php-laravel
COPY bin/* /fam-php-laravel/bin/
