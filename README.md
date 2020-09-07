# RoR - Learn Rails
#### Learn Rails - Ruby on Rails APP 

Learning Rails with a hands-on tutorial from [learn-rails.com](http://learn-rails.com/).

_____

## :rocket: Tech Stack

- [Rails](https://rubyonrails.org/) as webapp framework;
- [SendGrid](https://sendgrid.com/) for contact mailing;
- [MailChimp](https://mailchimp.com/) for newsletter mailing;
- [highvoltage](https://github.com/thoughtbot/high_voltage) as static page 'generator';
- [Heroku](https://www.heroku.com/) as deploy platform.


## 💻 About this Project

This Web APP was built using Rails 6. 
The example application introduces some basic concepts about Rails development and integrates with 3rd party services to provide the bare-minimum needed for a small business website. All required services have a free-tier that must fullfil the basic usage.

To find more about this project, check [RailsApps' GitHub](https://github.com/RailsApps/learn-rails)

## :wrench: TODO
- Analytics
- Testing
- Heroku link
- Improve design
- ...

_____



##### environment variables for deployment

With Rails 6, the secrets file is deprecated. The framework now uses a encrypted credentials file. So for deployment only environment variables were used. To create them with the heroku CLI, type:

```bash
$ heroku config:add SENDGRID_USERNAME='example'
$ heroku config:add SENDGRID_PASSWORD='secret'
$ heroku config:add MAILCHIMP_API_KEY='my-key'
$ heroku config:add MAILCHIMP_LIST_ID='mylistid'
$ heroku config:add OWNER_EMAIL='me@example.com'
$ heroku config:add DOMAIN_NAME='myapp.herokuapp.com'
``` 