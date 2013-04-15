OLX home-business-api-prototype
===============================

Getting things to run
---------------------

To see the mock you need ruby 1.9, and rubygems
To install dependencies you will need to install bundler (http://gembundler.com/)

```
gem install bundler
```

## Dependency installation

you can install all the dependencies by executing in the directory the following command:

```
bundle install
```

to start the server on the directory just run

```
ruby api.rb
```

## Initial Available resources

```
GET	http://0.0.0.0:4567/country/2
GET	http://0.0.0.0:4567/country/2/list
GET	http://0.0.0.0:4567/country/2/category/list
GET	http://0.0.0.0:4567/state/134
GET	http://0.0.0.0:4567/country/1/state/list
GET	http://0.0.0.0:4567/city/12345
GET	http://0.0.0.0:4567/country/1/state/5/city/list
```
