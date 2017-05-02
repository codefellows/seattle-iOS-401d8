# Location Reminders - Class 37  

## User Stories (MVP)  
- As a Developer, I want to implement Core Location into my Application, to allow my users to see their location on a `MKMapView`.  
- As a User, I want to be able to drop a pin on the `MapView` to create a new Reminder for that location.  
- As a Developer, I want to practice *Single Responsibility* by abstracting away the `Core Location` logic of my application, into a `LocationController` class.  

## Lab Assignment
* Create a `NSobject` subclass called `LocationController` to manager the `CoreLocation` logic.  
	* `LocationController` should be a singleton and should have a private `init`.  
	* `LocationController` should have the following properties:  
		* `@property (strong, nonatomic) CLLocationManager *locationManager;`
		* `@property (strong, nonatomic) CLLocation *location;`
		* `@property (weak, nonatomic) id delegate;`
* Create `LocationControllerDelegate` protocol. The protocol should have the following method:  
	* `- (void)locationControllerUpdatedLocation:(CLLocation *)location;`  
* Conform `HomeViewController` to the `LocationControllerDelegate` and implement the required method above to receive location updates.  
* Using `Core Location`, display the users location on the `mapView`.
* Add a long press gesture to the `mapView`.
* On long press, an annotation should be added to the `mapView`, which has a callout with an accessory button.
* When the user presses the accessory button, segue to a `AddReminderDetailViewController`.  
* `AddReminderDetailViewController` should have 2 `UITextFields`, to allow the user to input a Reminder `name` as a NSString, and a Reminder `Radius` as an NSNumber. We will be building out the `Reminder` class tomorrow.  

## Stretch Goals  
* Make a function to randomize the Pin color of the annotations when placed on the map.  
* Create a new `UIViewController` subclass called `LocationPresetsViewController`.  
	* Refactor the `HomeViewController` to have 1 button instead of 3. This button should present `LocationPresetsViewController` modally.  
	* `LocationPresetsViewController` should have a `UITableView` with each cell representing a preset location that, when clicked, dismisses the `LocationPresetsViewController` and shows the selected location on the `HomeViewController` `mapView`.  

	
## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `tuesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `tuesday-lab` to `master`  

### Reading Assignment (read **before** Class 38):  
* Programming in Objective-C  
  * **Chapter 10:** More on Variables and Data Types  
* NSHipster Article  
  * [NSNotificationCenter](http://nshipster.com/nsnotification-and-nsnotificationcenter/)  

## Other Resources  
* [Grading Rubrics](../../resources/)  
* [Lecture Slides](https://www.icloud.com/keynote/0002PSxT891quC_xyaHmdrCYg#Week7_Day2)  