ARG IMAGE_CLI
FROM ${IMAGE_CLI} as cli

FROM uselagoon/php-7.4-fpm:latest

COPY --from=cli /app /app
