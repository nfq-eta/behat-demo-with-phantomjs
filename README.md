# Behat demo with PhantomJS

Running the application:
`docker-compose up -d`

SSH into app container:
`docker exec -it behat_web bash`

Run the tests with PhantomJS:
`bin/behat -p phantomjs`
