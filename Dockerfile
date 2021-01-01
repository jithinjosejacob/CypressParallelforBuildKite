FROM cypress/included:4.1.0

RUN chmod 755 config/docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

WORKDIR /app

COPY ./cypress ./cypress
COPY ./cypress.json ./cypress.json
COPY ./package.json ./package.json

# Verify Cypress installation worked

RUN npx cypress verify

RUN npm run test