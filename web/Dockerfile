FROM nginx:1.17

# Remove the default nginx test file
RUN rm /usr/share/nginx/html/index.html

# Copy static files from build image
COPY --from=eo:build /everfree-outpost/dist/website /usr/share/nginx/html/website
COPY --from=eo:build /everfree-outpost/dist/server/www /usr/share/nginx/html/server
COPY --from=eo:build /everfree-outpost/dist/client /usr/share/nginx/html/versions/dev
COPY --from=eo:build /everfree-outpost/dist/launcher /usr/share/nginx/html/launcher
