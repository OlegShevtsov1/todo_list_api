

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjE4LCJ1aWQiOiJmOWE1M2Y3YS0wNDFkLTRhMjgtYTM0Yy0wODU4NDQxMzEzYjYiLCJydWlkIjoiZDYzMWYzYTUtZDNhNC00N2EyLWJjMTAtYTFhYzFjN2IwZmJlIn0.CbTFFMsGnMdKCi8WOUrSrH0ddVa4xJ-CWexH_oGj5bE
            Content-Type: application/json

    + Body

            {
              "email": "karissa@rodriguez.ca",
              "password": "Password"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "8MJUzj3IHZ/8ECIbsv3OON9o+DZRQOhkHhbRzir0GkaVrYatEIHUm09DxWIgYDM8c4VnwIeR1sM5PM8Svz4CZQ=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjE5LCJ1aWQiOiJiODVmZTIxMC0zMDRmLTRiYjktOWRmYy04MWVhNzBjZmE5ODciLCJydWlkIjoiOTRmMDJlYTktN2M4Ny00YjhhLWEwYzgtN2VjNTQyMTU3N2NkIn0.uuhVgzCzevMVSJ_66DP3bCe5PnOzI9t7h24wIeXbKeY
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjksInVpZCI6IjY0ZDRjMjgxLTE5ODYtNDA5NC1hNGQ5LTcxYmZjOGVmMzQ1MiIsInJ1aWQiOiI2YmVkZjI3Yi1iNjVlLTQ0MGUtOTY0MC04YWQwOTg5MzJjNWMifQ.MfOp1RgcaHdG40ywuOc-bkNo49xC43k0KUdcW7ByKi0
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjEwLCJ1aWQiOiJhZTExNWE5Zi1lYzlkLTRhNWYtOTY0MC1mM2RlMzhjODAxMTQiLCJydWlkIjoiOWNlMmZjYzQtMWM5NC00YmI2LWI3ZjUtZDE5MTBjZTM5ZTk5In0.Bk1MYAdjEVekvxOlVaOHOeJmmYbtgU56HWaK1LC2JXo
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
                "id": "9",
                "type": "project",
                "attributes": {
                  "name": "Project1"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "10",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjExLCJ1aWQiOiJhNjljNmYxMS1lNTY3LTQ1NzEtYjk2Ny05ZWE2ODZlOTYyZDUiLCJydWlkIjoiOTUyMjcyMmQtZmUwZS00NDg1LWE0YWQtMzZmOTZmN2Y4ZTBiIn0.1WUZLNyM9XRwl5vAEbk9F1d4ayPunlAi-fsRayMuB-8
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
    + id: `10` (number, required)

+ Request update project
**PUT**&nbsp;&nbsp;`/v1/projects/10`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjEyLCJ1aWQiOiI1YmNkMzFlYi1lODliLTRiYjEtOWY1Ni03YjZhMjM3Y2QzNDgiLCJydWlkIjoiODhlMGI3NDItMWM4Ny00Mjk1LTgxYTgtZGZhMWQzMDIxMWRkIn0.JEmo57w1GVPjqtKPfxGgC5Bbk-g2IE0kX-FnTW4m0eQ
            Content-Type: application/json

    + Body

            {
              "name": "quasi"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "10",
                "type": "project",
                "attributes": {
                  "name": "sunt"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "12",
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
**PUT**&nbsp;&nbsp;`/v1/projects/11`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjEzLCJ1aWQiOiI5NzkzMmM2OC00ZTk5LTRkYzEtYTFhMy0xNGJhYjA3ZmViM2IiLCJydWlkIjoiNGYxN2FlMTYtY2RmZi00MzJmLThmZGYtMjNkOTU3MzA0MWM1In0.vk76Hpt_U6zoNzvdTrR0-pcegvorrTqvKZXzkBUe5GU
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjE0LCJ1aWQiOiJlMjQ3YjRhOC04YTIzLTQ5NzYtOTBiYS0yZjJkYzE4OGI3MmIiLCJydWlkIjoiYTY0NjlmY2EtYmI1MC00NDQ0LTllMGEtY2I5MjRiYWE4ZThmIn0.01uMqxTXVgeKtnUEn2WicFwXtb8vMbe5IVZVIXvXqRk
            Content-Type: application/json

    + Body

            {
              "name": "accusantium"
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
    + id: `12` (number, required)

+ Request delete project
**DELETE**&nbsp;&nbsp;`/v1/projects/12`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjE1LCJ1aWQiOiJjMjMxYTI0MS1iNWZiLTRmOTUtYTNlYS0zZGU2M2FhNGJjMDAiLCJydWlkIjoiZTcxNjQ0ZTctZDYzYS00MjFlLTllZWEtZjY3OGRkY2M0MDFmIn0.OEIRHVMQROuOCiPp-IuxKvqKuI-GeGevLHZ8UwsvbjM
            Content-Type: application/json

+ Response 204

+ Request not found
**DELETE**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjE2LCJ1aWQiOiJmODU5NmUzZi1iZjhlLTQ2NTMtOTQ0NS1mN2M1MzM2MjM0MTciLCJydWlkIjoiMDk2ZGVlNzYtYzdmZi00NTM5LTlhOWQtNzYyZTc0NTRlODVkIn0.z0xOC8-EDBm8JbwQjiwaT4_S0lQsvlnu_-V9InkXyMc
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
              "email": "jeremy@goodwindooley.com",
              "password": "Password",
              "password_confirmation": "Password"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "8B3pUSvleGtVVTEWJIb6AyYjd2EfgWeywcAZ44z9qCNB0r0YDWK0wuPfwVk8QBJ4qnDVA08l5ZuB77t9fou18g=="
            }

# Group Task::Comments


## Task::Comments [task/comment]


### Create a comment [POST /v1/tasks/{task_id}/comments]

+ Parameters
    + task_id: `1` (number, required)

+ Request create comment
**POST**&nbsp;&nbsp;`/v1/tasks/1/comments?id=1`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODIsInVzZXJfaWQiOjEsInVpZCI6IjY2NWJlNDJiLTRiZjctNGFkZi05NjMwLTg3MWMxMmE0ZTc4YyIsInJ1aWQiOiJkN2E1NzM5Yi1lMDljLTQwMGYtOWY4Yi05ZTQzNjc4NjBkM2MifQ.vPOk5BdRiida7fg2ohQPmm5iv8Px90qx3Dja6YI-_X0
            Content-Type: multipart/form-data; boundary=----------XnJLe9ZIbbGUYtzPQJ16u1

    + Body

            {
              "description": "temporibus",
              "image": {
                "filename": "image.jpg",
                "type": "",
                "name": "image",
                "tempfile": "#<File:0x000055a2866e1760>",
                "head": "Content-Disposition: form-data; name=\"image\"; filename=\"image.jpg\"\r\nContent-Type: \r\nContent-Length: 130192\r\n"
              }
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "1",
                "type": "comment",
                "attributes": {
                  "description": "temporibus",
                  "image": {
                    "name": "image",
                    "record": {
                      "id": 1,
                      "description": "temporibus",
                      "task_id": 1,
                      "created_at": "2020-11-15T13:53:02.453Z",
                      "updated_at": "2020-11-15T13:53:02.585Z",
                      "image_data": null
                    }
                  }
                },
                "relationships": {
                  "task": {
                    "data": {
                      "id": "1",
                      "type": "task"
                    }
                  }
                }
              }
            }

+ Request not create comment
**POST**&nbsp;&nbsp;`/v1/tasks/2/comments?id=2`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODIsInVzZXJfaWQiOjIsInVpZCI6ImZkZTgyZjJhLWNhOTYtNDYwNi1iY2I1LTgwNWU3YmYyNDEzOCIsInJ1aWQiOiJiMjE2ZDBhNS1lYmM1LTQ5ZGEtYWIxYS02NDFiYjYwMTgwZDcifQ.XYFGF7whxqZNh7GrgR6TcQ2bS_qFuwVQAqX-7FWaX-c
            Content-Type: application/json

    + Body

            {
              "description": ""
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "data/attributes/description"
                  },
                  "detail": [
                    "can't be blank"
                  ]
                }
              ]
            }

### Destroy a comment [DELETE /v1/comments/{id}]

+ Parameters
    + id: `2` (number, required)

+ Request destroy comment
**DELETE**&nbsp;&nbsp;`/v1/comments/2`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODIsInVzZXJfaWQiOjMsInVpZCI6ImEyMTVkZmMxLTlkNjctNDlmYS04ZmZkLWYzNjA2NzlmZWNhOSIsInJ1aWQiOiI4ODY3ZDZiNC1hODJkLTRjZGQtYjFhMy0yYWMxOGZhYTA3OGYifQ.BXuIDFKl6ebuFFXKU-lb6jeJE81LPd4wqECtNZRbIto
            Content-Type: application/json

+ Response 204

+ Request not destroy comment
**DELETE**&nbsp;&nbsp;`/v1/comments/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODIsInVzZXJfaWQiOjQsInVpZCI6IjFhMWNhNzFkLTBkNDItNGM0Ny04NmVhLTc0MTMzMjVmMTY3ZCIsInJ1aWQiOiJjNjFlYWZhMS00NGRlLTQzZDAtYWE2YS1iNjE5YmExYWU3YjcifQ.mMxlPE_DGZSqsSg-maLO08-nX-BVtAMqzGPQlsXHIgY
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

# Group Tasks


## Prioritization [/prioritizations]


### Update task priority [PUT /v1/prioritizations/{id}]

+ Parameters
    + id: `6` (number, required)

+ Request task position up
**PUT**&nbsp;&nbsp;`/v1/prioritizations/6`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODIsInVzZXJfaWQiOjUsInVpZCI6IjFiNDQxZmY4LThlZGQtNGQ4Ny04MDY5LTQ2M2FhMGU5OGRhZiIsInJ1aWQiOiJjNmZjNzI5OC1iOWQ3LTQ3NzctOGNiZi1jNmIwYWM4N2VjODQifQ.7JIWLR_zYBnrt0EVkOe1gP1tz2LDKoYw1ZMY-6vgAfA
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
                "id": "6",
                "type": "task",
                "attributes": {
                  "name": "incidunt",
                  "deadline": "2020-11-16T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "5",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request task position down
**PUT**&nbsp;&nbsp;`/v1/prioritizations/9`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjYsInVpZCI6ImRmNTMwMDY5LTgxYmQtNGNiMC05YTlhLTI1MDU0NDM0OGMwOCIsInJ1aWQiOiJjNmUzNmM0MC1jMzU2LTRlYjQtYWM4Yi05MTEzOWY4MTMwMzgifQ.5LZn9uZuPYY5fQEEi0XEdWzmDj2eFiUUlTyn4W70UX0
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
                "id": "9",
                "type": "task",
                "attributes": {
                  "name": "consectetur",
                  "deadline": "2020-11-16T00:00:00.000Z",
                  "status": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "6",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjcsInVpZCI6IjRlMDMzOWU0LTc5NTktNDlmNy1iODlmLWVlNzBjMGVjZmM1YSIsInJ1aWQiOiI1ZTllMmQxMi0yM2NhLTRiNTEtYTk2Mi00NzY0NGNhNTc2MWIifQ.v0oD01X7sF9XIZP9jH0QJiKgxSPbQ9IeJFZv3N26Cz0
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
**PUT**&nbsp;&nbsp;`/v1/prioritizations/15`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjgsInVpZCI6Ijg5MDc5MTdhLTllNGYtNDAxNS1iYTUzLWQxMTY4ZWQ4ZmQyYiIsInJ1aWQiOiIwODc0MTU0Yi1lMDVlLTQ2MmMtYjgwNC0wMTA4ZTE2OGZmMGYifQ.wcAnndY0XIUNBBLYikGIUsYwDNC_TUaE-qsilgs8wGw
            Content-Type: application/json

    + Body

            {
              "position": "sed"
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "/v1/prioritizations/15"
                  },
                  "detail": "Wrong position"
                }
              ]
            }

## Status [/statuses]


### Update task status [PATCH /v1/statuses/{id}]

+ Parameters
    + id: `17` (number, required)

+ Request when do complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/17`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjIwLCJ1aWQiOiI2Y2QzNjk0Zi1mMTgyLTQwNWUtOGMxNC00ZDg4MDMwOGY5MjgiLCJydWlkIjoiM2U0ZTAxYzEtZWQwYi00ZTYxLWEzZGYtZTJjZWVmODFmNTgyIn0.3Fweq1umXJ0rXZhbRfPSOMOa8oajdlbR6Q49Dlq88Yw
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "17",
                "type": "task",
                "attributes": {
                  "name": "non",
                  "deadline": "2020-11-16T00:00:00.000Z",
                  "status": true,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "14",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request when do not complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/18`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjIxLCJ1aWQiOiJmMmIzYTdhOC04YTk2LTRjMTMtYTNmNS03MzViMTAxMjdmNWIiLCJydWlkIjoiMjA2MzUzYmUtNGIxZS00NTEzLWJmNTEtMmM0YmNlOTVjOTIwIn0.G7EQtpgtxyY17BHIkfE7Q20p3Vp0y0Bl9AsmI3CNxaY
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "18",
                "type": "task",
                "attributes": {
                  "name": "et",
                  "deadline": "2020-11-16T00:00:00.000Z",
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

+ Request fail complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjIyLCJ1aWQiOiJmYTRjNzJhYy0wOTAwLTQ5ZDItYjg1OC03Mjg1M2I5MWJhYWIiLCJydWlkIjoiNDQyMWZiNDEtOGUxOS00NjQ1LThlMGEtODdkMTIzMjUwZmZkIn0.C5rBVS3dYFw6ahOvPivpjn0woVXu07YH9ZvQMV0D-T4
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
    + project_id: `17` (number, required)

+ Request create task
**POST**&nbsp;&nbsp;`/v1/projects/17/tasks?id=17`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjI0LCJ1aWQiOiIxNTBlZGU4Zi01M2Q4LTQwNTItOWE0My0yOWIxZjQ4MGUxN2EiLCJydWlkIjoiMDdkYjVmYzYtOWM3Ny00OTVlLWI2YTUtMmQzYmI2NzZlMjM5In0.0-NGNDN2rdZDANnN1RkNlS5nc2Wf8UO1Cho-LD5Mi2E
            Content-Type: application/json

    + Body

            {
              "name": "et",
              "deadline": "2020-11-16T13:53:03.656Z"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "20",
                "type": "task",
                "attributes": {
                  "name": "et",
                  "deadline": "2020-11-16T13:53:03.656Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "17",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjI1LCJ1aWQiOiIzZDY1ODlhOS1hYjQzLTQwMDUtYTY5OC0zOGQ5NDVlMTk0MDgiLCJydWlkIjoiNWZkM2UzOGUtZGFlNy00ZTBiLThkMDktY2RmNDg5NGQ3MWFiIn0.awVK7ihCNp9NsHRlRQ3Gi3ZwKlnEZxWatROy98meGSE
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
**POST**&nbsp;&nbsp;`/v1/projects/18/tasks?id=18`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjI2LCJ1aWQiOiIwYWM2M2Y1MC1mNzQ2LTQyMWUtOTAwNy0zODNlMWY3MWUzNWMiLCJydWlkIjoiZWNhNDljZmItMDcxYi00OTdkLTliNmEtNWQwOTVlYzQxMzljIn0.xUcEXh_e0rWOKOhu2vV5TBmZC-FOBGZM06HLVeu56wc
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

+ Request not create task
**PUT**&nbsp;&nbsp;`/v1/tasks/22`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjI3LCJ1aWQiOiIzMzMxZjAwZC1hOTdlLTRkZjktYTc2MS0xYTljY2ViZjBhOGEiLCJydWlkIjoiZGMxZmMzYjctZTkxZi00OTU5LWI0NmItMDIxMmQ0ODc2M2RmIn0.-fSRi2h16ZNp3nwBFs0PfL3ZtvK6OEHyKkvYkfOVwpc
            Content-Type: application/json

    + Body

            {
              "name": "Name"
            }

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Forbidden_content"
            }

### Update a task [PUT /v1/tasks/{id}]

+ Parameters
    + id: `23` (number, required)

+ Request update task
**PUT**&nbsp;&nbsp;`/v1/tasks/23`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjI5LCJ1aWQiOiJiYWM3ZGYwYi1mMjk4LTRmNjItOTAzNy05MGRhZGI1OTNlNWIiLCJydWlkIjoiNmU3OWEwZWMtZGFmYS00YThhLWI2MjMtOWNjNTU4ZWM2Y2VlIn0.vuzE7NIcJ2-77Uv8StM1wvX_5SKrKIXyoV6WhPSS-kk
            Content-Type: application/json

    + Body

            {
              "name": "est"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "23",
                "type": "task",
                "attributes": {
                  "name": "aut",
                  "deadline": "2020-11-16T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "21",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjMwLCJ1aWQiOiJjNzIwMGQxZS04ODQ4LTRhMzAtYjdiZC02YTlmMWY2ODA1Y2UiLCJydWlkIjoiMDZhYjdlZDAtZTkyMy00MzEwLWFlNGUtMWE2N2ZkMGZkYWYyIn0.5A4XyRTFBKdUK8rPgCqSEKsdmq8ORyos9EFiaNGGK_8
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
**PUT**&nbsp;&nbsp;`/v1/tasks/24`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjMxLCJ1aWQiOiIwMDBhNTdiZS0yZDUwLTRiM2MtODE0Ny0zOGI0N2RiODAzNTUiLCJydWlkIjoiNjNmNjEzOGQtZWI5NS00Y2Q4LTk0NDktNTY3ZTIzZjVmNDNkIn0.9OsoyQVy--7qulpLwFOa7Azkw_OTW42F2-AXcyS9zFo
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

+ Request not update task
**PUT**&nbsp;&nbsp;`/v1/tasks/26`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjMyLCJ1aWQiOiIyYjlmNDFjZC05ZjVmLTQxZGMtOWIzOS0xYmYxMmViZjEwMmMiLCJydWlkIjoiYzI0NDdjNDAtN2U5Ny00MDExLWI1MDMtNjUzZGRhMjliYjY0In0.gsdv3ZK40Oji3kTbhGI-wRsD7XDzdiv583PkgcyrnGM
            Content-Type: application/json

    + Body

            {
              "name": "Name"
            }

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Forbidden_content"
            }

### Destroy a task [DELETE /v1/tasks/{id}]

+ Parameters
    + id: `27` (number, required)

+ Request success destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/27`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjM0LCJ1aWQiOiI1M2YxZDAwZS0zYWRmLTRlYjEtOGE0ZS02ZGZiYThmOTJkMzIiLCJydWlkIjoiMWE0NjExM2QtZDIzMi00Yjg2LTg1MjgtODQxNWEwNmQ1ZDQ4In0.1PSW-naKHBgsb4O14hrdeV6V5ovqiDJ0Z0YY0WIYDk0
            Content-Type: application/json

+ Response 204

+ Request failed destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODMsInVzZXJfaWQiOjM1LCJ1aWQiOiIwNjE5M2NjYi1lNmMzLTRhMWEtYWE4YS0yMjNmMDMxNzZmZGQiLCJydWlkIjoiOWE0ODc5ZGQtNmM2Ni00NTU1LWEzYjItMzRhNjVjNmMzZTEzIn0.vKtsQk3niBNYSsu2BEm57G1aDmRx2P3Qf9n43aUnk3Y
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

+ Request not delete task
**PUT**&nbsp;&nbsp;`/v1/tasks/30`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDU0NTE5ODQsInVzZXJfaWQiOjM3LCJ1aWQiOiI5YTAwOTZhNy1lMWZiLTQzMTItOWQ0Ny02YTdkYWI2MWEzNmYiLCJydWlkIjoiZjEwYTVhMzItYzM3My00MmUxLWFjNDctNzIzOWVkYjhkMjhhIn0.x-LPqThInQm3-1cQ-mh6GezwxMNV64yu5uG1XKAUo5E
            Content-Type: application/json

    + Body

            {
              "name": "Name"
            }

+ Response 403

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Forbidden_content"
            }
