GET https://pipeline-dev-b2bygkfbaaa0eab8.westcentralus-01.azurewebsites.net/v1/teams/
HTTP 200
[Captures]
team_id: jsonpath "$[0].id"


GET https://pipeline-dev-b2bygkfbaaa0eab8.westcentralus-01.azurewebsites.net/v1/teams/{{team_id}}
HTTP 200