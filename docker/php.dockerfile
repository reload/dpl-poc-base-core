ARG SOURCE_BUILD
FROM ${SOURCE_BUILD} as source_build

FROM uselagoon/php-7.4-fpm:latest

COPY --from=source_build /app /app
