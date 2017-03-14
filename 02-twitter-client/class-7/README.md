# Week 2 - Class 2
## Homework
* Implement a new class called `API`:
	* Use the Accounts framework to access the user's twitter account on the device
	* Use the Social framework to make a request to twitter for the users home timeline
	* Use the Social framework to make a request to twitter for logged in user and create your model User object
	* Use a ranged switch statement to make sure the status code of the response is good
	* All `completions` should have an optional `error` String as a parameter. If there is an `error`, return its localized description in the completion.
* Reload the `tableView` on the main thread (aka: main queue) once you are done parsing the JSON data from the request.
* Using playgrounds, and `OperationQueue`:
	* Demonstrate creating a serial queue.
* **Bonus:**
	* Write your code to be able to handle multiple twitter accounts.

### Reading Assignment:
* [Auto Layout](https://developer.apple.com/library/watchos/documentation/UserExperience/Conceptual/AutolayoutPG/Introduction/Introduction.html)
* [UIActivityIndicator](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIActivityIndicatorView_Class/index.html)
* [UINavigationController](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UINavigationController_Class/index.html)
* [UIStoryboardSegue](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIStoryboardSegue_Class/)
* [NSLayoutConstraint](https://developer.apple.com/library/mac/documentation/AppKit/Reference/NSLayoutConstraint_Class/index.html)

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000uqYv8pF8GzEcQl1U3AEMqA#Week2_Day2)
