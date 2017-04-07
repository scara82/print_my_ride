# README

# Print My Ride

## Concept

The simple concept for this app is to create an ecommerce portal aimed at connecting domestic 3D printer owners with CAD designers and those in need of simple 3D printed items.  The primary customer target market initially is tradespeople looking to source out of production or otherwisw unavailavle replacement parts for what would once have been considered obsolete appliances.  The finsished product will hold a database of CAD files for comminly sourced items and maintain a payment portal, including dynamic invoice generation, and a supply chain guide allowing for easy manufacture and dispatch of ordered goods.  All stakeholders will operate independantly  

Plan and Approach

## Overview

This project was never intended to be a market ready product, but was rather developed as a minimal resource interactive concept brief designed to demonstrate the viability and accessibiltiy of the product.

Integration of the full range of desired social media and location based APIs as well as a complex file managment system for CAD files was not going to be possible in the available timeframe and as such the team focused on creating a workable demonstration of the product which would be able to illustrate its potential.

The long term intent is for the app to opperate as a compettitve bidding environment in which designers and 3D printer owners can view print jobs that match their saved printer specifications and bid in competition with one another.  Printers wil have a customer definded rating and will be rated on a  per job basis

CAD designs will be persistent on the site and will alow for designers to develop a passive income stream from previously submitted designs.

Users looking to purchase will have a wide range of designs and designers available and will have the printer to designer interaction handled fo them.

## Planning

Planning was extensive and exhaustive: best communicated with images

![Alt text](http://i.imgur.com/fWw5e8y.jpg "Panel 1")
![Alt text](http://i.imgur.com/YN1XDHc.jpg "Panel 2")
![Alt text](http://i.imgur.com/BvaDYh0.jpg "Panel 2a")
![Alt text](http://i.imgur.com/cUuLnE9.jpg "Login")
![Alt text](http://i.imgur.com/NDiw7B8.jpg "Dash Plan")
![Alt text](http://i.imgur.com/n813KYO.jpg "Landing Plan")
![Alt text](http://i.imgur.com/RYgyBhX.jpg "Nav Plan")
![Alt text](http://i.imgur.com/WHsMaoI.jpg "MVP")
![Alt text](http://i.imgur.com/jDTeTU5.png "Database Plan")

The above give some insight into the time spent discussing and discarding initially desired elements in favor of a simply styled demo page


## Core Features

Considering the intent of the project the core features are relativly straight forward:

Creating an effective demonstration CRUD application allowing for the creation, and exploration of a pre-loaded database with a view to pitching the site to potential contractors(3D priter owners, CAD designers, small business owners in the repairs/trades sector).

The App displayes a simple description/image/buy format to potential customers via the landing page and will be styled in a simple, high visibility, low impact manner to reduce 'clutter' and appeal to people relativly unfamilier with standared ecommerce.

The dashboard will contain the minimum possible required information for a customer to view and purchase

Paypay and Socil Media integration will make login and payment trackng very simple(to be integrated).

## User Workflow

User interaction is designed to be simple and direct: the site is dominated by a perisitant, unambigious navigation bar which allows for viewing available CAD templates, viewing an 'about' page(which will contain specific information pending advice from 3d Printer owners) and searching for specific designs; all further interaction redirects to account creation.

The sign in portal accepts a full name, email and password and directs the user to the sites 'dashboard'.

The sign up portal differentialtes between a customer and a content creator(3Dprinter/CAD Designer/3D Scannner): the sign up portal accepts a full name, email and passsword. Once accepted the portal rediects to the Dash.

On the profile page users are able to select the 'Edit" option and will be directed to an edit page which allows them to fill a variety of fields including street address, postcode, suburb, children, age of children(indicated by a checkbox defined range) as well as a biography and a checkbox indicating their interest in hosting childcare creches at their home(for future features)

## Technologies Used

### Front End

HTML,CSS,Jquery,Handlebars,

### Back End

Ruby on Rails - v.5

### Database

PostgreSQL Installation

The web app was packaged using the bundler; it was then deployed to heroku. Tables were dumped from my local database and used to overwrite the existing heroku tables. The app went online and is available to end users.

## Unsolved Problems / Incomplete Features

Haven't touched javascript features;these will focus primarily on social media APIs, Google Map in app navigation integration, adding dynamic education resource content and adding a more reactive GUI(replace checkboxes,etc).

Haven't completed password change in main.rb

Lack of meanigful client and server side data validations

Client to Client searching is not active; 'get' and 'post' requests needed in main.rb.

Auto-complete of postcodes, suburbs and regions usind "Locations" SQL is yet to be implemented.

Further CSS styling and images to be added to front end, including .

Facbook login API to be added.

Filters: ability to filter search based on desired product - redundant without a complex file managment system to manage large CAD volume

ScaleAPI- API used to submit an image and return data based on the image and attached directions(excluded due to cost)

Project cards - ability to combine multiple jobs into one project -  to be added as site grows

Upvotes - ability to upvote specific designs as per Stackoverflow(redundant without a larger CAD database)

Invoice Generator - requires ABN and propritary software

Payment Portal - requires ABN and propritary software

File Managment System - - requires large CAD volume and propritary software

Profile Detail/Edit -  present but deactivated due to bugs

3D Scanning Field - to be added as a Producer attribute

Detailed Bidding Procss - TBC

Authentication Email return - requires server we don't have


## Project Live Link

https://pure-falls-10346.herokuapp.com/creators/home Contact GitHub API Training Shop Blog About © 2017 GitHub, Inc. Terms Privacy Security Status Help
