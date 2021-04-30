# Project 1: BigAsk (Bookmark Organiser)

See link for Project 1, a web application called 'BigAsk' hosted on heroku here: https://big-ask.herokuapp.com/

The aim of this project was to build a web application from the ground up using the skills we have learnt in the course so far. I chose to create a bookmark organiser because throughout the course we have been provided with many links to various websites for additional reading or practice for some of the course topics and I wanted to have my personal bookmarks separated into categories so that I could quickly access the links as I need them.

I have 3 models in my web application - user, category and bookmark. I used association between all 3 of them with the user having many categories and bookmarks through categories, the categories having many bookmarks and the bookmarks belonging to a category.

I came up with the name BigAsk for my project to make it unique and memorable because my application is a simple one and I wanted to add a personal touch while not making the application too specific to my taste. I have kept the layout very simple and user friendly using Bootstrap for my nav, forms, buttons and to display the categories themselves. I also used JQuery to show and hide buttons on the show page for each category so that I didn't have to create a separate page for each bookmark's edit/delete function. There is also an Active Record Callback to create a default category once a user account is created so that users can reorganise their categories without having to re-add the bookmarks themselves. The majority of problems I ran into while creating BigAsk was mostly spelling mistakes and css formatting issues. I dropped my database twice to account for some errors and spent the last half of the day in project week adding margins and padding to display my categories and bookmarks in a visually appealing way on the page.

I used Heroku for deployment of the application on the internet. The full list of tech resources used for my project is listed below:

* HTML
* CSS
* Ruby
* JQuery
* Rails
* SQL
* Postgress
* ActiveRecord
* Bcrypt
* Bootstrap
* Heroku

This project has given me a sound confidence in all of the above and more experience with debugging a web application as well as with the use of databases.

I really enjoyed creating this application over the week. I had a lot of ideas on how I would like to see 'BigAsk' in it's final form. Below I have listed some more features I would like to add to my web application in version 2:

* A frequency tracker using JQuery to count bookmark clicks and add them to the bookmark frequency column and then totalling all bookmark clicks in the category frequency column. Then I would use the counts to create a function to order by most used to least used or top 3 and display them at the top of the page.

* A display of top 5 bookmarks (not specific to one category) in a carousel with an option for the user to add more to the carousel if they choose to.

* I would like to add at least three colour schemes that the user can choose from to personalise their BigAsk bookmark organiser.

Thank you for your interest in my project.

Katie
