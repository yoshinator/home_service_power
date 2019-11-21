# README

Home Service Power is a web application that allows small businessess to join a market to provide a list of 
all the services they provide to all the cities in that market. The primary feature is to automatically 
create seo optimized pages from templates for the services they provide mixed with a list of all the cities 
in that particular market. At the moment site admins need to add a business and email to the database. 
A user can then finish registering by visiting /domain.com/auth/google_oauth2 which uses Omniauth 
for Authentication and then the user is authorized on the backend to only view leads, users, services and 
market avaialbe for their business. 

Templates for services can only be created by users with the attribute super_user. users with the 
atttribute admin add more users, markets or services to their business. Service's are created using a 
model called block that users Action Text to add rich text to the content. Each of the businesses has 
their own lead form that creates leads for that business and also sends an email to the email the 
business provided. Would like to hook into Ringcentral api to also send text message to number associated
with the business.

# Configuration
## Set up omniauth for Google 

* visit [Google cloud platform](https://console.cloud.google.com/apis/) create a project and from the hamburger go to the apis menu Create and Oauth credential save your client id and client secret you will need to these to the project. Store those variable as ENV Variables in your login profile as GOOGLE_CLIENT_ID and GOOGLE_CLIENT_SECRET. 

* Add all the domains the app will hosted on to the Oauth consent screen. 
* Add the call back to each of these of domains. Make sure you add the call back url to Google. 
  
  these are the routes for auth
  ``` ruby 
    get "auth/:provider/callback", to: "sessions#googleAuth"
    get "auth/failure", to: redirect("/")
    get "/logout", to: "sessions#destroy"
  ```

## Setting up Action Mailer with GMAIL and or Send Grid.
* TODO:



# Database creation

* TODO: Database initialization

* TODO: How to run the test suite


* Services (job queues, cache servers, search engines, etc.)

# Deployment instructions
* TODO:
* ...
