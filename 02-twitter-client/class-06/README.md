# Assignment Overview: Lab for Class 6 - Twitter Clone  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a developer, I want to represent User's Tweet's in a tableView as a list, to fully understand how tableViews are composed.  
 - As a developer, I want to learn how to build the UI for an application, to better understand how UIKit works.  
 - As a developer, I want to practice implementing the delegation process for tableViews, so that I can later put that to practice with other classes in iOS.  

## Technical Requirements  
 - New repository properly set up with a license and README, and cloned to local machine  
 - Working on a non-master branch, with regular commit history  
 - Create Model objects including a class for `Tweet` and `User`.  
 - Organize your files in Xcode into proper MVC groups.  
 - Create your JSONParser class. Use the JSONParser class to parse the `tweet.json` file into `Tweet` objects.  
 	- The `tweet.json` file is included in this repository located here: [Lecture Resources](lecture/tweet.json)  
 - Display tweets in a tableView. Do **not** use the same `Basic` cell style we used in class, instead use `Subtitle` to show the User's `name` String.  
 - Assign `ViewController.swift` to be the `dataSource` of `tableView` **programmatically**.  
 - Assign `ViewController.swift` to be the `delegate` of `tableView` and implement the `tableView(_ tableView:, didSelectRowAt indexPath:)` method. When a user clicks on a specific cell, `print()` the `indexPath.row` to the console.  
 - **Optional Coding Challenge:**  
 	- Write a function that reverses an array  

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `monday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `monday-lab` to `master`  

### Reading Assignment:  
* Apple Documentation:  
	* [Accounts Framework](https://developer.apple.com/reference/accounts)  
	* [Social Framework](https://developer.apple.com/reference/social)  
	* [OperationQueue](https://developer.apple.com/reference/foundation/operationqueue)  
* General Concepts:  
	* [Concurrency](https://www.pluralsight.com/blog/software-development/concurrency-swift-3)  
	* [HTTP Response Codes](https://www.flickr.com/photos/girliemac/sets/72157628409467125/)  
* Swift Programming Guide:  
	* [Closures](http://fuckingswiftblocksyntax.com/)  

## Other Resources  
* [Grading Rubrics](../../resources/)  
* [Lecture Slides](https://www.icloud.com/keynote/000JOeuDHWuUbUJrSdhFhQJcg#Week2_Day1)  
