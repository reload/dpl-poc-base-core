ARG IMAGE_CLI
FROM ${IMAGE_CLI} as cli

FROM uselagoon/nginx-drupal:latest

COPY --from=cli /app /app

# Define where the Drupal Root is located
ENV WEBROOT=web
