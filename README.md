# Behat demo with PhantomJS

Running the application:
`docker-compose up -d`

SSH into app container:
`docker exec -it behat_web bash`

Install dependencies via Composer:
`composer install`

Run the tests with PhantomJS:
`bin/behat -p phantomjs`
