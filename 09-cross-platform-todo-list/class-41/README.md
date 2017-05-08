# Cross-platform Todo List - Class 41  

## User Stories (MVP)  
- As a Developer, I want to implement a Realtime Database as the backend for my application, to allow the user to get any updates made on the server almost immediately, depending on their network connectivity.  
- As a User, I want to be able to be able to see any changes as soon as possible to my data that has changed or been updated in the application.  
- As a Developer, I want to implement a container view controller to allow the user to create new `Todo` items.  
- As a Developer, I want to implement login and sign up functionality in my application to be able to track which `Todo`s belong to specific users.  

## Lab Assignment  
* Create a new `Single View Application` in Objective-C.  
* Add the needed `Firebase` frameworks to your application  
* Using `Firebase Auth`, implement a `LoginViewController` to handle the `login` logic for your application.  
	* Users should be able to `login` and `sign up` using their email and a password.  
	* When the application first launches, it should check if there is currently a user logged in.  
	* If the user enters wrong credentials, or has not created an account, they should be presented with an appropriate alert prompting them to try again or sign up.  
* Implement a `Log Out` button, to `logout` the current user when pressed.  
	* This button should be implemented as the NavigationItem's **Left** barButtonItem either in Storyboard, or programmatically.  
* Implement a custom container view controller, called `NewTodoViewController` on your `HomeViewController` to handle the logic for creating new `Todo` items.  
	* The user should be able to create a todo with *at least* the following information: 
	 	* Todo - `Title`  
		* Todo - `Content`  
* Implement a `+` button as the NavigationItem's **Right** barButtonItem that animates the container view open/closed.  
	* The design of this is up to you but a simple implementation would be to animate the containerView's height constraint.  
* In `HomeViewController` implement fetching `Todo` items from `Firebase` and setup listening for updates to the `Database` JSON.  
* In `HomeViewController` implement a `UITableView` to present the `Todo`'s  as a list to the user.  
* Upon creating a new `Todo` in your `NewTodoViewController`, upload the new `Todo` item to the `Firebase Database`.  
	* This should for the `HomeViewController` to be notified of the updates to the database JSON and update the `UITableView` to reflect the new `Todo`.  
* Create at least 1 of your own custom NSError domains with corresponding error codes.  

### Stretch Goals  
* Building on the `login` logic, implement the `sign in` logic for your application.  
 	* This can be implemented in the `LoginViewController`, or in another `UIViewController` subclass called `SignupViewController`.  
	

## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `monday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `monday-lab` to `master`  

## Reading Assignment:(read **before** Class 42)  
* Programming in Objective-C
  * **Chapter 13:** Underlying C Language Features : Arrays, Functions
* Other Articles
  * [WatchKit](http://nshipster.com/watchkit/)
  

## Other Resources
* [Reading Assignments](../../Resources/ra-grading-standard/)
* [Grading Rubrics](../../Resources/)
* [Lecture Slides](https://www.icloud.com/keynote/0zPetjTZEmbhVKhEj-Gf7pkVQ#Week9_Day1)
