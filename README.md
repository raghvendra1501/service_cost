# README

This project is made as per the requirement shared

Create and migrate the database
<code>rails db:create</code>
<code>rails db:migrate</code>

First run seed data, it will be used to map the aws region with the names <br>

<code>rails db:seed</code>

Now daily at midnight you need to run a task <br>

<code>RAILS_ENV=<env> rails store_costs:update_rates</code>

After that you need to run the application and hit the following apis<br>

<code>'/service/AmazonCloudFront/region/us-east-1'</code>

or for by date <br>

<code>'/service/AmazonCloudFront/region/us-east-1?date=2019-12-01'</code>


