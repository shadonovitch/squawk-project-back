# squawk-project-back
A Flask Back-End for SquawkProject

# Installation
Clone, install the dependencies, then run the project:
```bash
$ git clone git@github.com:/shadonovitch/squawk-project-back
$ pip install -r requirements.txt
$ python3 squawk/app.py
```

Test the project:
```.env
$ nose tests
```


# Current API
```api
POST /auth + {email, password} => 200, 400, 404
POST /register + {username, email, password}
POST /source + JWT + {link, name} => 201 + source_id, 400, 401 
GET /sources + JWT => [{link, name}, ...]
```

# Objectives
This backend should support the SquawkProject. It is a REST API that will be used by
[SquawkProject Frontend](https://github.com/shadonovitch/squawk-project-front) and
[SquawkProject Desktop](https://github.com/shadonovitch/squawk-project-desktop).  
The main features to be implemented are :
 - [ ] User creation and authentication
 - [ ] CRUD: Squawk Sources
   * A RSS or REST link to retrieve content
 - [ ] Get the list of Squawk Sources
 - [ ] Get the content of a given Squawk Source

![SquawkProject](https://i.imgur.com/Z3VGJ01.png)
