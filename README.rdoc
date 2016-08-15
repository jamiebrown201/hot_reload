# Hot reload

A rails app testing out a hot reload pattern on feature toggling.

## Set up
1. Clone the repo
2. Run `bundle install`
3. Run `rails s`
4. Go to `http://localhost:3000/`
5. To toggle button go to `config/config.yml` and change the boolean next to feature under development then refresh.


The hot reloading implementation can be found in `config/initializers/feature.rb`. Not the most appropriate home for it but only temporary.
