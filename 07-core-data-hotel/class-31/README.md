# Core Data Hotel: Class 31  
## User Stories (MVP)  
- As an iOS Developer, I want to implement Core Data into my applications, to allow my Model layer objects to be persisted to the device.  
- As a Developer, I want to implement a layout designed programmatically to better understand how storyboards work and to be able to build an application without the use of storyboards or xibs.  
- As a Developer, I want to implement my own Auto Layout class to make sure that my programmatically designed interface still uses the constraint-based auto layout for positioning of elements.  

## Technical Requirements  
* Create a new project called `Core Data Hotel` for this week and do today's work on a `monday-lab` branch.  
* Implement Core Data into the application to persist data between app launches.  
	* Setup your ManagedObjectModel with entities for Hotel >> Room >> Reservation > Guest  
	* Seed your Core Data database with a few hotels and hotel rooms from the provided `Hotels.json`.  
* Create a table view based hotel view controller. This should show the list of hotels  
* Upon selecting a hotel, push to RoomsViewController, which shows all the rooms of that hotel in another table view.  

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `monday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `monday-lab` to `master`  

### Reading Assignment (read **before** Class 37):  
* Apple Documentation  
  * [NSDateFormatter](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSDateFormatter_Class/)  
  * [NSPredicated - NSHipters](http://nshipster.com/nspredicate/)  

## Other Resources  
* [Reading Assignments](../../Resources/ra-grading-standard/)  
* [Grading Rubrics](../../Resources/)  
* [Lecture Slides](https://www.icloud.com/keynote/0KF1EHcCYjQlGj3VBCWdoyJaQ#Week8_Day1)  
