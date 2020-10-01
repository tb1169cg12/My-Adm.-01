require_relative 'crud'

users = [
          { username: "gitesh", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "mohit91", password: "password3" },
          { username: "rjrohit", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

        hashed_users = Crud.create_secure_users(users)
        puts hashed_users
