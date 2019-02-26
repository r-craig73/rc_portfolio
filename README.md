# rc_portfolio

### By Ron Craig (ron.craig@comcast.net ∙ github.com/r-craig73 ∙ linkedin.com/in/craigronald)

### GitHub repository: https://github.com/r-craig73/rc_portfolio

## Description
### A portfolio using Ruby on Rails authentication describing the myth and legend...Ron Craig ;-)

## Ron's Skills
* Over 16 years of acoustics consumer product testing and verification.  A sound quality whisperer for HP inkjet printers and Microsoft surface tablet/notebook/laptop products.
* Experience example: Hewlett-Packard, 2001-2016, Microsoft: 2016-2017
* Specializing in troubleshooting & solving problems within a team.
* Troubleshooting example: Improved an inkjet printer pen servicing noise by determining the major noise sources and mitigating the noise. Mitigating the noise is a collaboration using specialized equipment (binaural head recordings and software to analyze recordings), interaction with the engineer responsible for pen servicing and software to control and modify the servicing events. Sometimes compromises and additional testing are needed to satisfy servicing noise and performance before a certain deadline. Bottom line: sound quality is needed to avoid printer returns (lost revenue) and/or phone calls (phone call costs) due to a printer's sound.
* Improving workflow efficiency within a team.
* Improve workflow example #1: Improving the process to measure and analyze tablet/notebook/laptop touchpad noise require. Using software and programming automation and an accelerometer to trigger the event, a user can measure and generate a report for 10 products within 1 hour instead of 4-5 hours.
* Improve workflow example #2: To avoid remembering how to perform the same test for technicians and colleagues, an 'Acoustics Lab Procedures' handbook was generated saving 5-10% in workflow.

## Ron's Interests
* Singing Karaoke: Singing rap, RnB, soul and country karaoke songs (add pictures).
* Passionate about music: Listening to different genres of music (rap, RnB, soul, jazz, classic rock, country, blues, anything good, etc.).
* Attending live sporting events: Attending sporting events (add Timbers match pictures). Supporting Portland and Philadelphia professional and college sports (soccer, basketball and football).
* Attending live concerts: Attending live concerts and festivals (small to medium size shows, not the stadium size concerts).
* Bike rides and hikes: Enjoying casual bike rides and hikes (add pictures).
* Wearing costumes: Adult Halloween (or specific theme) costume wearer (add pictures).
* If money and time were limitless...: I would consider traveling across the USA and globe-trekking (hopefully). Tinkering with Python, Arduino hardware (LED lights & other sensors) and volunteering/helping people through technology.

## User stories
- [x] As a user, I would like to log into the site (authentication: email and password), so that I can view the skills and interests.
- [x] As a user, I want to see my login information at the top of the page with an option to log out.
- [x] As a user, I want to be able to cancel my account.
- [ ] As a user, I want to add comments to skills and interests.
- [ ] As a user, I want to CRUD-L functionality to my comments.
- [x] As an administrator, I want to deny non-users to Create, Update and Delete skills and interests.
- [x] As an administrator, I want to CRUD-L functionality to all skills.
- [x] As an administrator, I want to CRUD-L functionality to all interests.
- [ ] As an administrator, I want to CRUD-L functionality to all comments.
- [ ] As an administrator, I want to be able to delete users, if necessary.
- [ ] As an administrator, I want to be able to make other users administrators.
- [ ] As an administrator, I want to add scopes to add interesting photos, comments, etc.

#### Learning lessons
* Bootstrap-sass v3.4.x: Use thumbnail instead of cards.
* Devise: Reading Devise documentation.
* More Devise: 'User must exist' issue! (add user_id column to connect one-to-many relationships between user and skills/interests).

### Application instructions (assuming Mac OS)
* If you want to use Postgres for the database and not to install Rail's testing tools, create a file called `.railsrc` in your home directory (using the text editor of your choice) and add the line `-d postgresql -T`

* Clone the repository and direct your terminal into the home repository folder `Computer:steves_sock_shack user$`

* Run `$ gem install rails`

* Verify that you are using ruby-2.5.1 in your terminal(s).

* Run `$ bundle install` to install Ruby gems packages related to the Gemfile in the top level.

* Rspec setup (Unit Testing and Models): In the terminal, run the following command `$ bundle exec rails generate rspec:install`. Files will be generated in the spec folder.  In the home repository folder run `$ rspec` to view tests passing or failing.

* Database setup: Run `$ rake db:create` to generate a database. Run `$ rails generate migration action_name` generate a migration file for table manipulation. Run `$ rake db:migrate` to prepare the database. Run `$ rake db:test:prepare` to create the Active Record schema.rb file.

* Rails server: Run `$ rails server` to start the Rails server.  Navigate to `http://localhost:3000`.  Refresh the page to reload any changes to the source files.

* Authentication setup: Add gem 'devise' to your Gemfile and bundle `$ bundle update`. Run `$ rails generate devise:install` to create additional files. Run `$ rails generate devise user` to create a migration file, model and spec model files and a route for users.  Run migration `$ rake db:migration` to update the database table. Run `$ rails generate devise:views` to automatically add views for registering and signing in. Finally, restart Rails server.

* System dependencies: There are soooooo many Ruby gem dependencies. List of the dependencies coming soon.

Copyright (c) 2019 **_RC productions_**

MIT License
-----------
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
