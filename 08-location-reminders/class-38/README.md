# Location Reminders - Class 38  

## User Stories (MVP)  
- As a Developer, I want to implement Login and SignUp into my application to allow the user to sign in to our application.  
- As a User , I want to have to option to sign up with Facebook or my email in the application.  
- As a Developer, I want to implement `NSNotificationCenter` to pass information between different `UIViewController` instances.  
- As a User, I want to see my location Reminders as overlays on the `mapView` to have a visual showing where my Reminder was placed.  

## Lab Assignment  
* Add the `ParseUI` framework to your application to provide the user the ability to sign up and login to your app.  
* Add the additional `PFLogInFieldsFacebook` case of `PFLogInField` enumeration to allow the user sign up with Facebook.  
* Implement using `NSNotificationCenter` to notify the `ViewController` that a new Reminder was saved to Parse. 
* In `ViewController.m`, implement a method to fetch all the `Reminder` objects saved to parse and, for today, log them to the console.  
* Add a model class for your `Reminder` by subclassing `PFObject`.  
* Add a visual map annotation wherever a reminder is added.  
  * use MKCircle to present a map overlay.  

## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `wednesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `wednesday-lab` to `master`  

### Reading Assignment (read **before** Class 39):
* Apple Documentation
  * [Region Monitoring](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/LocationAwarenessPG/RegionMonitoring/RegionMonitoring.html#//apple_ref/doc/uid/TP40009497-CH9-SW1)  
  * [Notifications Programming Guide](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/)  
  * [UserNotifications Framework](https://developer.apple.com/reference/usernotifications)  

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/0005TQgW199tOAhqmPAx-Wd8A#Week7_Day3)
