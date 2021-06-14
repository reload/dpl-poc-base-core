ARG SOURCE_BUILD
FROM ${SOURCE_BUILD} as source_build

FROM uselagoon/nginx-drupal:latest

COPY --from=source_build /app /app

# Define where the Drupal Root is located
ENV WEBROOT=web
