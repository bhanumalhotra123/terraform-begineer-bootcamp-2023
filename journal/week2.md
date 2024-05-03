# Terraform Beginner Bootcamp 2023 - week 2

## Working with Ruby

### Bundler

Bundler is a package manager for ruby.
It is primary way to install ruby packages (known as gems) for ruby.

#### Installing Gems
You need to create a Gemfile and define your gems in that file

```rb
source "https://rubygems.org"

gem 'sintara'
gem 'rake'
gem 'pry'
gem 'puma' 
gem 'activerecord'
```

Then you need to run the 'bundle install' command

This will install the gems on the system globally (unlike nodejs which install packages in place in folder called node_modules)

A Gemfile.lock will be created to lock down the gem versions used in this project.

#### Executing ruby scripts in the context of bundler

We have to use `bundle exec` to tell future ruby scripts to use the gems we installed. This is the way we set context.

#### Sinatra

Sinatra is a micro web-framework for ruby to build web-apps.

Its great for mock or development servers or for very simple projects.

You can create a web-server in a single webserver in a single file.

https://sinatrarb.com/

## Terratowns Mock Server

### Running the web server

We can run the webserver by executing the following commands:

```rb
bundle install
bundle exec ruby server.rb
```

All of the code for our server is stored in the `server.rb` file.

# CRUD Operations in Terraform Provider Resources

Terraform Provider resources utilize CRUD operations, a fundamental concept in data management and API design. CRUD stands for Create, Read, Update, and Delete, representing the basic actions that can be performed on data.

- **Create**: Allows the creation of new resources or entities in the system.
- **Read**: Retrieves or reads existing resources from the system.
- **Update**: Modifies or updates existing resources in the system.
- **Delete**: Removes or deletes existing resources from the system.

For more information about CRUD operations, you can refer to [Wikipedia](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete).
