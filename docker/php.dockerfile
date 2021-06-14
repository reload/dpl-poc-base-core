ARG SOURCE_BUILD
FROM ${SOURCE_BUILD} as source_build

FROM uselagoon/php-7.4-fpm:latest
LABEL org.opencontainers.image.source https://github.com/reload/dpl-poc-base-core

COPY --from=source_build /app /app
