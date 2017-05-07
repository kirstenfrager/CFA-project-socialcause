
**Getting Started**
-------------
**INFLUENCE THIS** is a two sided market place platform entirely built with Ruby on Rails. It is a platform which specialises in charity and influencer collaboration.

----------

### Concept

INFLUENCE THIS hosts talent of the digital age; each with an extensive reach and expertise in their chosen field. These influencers develop next-generation content across different sectors which is seen, shared and liked worldwide. This platform allows them to access their extensive reach and have their expertise in their chosen field auctioned off to charity.

What this means:

- Tha platform allows 'influencers' to register an account; at the moment the platform only caters to photography influencers.
- These 'influencers' can upload their photography content onto the site and start an auction on the item
- 'Users' are able to sign up for an account as well and can then auction on these items with bids
- The 'user' with the highest bid wins the auction and pays for their item with stripe payments

----------

Requirements
-------------

For this project the following requirements had to be met:


>- Use postgresql database in development.
>- Use an API
>- Use environmental variables to protect API keys etc.
>- Implement a payment system for your product
>- Send transactional emails (eg. using Mailgun).
>- Internal user messaging system.
>- Type of searching, sorting and or filtering capability.
>- File uploading capability (eg. images).
>- Authentication
>- Authorisation
>- Admin dashboard
>- Teting with Rspec

----------

**Getting Started**
-------------

#### Starting a new Rails Application
Terminal Commands:
```ruby
$ rails new <projectname> --database=postgresql
```
```ruby
$ rake db:create
```
```ruby
$ rake db:migrate
```
To check  if your rails application is running:
```ruby
$ rails s
```
#### Gem Installations

Within the rails project, folder  *Gemfile* the following gems were installed:

| ~    | Gems | 	 |
| :------- | ----: | :---: |
| rpsec | stripe |  materialize-form   |
| devise | ransack  |  materialize-sass  |
| rolify    |  friendly_id  |  omniauth-facebook  |
| pundit     |   will_paginate |  paperclip-cloudinary |
| paperclip    |  simple_form  | jquery-datetimepicker-rails  |


----------
**Design Journey/Process**
-------------

User Stories:

![Trello User Stories](https://lh3.googleusercontent.com/V8KVsDm3yyw2-ZoaDIHGH_oh0NAf_70Wg5KYLSvpcWP6qxFGU08gPb4yntsBzpB1Ig0bLd8=s0 "TrelloInfluenceThis.png")

Wireframes:

![Wireframes](https://lh3.googleusercontent.com/-MeL7blK2nHA/WP70es5z8bI/AAAAAAAAAD4/uY4J5upPWdMv0jH0Jyf6TI34lCrFaSAlwCLcB/s850/IMG_1117.JPG "IMG_1117.JPG")

----------
**Platform Screenshots**
-------------
Home Page (mobile view):

![Mobile Version-Home Page](https://lh3.googleusercontent.com/-tBczEQyPyWQ/WP9OYfyJ75I/AAAAAAAAAEg/i_bEdp8Z1X48b7poV9acLaSWeW0MnwcCACLcB/s900/FullSizeRender+%25282%2529.jpg "FullSizeRender &#40;2&#41;.jpg")

Auction Page Listing:

![Auction Listing](https://lh3.googleusercontent.com/-VXH7DWwOmYc/WQ6bhGMMBVI/AAAAAAAAAJI/-fUGZ-2tP3EHREBoIBmgpVDqJCf6KT0MACLcB/s800/Screen+Shot+2017-05-07+at+1.57.12+pm.png "Screen Shot 2017-05-07 at 1.57.12 pm.png")

About Page:

![About Us](https://lh3.googleusercontent.com/-YJxDu7N67Xo/WQ6bnykyBLI/AAAAAAAAAJQ/DZABrScLSIMve8bUkCwYnRfGe5lUISKFACLcB/s800/Screen+Shot+2017-05-07+at+1.57.34+pm.png "Screen Shot 2017-05-07 at 1.57.34 pm.png")

Contact Page:

![Contact Page](https://lh3.googleusercontent.com/-pN-F9Admkk8/WQ6buNd_0VI/AAAAAAAAAJY/9gBF6JyAsH010ZONRdM1FE_EtSSQtGNkgCLcB/s800/Screen+Shot+2017-05-07+at+1.57.53+pm.png "Screen Shot 2017-05-07 at 1.57.53 pm.png")

Admin Messenger:

![Admin Messenger](https://lh3.googleusercontent.com/-E1HZlx1Zgyg/WQ6ca3ALDVI/AAAAAAAAAJ0/kyVKL4a22KQ1jEZCJZApCW0Da6eLGTxSQCLcB/s800/Screen+Shot+2017-05-07+at+2.02.28+pm.png "Screen Shot 2017-05-07 at 2.02.28 pm.png")

----------
**Future Additions**
-------------

> **Increase Auction Options**

> Target a wider range of social media influencers:
>- Youtube
>- Beauty bloggers
>- Vloggers etc
> Allow these influencers to auction off services, not just items:
> - Beauty master classes
>- Photography sessions
>- "A day with" etc

> **Charity Integration**

> Better integration of the charity involvement:
>- Clearer styling and writing as to which charity the money is going to
>- Potential option for 'influencer' or 'user' to choose which charity the money goes to
>
> **Consumer Dashboard/Cart**

> Have a dashboard for the users to display:
>- Items they are currently bidding on
>- Items they have won
>- Payments to be completed on items
>- Delivery details

----------
**Current Bugs**
-------------

>- authenticate_before actions need to be revised; errors due to two devise models
>
