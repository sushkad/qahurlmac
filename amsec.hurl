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

POST https://dash-api-stg.redrok.io/search/livesearch
Content-Type: application/json
Authorization: Bearer {{token}}

{
  "domain": "sushant.com"
}

HTTP 200

POST https://dash-api-stg.redrok.io/search/countries
Content-Type: application/json
Authorization: Bearer {{token}}

{}

HTTP 200

POST https://dash-api-stg.redrok.io/search/GetSearchHistory
Content-Type: application/json
Authorization: Bearer {{token}}

{}

HTTP 200

POST https://dash-api-stg.redrok.io/Scan/GetRecentThreats
Content-Type: application/json
Authorization: Bearer {{token}}

{}

HTTP 200

POST https://dash-api-stg.redrok.io/Scan/GetCustomerScore
Content-Type: application/json
Authorization: Bearer {{token}}

{}

HTTP 200

POST https://dash-api-stg.redrok.io/Scan/GetAssetsList
Content-Type: application/json
Authorization: Bearer {{token}}

{}

HTTP 200

POST https://dash-api-stg.redrok.io/Scan/GetAlertsCountOverTime
Content-Type: application/json
Authorization: Bearer {{token}}

{}

HTTP 200
