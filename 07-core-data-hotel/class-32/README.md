# Core Data Hotel: Class 32  

## User Stories (MVP)  
- As an iOS Developer, I want to implement Core Data into my applications, to allow my Model layer objects to be persisted to the device.  
- As a Developer, I want to implement a layout designed programmatically to better understand how storyboards work and to be able to build an application without the use of storyboards or xibs.  

## Technical Requirements  
* Implement Book functionality. 
  * Guests should be able to select the room they want, set both the start and end reservation dates,  and finally book it.
	* Guest name is required.
	* When selecting dates, users should not be allowed to select dates in the past for the start date.
	* Users should also not be able to book an end date before a start date.
	* Present an alert for the user if they attempt the above.
* Add Attributes to your ManagedObjectModel(MOM).
	* Change your Guest model accordingly to have firstName, lastName, and email address.
	* Update UI to include fields for lastName and email in BookVC and setup constraints.
	* Assign lastName and email to guest.

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `tuesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `tuesday-lab` to `master`  

### Reading Assignment (read **before** Class 33):  
* Apple Documentation + Other
  * [Unit Testing Overview](https://developer.apple.com/library/ios/documentation/ToolsLanguages/Conceptual/Xcode_Overview/UnitTesting.html)
  * [Introduction to NSFetchedResults Controller](http://nshipster.com/unit-testing/)

## Other Resources
* [Reading Assignments](../../Resources/ra-grading-standard/)
* [Grading Rubrics](../../Resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000fQdt4rvdN6s1yl9IyBrxRg#Week8_Day2)
