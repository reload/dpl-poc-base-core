ARG CORE_RELEASE
FROM ${CORE_RELEASE} as release

FROM uselagoon/php-7.4-cli-drupal:latest

COPY --from=release /app /app

RUN mkdir -p -v -m775 /app/web/sites/default/files

# Define where the Drupal Root is located
ENV WEBROOT=web
