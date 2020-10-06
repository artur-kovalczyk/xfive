# Xfive.co - Recruitment Task (Wordpress)

## Description 

Convert the following designs to HTML5 / CSS3 / JavaScript / WordPress.

## Project Design

### Thumbnails

![picture](https://raw.githubusercontent.com/xfiveco/fe-wp-test-simple/master/xfive-front-end-test-thumbs.jpg)

### Overlay

![picture](https://raw.githubusercontent.com/xfiveco/fe-wp-test-simple/master/xfive-front-end-test-overlay.jpg)

# Task Requirements

 - Create project using new version custom development tool Chisel. Check out the documentation for the new version.
 - Convert design and make it responsive using your best judgement.
 - Create a hover effect for the image thumbnails.
 - Create a simple custom overlay for photos - you can use an external JavaScript library for it.
 - Allow to choose thumbnail shape from the 2 predefined shapes (circle, square) in the WordPress admin and enter enough sample images to demonstrate the effect.
 - Set up a virtual host with your project repository name (eg. yourname-fewp-test.test) so we don't have search & replace URLs when testing your project.
 - Store the whole WordPress installation into the test repository. Store a database dump to it as well and a zip with upload folder with images used in the project.

# Overview

Project files can be imported in for eg. in IDE like: 'Visual Studio Code' or 'PHP Storm'. Project files require to have 'Node JS', 'Composer' and 'Chisel' tool installed on your system. You can get 'Chisel' at: [https://www.getchisel.co/docs/development/wordpress/](https://www.getchisel.co/docs/development/wordpress/). Next or you have to do is 'npm install' to get all project dependencies and you are good to go.


## New files added or edited existing ones (specially for the task):

- **wp/wp-content/themes/xfive-chisel/inc/acf-setup.php (new added)** - 
Registered fields to add **Shape Images** to the page using **Advanced Custom Fields** plugin

- **wp/wp-content/themes/xfive-chisel/templates/page.twig (edited only)** - 
Added condition to check if there are **Shape Images** added to the page in **Admin Dashboard/Pages/(PAGE_NAME)/Edit**. If so then the **Twig Component** named **shape-images.twig** is being included on the page.

- **wp/wp-content/themes/xfive-chisel/templates/components/shape-images.twig (new added)** - 
Custom Twig Component having post content and all added in Admin Dashboard **Shape Images** imported from database.

- **src/styles/components/_tease-shapes.scss (new added)** - 
Style file for the **Shape Images**.
