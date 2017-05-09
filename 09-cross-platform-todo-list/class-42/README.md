# Cross-platform Todo List - Class 42  

## User Stories (MVP)  
- As an iOS Developer, I want to implement WatchKit into my application, to better support more platforms that my users are using.  
- As an iOS Developer, I want to implement a TVOS target into my application, to again better support the devices my user's are using.  
- As a user, I want to be able to use multiple platforms to access my todo list, to have my data more accessible to me.  

## Lab Assignment  
* Add a WatchKit target to your application to support the Apple Watch.  
  * Implement a table to display a list of todos.  
  * When the user taps on a Todo on the watch this should present another WKInterfaceController that displays the details about the selected Todo.  
* Add a TVOS target to your application to provide support for Apple TV.  
  * Create a single view application that uses one `ViewController` to display a `tableView` of todos.  
  * When the user clicks on a Todo on the TV this should present another `UIViewController` that displays the details about the selected Todo.  
* In your iOS Application, embed the `UINavigationController` in a `UITabBarController`, with 1 additional tab.  
* Implement a new `UIViewController` subclass that displays completed Todo's on the new tab of the `UITabBarController`. This will be more challenging then it seems since we will need to make updates to our `Todo` model as well as the Firebase Database. Also, Booleans are not supported so, if going in this direction, you will need to use a NSNumber value of `1` or `0` to represent a completed Todo in the Firebase Database.  
* Implement the ability to **Delete or Complete** a Todo Item from the iOS application.  

## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `tuesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `tuesday-lab` to `master`  

### Reading Assignment (read **before** Class 43):
* Programming in Objective-C
  * **Chapter 13:** Underlying C Language Features: Blocks, Structures

## Other Resources
* [Reading Assignments](../../Resources/ra-grading-standard/)
* [Grading Rubrics](../../Resources/)
* [Lecture Slides](https://www.icloud.com/keynote/0gQzFErELcn3H6pGrvn44e1vg#Week9_Day2_copy)
