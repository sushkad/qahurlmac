# .env file content
BASE_URL=https://dash-api-stg.redrok.io
AUTH_ENDPOINT=/api/authenticate
SEARCH_ENDPOINT=/search/livesearch
COUNTRIES_ENDPOINT=/search/countries
EMAIL=quresh@amsysis.com
PASSWORD=Mumbai@a2
CLIENT_IP=192.168.0.103
DOMAIN=amsysis.com

POST {{BASE_URL}}{{AUTH_ENDPOINT}}
Content-Type: application/json

{
  "email": "{{EMAIL}}",
  "password": "{{PASSWORD}}",
  "ip": "{{CLIENT_IP}}"
}

HTTP 200
[Captures]
token: jsonpath "$.token"

# Second POST request - Using the captured token
POST {{BASE_URL}}{{SEARCH_ENDPOINT}}
Content-Type: application/json
Authorization: Bearer {{token}}

{
  "domain": "{{DOMAIN}}"
}

HTTP 200

# Third POST request - Countries endpoint
POST {{BASE_URL}}{{COUNTRIES_ENDPOINT}}
Content-Type: application/json
Authorization: Bearer {{token}}

{}

HTTP 200