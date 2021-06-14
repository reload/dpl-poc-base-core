ARG SOURCE_BUILD
FROM ${SOURCE_BUILD} as source_build

FROM uselagoon/php-7.4-cli-drupal:latest

COPY --from=source_build /app /app

RUN mkdir -p -v -m775 /app/web/sites/default/files

# Define where the Drupal Root is located
ENV WEBROOT=web
