FROM cypress/included:4.1.0

WORKDIR /app

COPY ./cypress ./cypress
COPY ./cypress.json ./cypress.json
COPY ./package.json ./package.json

# Verify Cypress installation worked

RUN npx cypress verify

RUN npm run test