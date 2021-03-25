# Hustler

Hustler is a web application built with Ruby on Rails using an MVC model. Hustler is a mock application modeled after the site Fiverr, allowing users to connect and hire freelance workers for specific jobs or tasks they may need done.

> Credit to Nana Lau, who was my co-contributor on this project.

## Description

As a user, you will be able to login and/or signup. Once logged into your account - which is encrypted and protected using ![Gem](https://img.shields.io/gem/v/bcrypt?label=bcrypt&style=plastic) - users can see a full list of provided skills and freelance workers available with that skill.

Users will be able to navigate the site via built in links and the navigation bar. From the Navigation bar, users will have access to their profile page (where they can edit or delete their account), their task request history, a reviews page and a workers page where they can see a list of freelance workers that participate with Hustler.

New workers can also be added and new skills be added to and removed from their profiles. Workers can also receive reviews from a user.

> Hustler is no longer in development. There are no future plans for further development at this time. If you have an idea and would like to contribute, please feel free to reach out via email to Jakob Persons at jakob.e.persons@gmail.com

## Installation

*Installation instructions are written with the assumption that your environment is setup for use with Ruby on Rails*

1. Start by cloning the project repository.
2. Once you have cloned the repository, cd into the project directory.
3. Once in the top level of the project directory, run `rails s` to start the localhost server.
4. Check to make sure the server is running by going to http://localhost:3000 in your internet browser. If running correctly, you should see a display saying 'RUBY ON RAILS'
5. Navigate to http://localhost:3000/login which will bring you to the login/signup page. Once at this page you can either login to your current account, or sign up with a new account.
6. Upon successful login, you are free to navigate the site and explore the fun that is Hustler!

> You'll notice that we took the liberty of making names, bios, reviews, etc. a little quirky for some added fun. We encourage you to do the same!!!
