POST https://pipeline-dev-b2bygkfbaaa0eab8.westcentralus-01.azurewebsites.net/v1/users/login  
Content-Type: application/json

{
  "email": "abbad.akram@ailh.com",
  "password": "Abbad@123"
}

HTTP 200

GET https://pipeline-dev-b2bygkfbaaa0eab8.westcentralus-01.azurewebsites.net/v1/dashboard/
HTTP 200

GET https://pipeline-dev-b2bygkfbaaa0eab8.westcentralus-01.azurewebsites.net//v1/pipelines/
HTTP 200

GET https://pipeline-dev-b2bygkfbaaa0eab8.westcentralus-01.azurewebsites.net//v1/pipelines/1
HTTP 400

GET https://pipeline-dev-b2bygkfbaaa0eab8.westcentralus-01.azurewebsites.net/v1/events/
HTTP 400