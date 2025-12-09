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

POST https://dash-api-stg.redrok.io/Scan/CreateScan
Content-Type: application/json
Authorization: Bearer {{token}}

{
    "scanName": "QA_Test_06",
    "scheduleDate": "",
    "targets": [
        {
            "Address": ["192.167.1.1"],
            "Port":["1-1000"]
        }
    ],
    "protocolMethod": 2,
    "startDate": "2025-08-10T00:00:00.000Z",
    "endingDate": "2025-08-15T23:59:59.000Z"
}

HTTP 201