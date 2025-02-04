# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Common commands:

Generate model with name field:
- rails generate model Product name:string

Generate controller with method index:
- rails generate controller Products index --skip-routes (skip adding routes to configuration)

Run Migartion:
- rails db:migrate (db:rollback to revert last migration)

Kill servers:
- kill -9 pid_id

What to do: 
[INFRASTRUCTURE]:
1. Domain name and DNS setup
2. Certificate creation

[LOGO]:
Create Logo and name

[Pages]:
1. About page
2. Other important pages frame
    * Buying information
    * Delivery infromation
    * Terms & conditions
3. Filled out information for each other page
    * Buying information - when delivered etc..
    * Delivery infromation - choices for delivery, etc..
    * Terms & conditions - overall conditions

[Products]:
1. Update product record to include, price, small description, bigger description, should include pictures
2. Update product_display with new data:
    * Shows display picture, when hovered changes to different picture with small zoom
3. Create easy product editing section [create,update,delete]
    * must be possible only for admin
    * possible add multiple pictures at once:
        * How to choose displayed product picture ( first one or extra marked )
        * pictures should be dropable to box
        * where should those pictures be saved and what is the fastest option for client
    * should be hidden and not part of front html
4. When clicked on moreInfo btn, transfers to different page or larges section.
 
[SHOPING-CART]
1. Showing products / total
2. Choosing delivery method
3. Agreeing with terms & conditions, continue only when agreed (should I save some data, incase for later)
4. Asking email to send bill and having product data
5. Payments & transactions => saving if succeeded
6. Redirect to thank you page
