FROM uselagoon/php-7.4-cli-drupal:latest as builder

COPY composer.* /app/
COPY assets /app/assets
RUN COMPOSER_MEMORY_LIMIT=-1 composer install --no-dev
COPY . /app

FROM scratch

COPY --from=builder /app /app
