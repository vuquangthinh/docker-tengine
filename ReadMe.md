
Dead simple Tengine (nginx alternative)


# Example MultiStage with ReactJS build support

```
FROM node:13.7 as builder

WORKDIR /app

COPY . .
RUN yarn

RUN cd /app/packages/web yarn && yarn build

FROM agiletechvn/tengine
COPY --from=builder /app/packages/web/build /var/www/html

```