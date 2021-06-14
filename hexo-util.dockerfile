FROM node:current-alpine3.13
WORKDIR /app
EXPOSE 4000

RUN npm --registry=https://registry.npm.taobao.org install hexo-cli -g

# Entry point
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
CMD ["hexo", "server"]