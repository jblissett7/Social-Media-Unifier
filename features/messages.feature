Feature: Display direct messages page when clicked
  As a user,
  So that I can communicate directly with all platforms in one location
  I want to see my direct messages when clicked on from the home page
  
@omniauth_test @twitter_login_vcr
Scenario: User accesses direct messages page
  Given The user is signed in and using "Twitter"
  #Given The user is on the "home" page
  When They click on "Messages"
  Then They should be redirected to the "Direct Messages" page
  
Scenario: 
  Given The user is not signed in
  When The user visits the "Messages" page
  Then They should be redirected to the "Sign In" page