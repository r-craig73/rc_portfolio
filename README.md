# rc_portfolio

### By Ron Craig (ron.craig@comcast.net ∙ github.com/r-craig73 ∙ linkedin.com/in/craigronald)

### GitHub repository: https://github.com/r-craig73/rc_portfolio

## Description
### A portfolio using Ruby on Rails authentication describing the myth and legend...Ron Craig ;-)

## Ron's Strengths
* Over 18 years of acoustics consumer product testing and verification.  A sound quality whisperer for HP inkjet printers and Microsoft surface tablet/notebook/laptop products.
* Specializing in troubleshooting & solving problems within a team.
* Troubleshooting example: Improved an inkjet printer pen servicing noise by determining the major noise sources and mitigating the noise. Mitigating the noise is a collaboration using specialized equipment (binaural head recordings and software to analyze recordings), interaction with the engineer responsible for pen servicing and software to control and modify the servicing events. Sometimes compromises and additional testing are needed to satisfy servicing noise and performance before a certain deadline. Bottom line: sound quality is needed to avoid printer returns (lost revenue) and/or phone calls (phone call costs) due to a printer's sound.
* Improving workflow efficiency within a team.
* Improve workflow example #1: Improving the process to measure and analyze tablet/notebook/laptop touchpad noise require. Using software and programming automation and an accelerometer to trigger the event, a user can measure and generate a report for 10 products within 1 hour instead of 4-5 hours.
* Improve workflow example #2: To avoid repeating how to perform the same test for technicians and colleagues, an 'Acoustics Lab Procedures' handbook was generated saving 5-10% in workflow.

## Ron's Personal Interests
* Singing rap, RnB, soul and country karaoke songs (add pictures).
* Listening to different genres of music (rap, RnB, soul, jazz, classic rock, country, blues, anything good, etc.).
* Attending sporting events (add Timbers match pictures).  Support Portland and Philadelphia local sports (soccer, basketball and football).
* Attending live, local concerts and festivals (small to medium size stages, not the stadium size concerts).
* Enjoy casual bike rides and hikes (add pictures).
* Adult Halloween (or specific theme) costume wearer (add pictures).
* Dabbling with Python, Arduino and possible projects helping people (website TBD).

### Application instructions (assuming Mac OS)
* If you want to use Postgres for the database and not to install Rail's testing tools, create a file called `.railsrc` in your home directory (using the text editor of your choice) and add the line `-d postgresql -T`

* Clone the repository and direct your terminal into the home repository folder `Computer:steves_sock_shack user$`

* Run `$ gem install rails`

* Verify that you are using ruby-2.4.1 in your terminal(s).

* Run `$ bundle install` to install Ruby gems packages related to the Gemfile in the top level.

* Rspec setup (Unit Testing and Models): In the terminal, run the following command `$ bundle exec rails generate rspec:install`. Files will be generated in the spec folder.  In the home repository folder run `$ rspec` to view tests passing or failing.

* Database setup: Run `$ rake db:create` to generate a database. Run `$ rails generate migration action_name` generate a migration file for table manipulation. Run `$ rake db:migrate` to prepare the database. Run `$ rake db:test:prepare` to create the Active Record schema.rb file.

* Rails server: Run `$ rails server` to start the Rails server.  Navigate to `http://localhost:3000`.  Refresh the page to reload any changes to the source files.

* System dependencies
* There are so many Ruby gem dependencies. Here's a list of the dependencies used (coming soon).

Copyright (c) 2018 **_RC productions_**

MIT License
-----------
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
