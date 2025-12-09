# Login Request - Capture Token
POST https://dash-api-stg.redrok.io/api/authenticate
Content-Type: application/json

{
  "email": "iquresh@amsysis.com",
  "password": "Mumbai@a2",
  "ip": " 192.168.0.103"
}

HTTP 200
[Captures]
token: jsonpath "$.token"

# Use Token in Authenticated API
POST https://dash-api-stg.redrok.io/search/GetSearchHistory
Authorization: Bearer {{token}}

HTTP 200
