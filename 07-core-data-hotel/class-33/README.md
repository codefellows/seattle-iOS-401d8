# Core Data Hotel: Class 32  

## User Stories (MVP)  
- As an iOS Developer, I want to implement Core Data into my applications, to allow my Model layer objects to be persisted to the device.  
- As a Developer, I want to implement a layout designed programmatically to better understand how storyboards work and to be able to build an application without the use of storyboards or xibs.  
- As a User, I want to be able to search my existing reservations, to see how many rooms I have booked.  
- As a Developer, I want to implement Unit Tests into my application to ensure that everything is working as expected on a consistent basis.  

## Technical Requirements  
* Create a `HotelService` class that should abstract and your application's business logic:  
  * booking reservations  
  * checking availability for `Room`s  
* Add UnitTests to your project. Write 5 `UnitTests` for your model containing at least 10 unique assertions. What you test of the Model is up to you.   
* Implement a `LookUpRerservationController` as a `UIViewController` subclass.  
  * implement a `tableView` that displays all booked reservations.  
  * This controller should implement a `UISearchBar` to allow the user to search `Reservations` by guest name.  
* Implement the `lookUpButton` on `ViewController` to transition to this `LookUpRerservationController`.  
* Implement NSFetchedResultsController in your `AvailabilityViewController` as a replacement our `NSArray` property for `availableRooms`.  

### Stretch Goals  
* Create a `CoreData` class that should abstract away Core Data from your `UIViewController`s:  
  * accessing the `ManagedObjectContext` to save and fetch from Core Data.  
  * Inserting new `Entities`  
  * All Core Data related logic  

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `wednesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `wednesday-lab` to `master`  

### Reading Assignment (read **before** Class 39):
* Apple Documentation + Other
  * [Core Data Migrations - OBJC](https://www.objc.io/issues/4-core-data/core-data-migration/)
  * [Using iCloud with Core Data - Apple](https://developer.apple.com/library/ios/documentation/DataManagement/Conceptual/UsingCoreDataWithiCloudPG/Introduction/Introduction.html)
  * [Fabric for iOS](https://get.fabric.io/ios?locale=en-us)

## Other Resources
* [Reading Assignments](../../Resources/ra-grading-standard/)
* [Grading Rubrics](../../Resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000iXofZ5F04tbkhY8euhC4Cw#Week8_Day3)
