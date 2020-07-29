# Portfolio Create :mag_right:

This project is an online portfolio system that facilitates users to create dynamic portfolios,
with more than one portfolio. 
There is the possibility to search portfolios by location and skill, in addition
to fixed premium portfolios at the top.


## Functionalities
- Search for portfolios by location and skills
- Creation of portfolios
- Creation of premium portfolios
- Payment method
- User registration
- Components of dynamic portfolios

## Prerequisites

> You just need to have the **docker** and **docker-compose** installed on your machine.

## Getting Started
To get the app running, run the following commands:

- Build container
```
docker-compose build
```

- Installing the gems
```
docker-compose run --rm webiste bundle install
```

- Creating the database
```
docker-compose run --rm website exec rails db:create
```

- Generating migrate
```
docker-compose run --rm website rails db:migrate
```

- Running test environment
```  
docker-compose -f docker-compose-test.yml up -d test
```

- Run the tests
```  
docker-compose -f docker-compose-test.yml exec test bundle exec cucumber
```

- Up service
```  
docker-compose up
```

## Stack
 - Ruby onRails
 - Vuejs
 - Postgres
 - Redis
 - Mailcatcher
 - Cucumber
 - Docker
 - Docker compose

## Authors

- [brandaoplaster](https://github.com/brandaoplaster)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
