# Assignment Overview: Lab for Class 7 - Twitter Clone  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a developer, I want to utilize the Accounts framework in order to access the User's accounts stored in the iOS Device.  
 - As a developer, I want to implement the Social framework into my application to provide an easier connection to the Twitter API through one of Apple's frameworks.  
 - As a developer, I want to understand multithreading, to better understand when to update UI as well as to better understand how to properly execute network requests.  

## Technical Requirements  
 * Continue to work from the same repository.  
 * Working on a non-master branch, called, `tuesday-lab` with regular commit history  
 * Implement a new class called `API`:  
 	* Use the Accounts framework to access the user's twitter account on the device  
 	* Use the Social framework to make a request to twitter for the users home timeline `Tweets`  
 	* Use the Social framework to make a request to twitter for logged in user and create your model `User` object  
 	* Use a ranged switch statement to make sure the status code of the response is good  
		* Make sure to have individual cases for the `400-499` range, and the `500-599` range. Each of these cases should `print()` their case specific errors(either that the error is from our client, or the error is happening server-side.)  
 * Reload the `tableView` on the main thread (aka: main queue) once you are done parsing the JSON data from the request.  
 * **Stretch Goals:**  
 * Write your code to be able to handle multiple twitter accounts.  
 * Using playgrounds, and `OperationQueue`:  
 	* Demonstrate creating a serial queue.
 * Refactor your `typealias` completionhandlers, in the `API` class, to be an `Enum` holding each closure as an associated value.   

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `tuesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `tuesday-lab` to `master`  

### Reading Assignment:
* [Auto Layout](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/index.html)
* [UIActivityIndicator](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIActivityIndicatorView_Class/index.html)
* [UINavigationController](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UINavigationController_Class/index.html)
* [UIStoryboardSegue](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIStoryboardSegue_Class/)
* [NSLayoutConstraint](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSLayoutConstraint_Class/index.html)

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000uqYv8pF8GzEcQl1U3AEMqA#Week2_Day2)
