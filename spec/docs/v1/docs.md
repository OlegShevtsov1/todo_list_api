

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjcwLCJ1aWQiOiIxNDcyOTUzZi1lZjU5LTQxNjYtODEwZi1iM2M1NDhhYmI4MmMiLCJydWlkIjoiY2YyZDFkMGEtNWJkYS00Zjg4LTgzZDEtY2U3YzI2OGI0NzA2In0.FSxdLzSmmH8QZDJ2PAsaqHb0KqC2rf2Xx8OQUkRTGZs
            Content-Type: application/json

    + Body

            {
              "email": "jason@berge.co.uk",
              "password": "Password"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "aSawz2ym/lXOp/q7xkttcb7TPuA4uTBdq2uIZf1WqlIzYiEg5xyUR79yxkrAi9AlByjTOuUWaN57tbhmpxxnMg=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjcxLCJ1aWQiOiI1ZDRiNTBmYS1lMjMxLTRkYzEtODc4MC0xYTZhNTg0Nzg3NTEiLCJydWlkIjoiOTVjMTA1NDAtNDEzMC00NTQwLTg1ZGYtM2I1ZGYzYzllN2ViIn0.nzLaWpKgPUzSLKtMd6y5gM_OxJITk7OycA_-65l1Rn0
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            "ok"

# Group Projects


## Projects [/projects]


### Get projects [GET /v1/projects]


+ Request returns status ok
**GET**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjYxLCJ1aWQiOiI3OGIxZTg5Ny1mYjc2LTQwNGQtODcyZC04M2FmM2EyNDZhZjkiLCJydWlkIjoiMzRjZDU4MmEtZmUzYy00MGNhLTkwZGUtYWM1Mzg5ODgzYWI2In0.yRNxDAyDATJAJuLfkIlzMRK-o_7W0vANSU-mIxAwpnw
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
            
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorized"
            }

### Create a project [POST /v1/projects]


+ Request create project
**POST**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjYyLCJ1aWQiOiIzMWE0MzJlNy05ODU2LTQ1NmMtYmMwMi02NjM1YzZkNGQxMzQiLCJydWlkIjoiYWJlZjk0NzYtNzdlZC00Mjc0LTk3ZjYtZWI5Y2JjYWE1NzQ2In0.YQHlpIMeTdPmy0PzyEo4baDK4PJ48suc9vR1mrBOWd4
            Content-Type: application/json

    + Body

            {
              "name": "Project1"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "26",
                "type": "project",
                "attributes": {
                  "name": "Project1"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "62",
                      "type": "user"
                    }
                  }
                }
              }
            }

+ Request create project with wrong params
**POST**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjYzLCJ1aWQiOiIwNjE5MWE4My1hYmE2LTRlYTctOTE5My03MTAwMWVhODY5ZDIiLCJydWlkIjoiODA4YmRlZmEtZDJhNy00Y2E5LWFmZmEtYTYxMDlhOGQ3ZTQwIn0.3uk9S88LVTeXQcYbkRT1oMidNaQdVjBky6ewuua2Buk
            Content-Type: application/json

    + Body

            {
              "name": ""
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "data/attributes/name"
                  },
                  "detail": [
                    "can't be blank"
                  ]
                }
              ]
            }

### Update a project [PUT /v1/projects/{id}]

+ Parameters
    + id: `27` (number, required)

+ Request update project
**PUT**&nbsp;&nbsp;`/v1/projects/27`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjY0LCJ1aWQiOiI1OWEzNzJhZS1hMjdiLTQ2NTEtYjNjNC01ZjMxNGIyNjkwMmYiLCJydWlkIjoiNzc4M2I0NjctZGI2NC00NTAwLTgyZTMtZTg0ZGFhZjM1OTA4In0.a4R7XazdISLk_jFvGn6gvzaOQrIiiu2hq6g2ZuCq4Ig
            Content-Type: application/json

    + Body

            {
              "name": "aut"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "27",
                "type": "project",
                "attributes": {
                  "name": "sunt"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "64",
                      "type": "user"
                    }
                  }
                }
              }
            }

+ Request not update project 422
**PUT**&nbsp;&nbsp;`/v1/projects/28`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjY1LCJ1aWQiOiI4MjQ2NzZmYy1hNTBkLTRlNGItYjhlMy1kM2QwODYyMmE0YjAiLCJydWlkIjoiYWJkODVlNjMtYTE2YS00NGIzLTkwNTEtM2M4MDMxN2ZlOTZjIn0.XS6DpevTBXNEaG94bg90_fMM3xLdltPto4ce9pjhhIc
            Content-Type: application/json

    + Body

            {
              "name": ""
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "data/attributes/name"
                  },
                  "detail": [
                    "can't be blank"
                  ]
                }
              ]
            }

+ Request not update project
**PUT**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjY2LCJ1aWQiOiJmOWQzMDU5NC1hMzJmLTQ0MzItOWMxZC0xMTYwMDdkODIxYTEiLCJydWlkIjoiZTE3NmQ1NmQtMGUwZi00ZWU5LWIxYzktOWY3ZDk3MjAzYmZlIn0.YsO9ZPcZ8L7PXBkyYYIAc_eDjzrqkmLCyLAdrQKhlI4
            Content-Type: application/json

    + Body

            {
              "name": "expedita"
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

### Destroy a project [DELETE /v1/projects/{id}]

+ Parameters
    + id: `29` (number, required)

+ Request delete project
**DELETE**&nbsp;&nbsp;`/v1/projects/29`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjY3LCJ1aWQiOiIxZmM1MzQzYy1mNjYzLTQyYzYtOTc2Mi0zYzdiYjY3MmY1OGQiLCJydWlkIjoiZGJhNDQxY2YtMWJiNi00YjE0LTkyNzMtYTJlMzI1OWVhNGJjIn0.NxHlDovjuCBce4hsbdNAYGU0ar-FktZYYrZFXZnF5lg
            Content-Type: application/json

+ Response 204

+ Request not found
**DELETE**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMyMDcsInVzZXJfaWQiOjY4LCJ1aWQiOiJkZmZiMDFkYS1jYjQ2LTQxMTYtYTc5Zi1jY2IwNDJmMTQ4OTciLCJydWlkIjoiNjQyNWI5ZWUtZDI2ZC00NWNhLTg1ZTYtNWY1OGQyNWQxNTA0In0.6wIsDw7jWAo-UAMUtfdt6JZThQOce6YDQyvqmPy69Ko
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

# Group Registrations


## Users [/]


### Create a user [POST /v1/auth]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "email": "jackie@murazik.ca",
              "password": "Password",
              "password_confirmation": "Password"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "DhHL+3sklWZbbdp06c3ROtIseVXCa3tQXGv7ZkEZGFUXNlCRPvr6mDsRKBj6kTD8feOeU4nvTKd/sTHCN+oWbQ=="
            }
