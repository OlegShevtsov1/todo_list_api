

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ1OTYzNjEsInVzZXJfaWQiOjM4NSwidWlkIjoiYzhlZGI4N2MtYzExNC00Mjg0LWFkOGQtN2Q3YjYxOTEzMGQyIiwicnVpZCI6IjdjNWUxNTBiLTY0NDUtNDk1ZS1iZDg5LWQ0ZDQ0MmZmODEzYSJ9.gDMlJC4viWI-2BxmklNe8E5992BdbDccwePtwTS9tU0
            Content-Type: application/json

    + Body

            {
              "email": "ranae@barrows.ca",
              "password": "2L2Ug5U4tqH"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "SkgU8rfPIWM4wBe4xEd81SHCE+3mAmEO9R7FSogXhSlZXAVhlyhVI73ttoeUvRjuRv2l9a6LWU0NjSmrfI7aZw=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQ1OTYzNjEsInVzZXJfaWQiOjM4NiwidWlkIjoiZGYwNDI5MzgtMjgzZC00NjY2LTgxZTMtMTkxZjg2NDkzZDhkIiwicnVpZCI6ImQwY2Q3YzZiLTA3MmUtNDE3Ny04MzQxLWE1Y2FmMWJjNDBjYSJ9.yxQQ8roasTRu4RPm0HKmYmTfpmK1nhWdmHDUuL-O-2E
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            "ok"

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
              "email": "chelsey@prohaska.name",
              "password": "6JzwdrAeiTeDrL",
              "password_confirmation": "6JzwdrAeiTeDrL"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "ZMxSXR2u9xZHKJQ35yYWjTt6GUaMCHaFFIAoGKw06ZBglu/2Ty2laH3kTKn6uG/drkuFvjGliTlrJ6x2XjbIBw=="
            }
