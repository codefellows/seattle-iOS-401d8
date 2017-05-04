# Location Reminders - Class 39  

## User Stories (MVP)  
- As a Developer, I want to implement region monitoring into my application to allow the user to create region-based reminders.  
- As a User, I want to be notified when I enter an area where I placed a reminder, even when the application is in the background.  
- As a Developer, I want to implement the new iOS 10 `UserNotifications` framework to present notifications to my users.  

## Lab Assignment  
* Use Region monitoring to *start monitoring* the newly placed Reminder in the `AddReminderDetailViewController`.  
* Upon entering a region, present a local notification to the user using the `UserNotifications` framework.  
* Create a method on `HomeViewController` to place all `Reminder`'s from Parse-Server, as Overlays, on the `MapView`.  
  * On first launch, your app should fetch all reminders and display them as `MKOverlay`s on the `mapView`.  

## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `thrusday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `thrusday-lab` to `master`  

## Reading Assignment  
N/A - Career Development tomorrow

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000n52A4TyAjhlmU1PRkuZF1w#Week7_Day4)