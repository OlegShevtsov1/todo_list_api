

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjE0LCJ1aWQiOiIwNzA3MjEyZi01YTgwLTQ5OTctYTBiNS0yNWUzMWNlMjM4Y2UiLCJydWlkIjoiN2VjMmY5N2QtMTU4NS00MTY2LTk0YTEtN2ZkOTg0N2RkODE2In0.tKCg6meINt8cvKTXXAeVZ_RzkuW7dxwJFGBZ89L5Gdg
            Content-Type: application/json

    + Body

            {
              "email": "roxana@veum.co.uk",
              "password": "Password"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "jdTPPN1cc6hlTW9zgo9lXo2+Wz2HOUBe4hPf/4p0BQHU858jBdSv44UzC2L9J4S3IS+nRvaSG1TAyxggpir2nQ=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjE1LCJ1aWQiOiI5YjE1ZTY4OC1lNjllLTRkNDctYTZiZi05ZjQzYzY5ODgxOWEiLCJydWlkIjoiNGEzYjJkMDktMjljMC00NGQzLThlM2MtMzM2OTI5MGY3M2E1In0.QeibtAjUu6JzgezOfLsd2NHwgi00wcyAf_iB3TFASG8
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjUsInVpZCI6ImFjNGU2ZGIyLWQ2MzktNGJkZS1iYzkwLTI5MzFlMjc1NzkxNCIsInJ1aWQiOiJlYmZlMTlhNy03MTI5LTQwMTEtODYyOS1hY2JkMjliZGY4ZWMifQ.VyBIFEo64wZLx_dmKl5ZaAK1FeLBfty5OFxS3pZz_6g
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjYsInVpZCI6Ijk0NjBiYjkyLWYzMjktNDhhNy1hZTA3LTUyMzljYTg1Y2JkNCIsInJ1aWQiOiI5NzViMGQxMy05NWRmLTRiOTktOTkxYS0xOTEwNGFmNDgwZDkifQ.APR3alX2O1vX9e8vAwaAHPYj-N2_494LGtuXee6gdl8
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
                "id": "5",
                "type": "project",
                "attributes": {
                  "name": "Project1"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "6",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request create project with wrong params
**POST**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjcsInVpZCI6ImVmNjE0NjI3LTFiMzktNDI3OC1iM2E5LWVjODc3OTUyZTAzOCIsInJ1aWQiOiI3ZmQzMDVmZC04NzQxLTRiYWItODgwMy02NWJhZjYxMWVjYTAifQ.WKRFn4uVW4cvB10TDTuODJHKI0g9l1F-B8qwfbzVIP8
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
    + id: `6` (number, required)

+ Request update project
**PUT**&nbsp;&nbsp;`/v1/projects/6`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjgsInVpZCI6IjgxYmE1YmZiLTAwMzItNDNiNS1hYjMxLWYwOWYwYTFkZTc5MCIsInJ1aWQiOiI3MjYzZjk0ZS1lODU3LTRkYzYtOTJiOS04YWY2ZjgyYTRlZWUifQ.OvWMdg30rrpYZ9oznl8FveJkkoNJsi1mntHteJkw8jw
            Content-Type: application/json

    + Body

            {
              "name": "nobis"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "6",
                "type": "project",
                "attributes": {
                  "name": "sunt"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "8",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request not update project 422
**PUT**&nbsp;&nbsp;`/v1/projects/7`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjksInVpZCI6ImU4YTI0ZjI5LWI4ZWItNGZiMC05Yjk2LTYyODEwMWM2MDc5ZiIsInJ1aWQiOiJmZmY4YzY3Zi05ZWZkLTRmM2QtYjI2Yy01ZjRjZjg1OGMyYWMifQ.fSMOrUlBStUMAGF3l8YgK9WWXcQeehM_5KM1U6tKccA
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjEwLCJ1aWQiOiJlYWUzNDkzOS1hOTkyLTQzZjktOTE3Yi1hNzRhNWVlYjM4YTkiLCJydWlkIjoiZWNmOTJhZGItOGQ1OC00YjNhLTliOWItYjUzOTliOTBhZWI0In0.RGkSUmkoz8lu9GIdgvXCsM743oycE0KShQLVvK2xZ0Q
            Content-Type: application/json

    + Body

            {
              "name": "et"
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
    + id: `8` (number, required)

+ Request delete project
**DELETE**&nbsp;&nbsp;`/v1/projects/8`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjExLCJ1aWQiOiIwZjk3Y2YwMS0zYjJkLTQxYzYtOTEyZC02MDRhYzJmMTE3NzEiLCJydWlkIjoiZmM2MDkyNzQtMmFmZS00NDFmLTgzYWYtNTBmOTE4YjkxODZmIn0.kQxFK0IPYFELhE9QXoxzqlu3SfNBQ9B79ncl2ti_MZc
            Content-Type: application/json

+ Response 204

+ Request not found
**DELETE**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjEyLCJ1aWQiOiJkZDliZmQ1My0wZTliLTQ3YjAtOGI3NC03ODBkMTM3YTU2N2EiLCJydWlkIjoiYzMyZDEyYTgtM2Y5MS00OTU4LTllNWUtNmU0NTM5YmY5NWZmIn0.kqTyZQb6OQGlcdOh5OaiKr_aSfRA5231UDjepZbZyGg
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
              "email": "jannet@goodwin.name",
              "password": "Password",
              "password_confirmation": "Password"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "yCBpGxoqKuyhuG2LO1vlRghs/E6PVdjIZ2fGi6+1yh1ioQTFN1ZjLYlkOKvtALufHUv7D1hRnaZJN3kZb1NAtA=="
            }

# Group Tasks


## Prioritization [/prioritizations]


### Update task priority [PUT /v1/prioritizations/{id}]

+ Parameters
    + id: `2` (number, required)

+ Request task position up
**PUT**&nbsp;&nbsp;`/v1/prioritizations/2`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDAsInVzZXJfaWQiOjEsInVpZCI6IjRiYTgzN2JhLTczOGQtNDU5Zi1hNWM3LTNiYmM2MTFjMzdjMyIsInJ1aWQiOiJkZjg0ZTMzZS02NTZiLTQ4OWYtOTkxYS0zMzJkNzBkZmQ3ZTIifQ.lNCJ7RtZRxgCx2BeExJgauwrcFkFC97svbpfqM7eKS8
            Content-Type: application/json

    + Body

            {
              "position": "up"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "2",
                "type": "task",
                "attributes": {
                  "name": "nobis",
                  "deadline": "2020-11-09T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "1",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request task position down
**PUT**&nbsp;&nbsp;`/v1/prioritizations/5`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjIsInVpZCI6IjNkMmQ3NDk4LTQ3OTctNDkwNi1hMTQ3LTQyOTNlZjdkMDA2NSIsInJ1aWQiOiIwYmJkMWQzMi1kMjNhLTQwY2UtOTFiOC0xZGE4NGMxMWMzZjQifQ.8xbXfMQzOpmpAiUJY-24hwo11xb9CwtdY-Qdx6YLzCs
            Content-Type: application/json

    + Body

            {
              "position": "down"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "5",
                "type": "task",
                "attributes": {
                  "name": "laborum",
                  "deadline": "2020-11-09T00:00:00.000Z",
                  "status": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "2",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request return 404
**PUT**&nbsp;&nbsp;`/v1/prioritizations/5`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjMsInVpZCI6ImNlNGVjOGVjLThiMjItNDFmMy1hOGE3LWY0MzE1OTQ1ZDM2OSIsInJ1aWQiOiJlODVlYjkyMS0zZjA5LTRiMjYtOTVmYy02ZDRlNWY3OGZjYWMifQ.fBMm5CWXKA4t-ylzX1GFeBxnZGs7hhVtnUGglb45rzU
            Content-Type: application/json

    + Body

            {
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

+ Request return 422
**PUT**&nbsp;&nbsp;`/v1/prioritizations/11`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjQsInVpZCI6IjdhYjI0ZjRhLTMyNzktNDZjNi1iNGViLTg4ZGYwOGFhZjBkMSIsInJ1aWQiOiIzNzQyNTJmOC00M2YyLTQ2M2YtYWVjOC03MTVjYjcwZWY2MjMifQ.uSyT7FLdfPb7M_-Kn081x16j21--gBDZz72_ILCRf84
            Content-Type: application/json

    + Body

            {
              "position": "quo"
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "/v1/prioritizations/11"
                  },
                  "detail": "Wrong position"
                }
              ]
            }

## Status [/statuses]


### Update task status [PATCH /v1/statuses/{id}]

+ Parameters
    + id: `13` (number, required)

+ Request when do complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/13`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjE2LCJ1aWQiOiJkZDdiYTNjNi1mY2E4LTQ1OTctOGQyYS1iMjgzYzE1NDQ1ZTgiLCJydWlkIjoiMDFhNWIwZGUtZGViYy00NWZkLWE0MzctMTQ2NDlhMzVjYWNhIn0.Idcg6ZhqFDePNqAQpKtETXujVja5q0uKjsVU4lT6XMA
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "13",
                "type": "task",
                "attributes": {
                  "name": "id",
                  "deadline": "2020-11-09T00:00:00.000Z",
                  "status": true,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "10",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request when do not complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/14`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjE3LCJ1aWQiOiIwNmRkZDQ4NC1hMWRjLTQ1YTQtODJiZS1hNjRlYzE3ZGJlYjQiLCJydWlkIjoiYWU4YmM3YTUtNjE3ZS00ZjM2LWFiZTItZWNiMTIxNGVkZTZiIn0.4AnoXS6y2iTovlz77lo0a_GdfdAtaa6EE9hTVNBuWXU
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "14",
                "type": "task",
                "attributes": {
                  "name": "et",
                  "deadline": "2020-11-09T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "11",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request fail complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjE4LCJ1aWQiOiIxNTU3ZTU5Zi1mNTEwLTQxM2MtYjg2My00ZGJiNjNjMjgzMDkiLCJydWlkIjoiZDA0OGIxOTctY2RiNC00OTY2LThlODMtZTM1ZDQ4YTg1MzBkIn0.VfltSdst8yMgjh4eNkK4-ifVVgA6jF6i5kRIqI99p6c
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

## Tasks [/tasks]


### Create a task [POST /v1/projects/{project_id}/tasks]

+ Parameters
    + project_id: `13` (number, required)

+ Request create task
**POST**&nbsp;&nbsp;`/v1/projects/13/tasks?id=13`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjIwLCJ1aWQiOiIzYTE1MzUwOS05N2M5LTRmM2ItYjcwNy1kOTM3YTdkOTA5NWEiLCJydWlkIjoiYzc0ZDhhMDEtZmU1Yy00Y2E5LTk4MTYtZjllODRkODViZjQ2In0.LycDfrOUj3hE02-lfdF8kRWmUgMszuGFUJcIdG8nrZI
            Content-Type: application/json

    + Body

            {
              "name": "quos",
              "deadline": "2020-11-09T21:08:21.916Z"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "16",
                "type": "task",
                "attributes": {
                  "name": "quos",
                  "deadline": "2020-11-09T21:08:21.916Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "13",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request not create task
**POST**&nbsp;&nbsp;`/v1/projects/0/tasks`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjIxLCJ1aWQiOiI0OTM3YTdiMy04NjU0LTRiNmUtOTk2NS1mY2Q4ODEwZmY2N2IiLCJydWlkIjoiNzMxZGFiMjktYjI1OS00NzU3LWE5YjEtODVhMmE5ZjFlYmRjIn0.9ZTlPlUvi-QGYOx8hhuFuZUPmyV-DN8HQtIfBckpcMs
            Content-Type: application/json

    + Body

            {
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

+ Request not create task
**POST**&nbsp;&nbsp;`/v1/projects/14/tasks?id=14`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDEsInVzZXJfaWQiOjIyLCJ1aWQiOiI3N2M5Y2Y4ZS02Y2ZiLTQwZWQtOTQ4OC04Y2YxOGMxMzY3N2YiLCJydWlkIjoiZWFkNzczZGUtN2E5NS00YjRkLWI3OWMtM2M5YWIxYjZmMWI4In0.WanyKrC3FFGDzBhJUiY8HR9Vu8y-tM371RzBxxnOYv8
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

### Update a task [PUT /v1/tasks/{id}]

+ Parameters
    + id: `17` (number, required)

+ Request update task
**PUT**&nbsp;&nbsp;`/v1/tasks/17`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDIsInVzZXJfaWQiOjIzLCJ1aWQiOiI1ZTc1Y2M4Yi05MDA5LTQ2NTAtODRmOS1lNDE5ZDVmYTNlY2QiLCJydWlkIjoiZmZmOGVjYzYtMjVhMy00MzNiLWJhN2ItYTIxYTU5OGQ2MGY0In0.ltxvqDpYLGW7GYcod816hJjohmSfi2ANMDFG-3WZBbM
            Content-Type: application/json

    + Body

            {
              "name": "illo"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "17",
                "type": "task",
                "attributes": {
                  "name": "quis",
                  "deadline": "2020-11-09T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "15",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request not update task
**PUT**&nbsp;&nbsp;`/v1/tasks/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDIsInVzZXJfaWQiOjI0LCJ1aWQiOiJiY2UzNzMxMS0zNWY0LTQwNmMtODRiOC00NWNlMDJiMTRlMDciLCJydWlkIjoiOWEyMGJjZGItNzQyNy00MzdmLWI2NWYtN2EyYTg1NmFhNDg5In0.gx7Hx3futjJLZj8769v199vUEZ7FedE8WxOuM6yvoPI
            Content-Type: application/json

    + Body

            {
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

+ Request not update task
**PUT**&nbsp;&nbsp;`/v1/tasks/19`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDIsInVzZXJfaWQiOjI1LCJ1aWQiOiJiNGIyY2I2Yy1jNzJkLTQ2MjAtOGEwMS1iNGViNDk4OGZhYzciLCJydWlkIjoiMGYzY2YxNGEtY2U4Ni00YzJmLWFhNzQtODBhYzAyMzQzOWI1In0.GchhPFJ-Ng5V0bXwYEMt03oveU5Ji6kORi4qPdU_HUM
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

### Destroy a task [DELETE /v1/tasks/{id}]

+ Parameters
    + id: `20` (number, required)

+ Request success destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/20`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDIsInVzZXJfaWQiOjI2LCJ1aWQiOiJmZTgyOWExNy04MzAzLTQ2OGEtODI1Zi1iOWRiMTFjMTdlNWEiLCJydWlkIjoiNjA1ODk5MDgtOTgyMy00OGI3LWIzNGYtM2Y3NGZhZDg3YmZkIn0.q_6O9_K-gdsy_6WJAkmne975t2ju7uYmrpPKdQ6m4yo
            Content-Type: application/json

+ Response 204

+ Request failed destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ4NzMzMDIsInVzZXJfaWQiOjI3LCJ1aWQiOiJlM2E3Y2U1ZS03NDY4LTRiNWItOTg1ZC04MTMwNDg1MTNmYTEiLCJydWlkIjoiMThjODhiODktZjRmNS00NmEyLTlkYWItMzhjMjA5OWU3NjllIn0.cG2z9eyI1V-0dfw4VZTTOpq6ZWqzAtmZwrgeZRUzY_w
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }
