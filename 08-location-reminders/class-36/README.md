# Location Reminders - Class 36  

## User Stories (MVP)  
- As an iOS Developer, I want to implement Parse-Server into my application, as an alternative to Apple's CloudKit.  
- As a Developer, I want to implement a mapView into my application, to allow the user a way to visualize different locations they would like to set reminders at in the future.  

## Lab Assignment  
* Create a new project called `LocationReminders` in Objective-C and get the git repository setup on GitHub.  
* Deploy a Parse-Server backend to Heroku.  
* In `LocationReminders` Create a new `UIViewController` subclass called `HomeViewController`.  
* In storyboard, setup the layout of `HomeViewController` to have a `MapView` with the following constraints.  
  * Centered Horizontally in Container
  * Centered Vertically in Container
  * 70% of the superview Width
  * 70% of the superview Height
* Drag out 3 buttons underneath the `mapView`.  
* Each button should refocus the map to a different location of your choice.  

## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `monday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `monday-lab` to `master`  

### Reading Assignment (read **before** Class 32):
* Programming In Objective-C
  * **Chapter 8:** Inheritance
* Apple Documentation
  * [CoreLocation](https://developer.apple.com/reference/corelocation?language=objc)    
  * [UILongPressGestureRecognizer Review](https://developer.apple.com/reference/uikit/uilongpressgesturerecognizer?changes=latest_minor)  

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000e-ROI5X3oeYQ3f_MUzdzgA#Week7_Day1)