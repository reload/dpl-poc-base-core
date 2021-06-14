ARG SOURCE_BUILD
FROM ${SOURCE_BUILD} as source_build

FROM uselagoon/nginx-drupal:latest
LABEL org.opencontainers.image.source https://github.com/reload/dpl-poc-base-core

COPY --from=source_build /app /app

# Define where the Drupal Root is located
ENV WEBROOT=web
