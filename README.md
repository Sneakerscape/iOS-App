# Sneakerscape

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Display trending sneakers, along with its image, name, colorway, and price, as well as notifying and showing users upcoming sneaker releases and links for purchases

### App Evaluation
Evaluation of your app across the following attributes
- **Category: Sneakers/Clothing**
- **Mobile: This app would be primarily developed for mobile.**
- **Story: This app will display trending sneakers, along with its image, name, colorway, and price, as well as notifying and showing users upcoming sneaker releases and links for purchases.**
- **Market: Any age group can use this app.**
- **Habit: This app could be used as often or unoften as the user wants and  depending  on what the user is looking for.**
- **Scope: First we could start with providing release dates, trends, and where to buy sneakers, but as the user base grows we could provide a method of reselling through our application.**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Users must be able to see updates on newly released sneakers in real time. 
* Updates show shoe icon, name, maker, price, etc.
* Users can click on certain sneaker icons to show stores selling them.
* Settings (Notifications, Dark Mode, Money Converter, etc.)

**Optional Nice-to-have Stories**

* Providing direct links to online stores selling recently sneakers.
* User accounts let people star certain sneakers or brands; purpose is to notify users when sneakers are released from their preferred companies.
* E-mail updates regarding any drops.
* Search feature for specific shoe brands.

### 2. Screen Archetypes

* Login Screen
   * User prompted to login through Google or regular email/password text fields.
* Register Screen
   * New users can create a new account by registering their email and password. As soon as it is created, they would be let into the home screen.
* Home Screen (Main screen for recent sneaker releases)
    * A table cell view would update whenever a new input from an API is found. Each cell has picture of shoe, brand, price, name for specific shoe, and time released.
    * Scrollable screen, meaning users can see shoes released 10-15 minutes ago.
    * 3 options on bottom of screen
        * Home Screen
        * Search Screen
        * Settings Screen
* Search Screen
    * Text input -> Able to search up brand or shoe name
* Settings Screen
    * Lets users change preferences (currency, dark mode, notifications)
    * Lets users log out.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home Screen
* Search Screen
* Settings Screen

**Flow Navigation** (Screen to Screen)

* Login Screen -> Home Screen
   * Text input for already registered users.
   * Google Login?
   * Once a user is successfully logged in, the app takes the user to the home screen.
   * **If user is logged in, it will put them in the home screen.**
* Register Screen -> Home Screen
   * If user is NOT registered with the app, they may create a new account with their credentials. Once created, they are automatically logged in.
* Home Screen -> Search Screen
    * Search screen option is located at the bottom of the screen. Users can click the screen to search for specific brands of sneakers.
* Home Screen -> Settings Screen
    * Settings screen is located at the bottom of the screen. Users can click the screen to change preferences for the application.

## Wireframes
<img src="https://i.imgur.com/eQBroGB.jpg" width=600>

### [BONUS] Digital Wireframes & Mockups
*Yet to be created!*

### [BONUS] Interactive Prototype
*Yet to be created!*

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
