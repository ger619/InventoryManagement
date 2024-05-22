
![](https://img.shields.io/badge/Microverse-blueviolet)
# This is a Inventory Management System

>This is a Inventory Management System for Giga Cypher Systems
## Link
``

``
## Video link



## ERD

![drawSQL-image-export-2024-05-22](https://github.com/ger619/InventoryManagement/assets/9010615/9589f30f-3c33-4e57-8d7f-87281dc9733a)



### Cloning the project

git clone https://github.com/ger619/InventoryManagement.git <Your-Build-Directory>
``` 
- cd InventoryManagement

- ./bin/dev
```


## Built with
- Ruby 3.1.2 on Rails 7.3.3.1
- PostgreSQL

## Prerequisites

Vscode or RubyMine
Setup

## Install
    Ruby
    Rails
    PostgreSql
    Tailwindcss
    Hotwire
    Stimulus.js

### Development Database

```
# Sign into posgresql
su - postgres

# Create user
create user 'user_name' with encrypted password 'mypassword'

# Load the schema
rails db:schema:load

#----- If you want prefer this approach
# Create the database
rake db:create

# Create database Migration
rails db:migrate
```

### Run

```
bundle install

./bin/dev
```

## Run tests
```
bundle install
rspec
```

## Authors

👤 **AbolGer**

- GitHub: [@ger619](https://github.com/ger619)
- Twitter: [@ger_abol](https://twitter.com/ger_abol)
- LinkedIn: [David Ger](https://linkedin.com/in/david-ger-426b4576)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Lifeline-Solutions/mseal-rails/issues).

## Design

Original design idea by [Flowbite](https://flowbite.com/) on Flowbite.

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.
