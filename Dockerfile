# stage1 - build react app first
FROM node:14.15.4-alpine3.12 as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
ADD ./package.json /app/
RUN yarn --silent
ADD ./src /app/src
ADD ./public /app/public
RUN yarn build

# stage 2 - build the final image and copy the react build files
FROM nginx:1.19.6-alpine
COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
ADD nginx/nginx.conf /etc/nginx/conf.d
ADD entrypoint.sh /etc/nginx/entrypoint.sh
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]