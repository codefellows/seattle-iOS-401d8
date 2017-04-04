# Assignment Overview: Lab for Class 17 - GoGoGitHub  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a developer, I want to implement OAuth to authenticate my users with GitHub.  
 - As a user, I want to be able to view and search through my repositories on GitHub.  
 - As a developer, I want to implement a UISearchBar into my application, to show the delegation pattern and allow the user to search their repositories by name.  

## Technical Requirements  
* Add the	`GitHub` logo, located in the lecture directory above, to your assets and place it on the `GitHubAuthController` in storyboard, with the following constraints:  
	* Center Horizontally in container
	* Center Vertically in container
	* Width: 200
	* Height: 200
* Your AppDelegate should check to see if token exists before making a call to Github. If token does not exist, present login screen.  
* Implement the ability fetch repositories using a GET request.
	* NOTE: Make sure you include "repo" in your initial scope when requesting a token.  
* Create model object for `Repository` with a failable `init` that takes in a user `json` dictionary and initializes a `Repository` instance. The `Repository` class should have the following members:  
   	* name: String  
	* description: String?  
	* language: String?  
* Parse through the JSON returned from the server into `Repository` objects.  
* Create `RepoViewController` to display all the user's repositories in a TableView.  
* Implement a `UISearchBar` on your `UITableView`, to search the user's repositories.  

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `tuesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `tuesday-lab` to `master`  

## Reading Assignment (read **before** Class 18):
* Apple Documentation:
	* [UIViewController Programming Guide](https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/index.html#//apple_ref/doc/uid/TP40007457-CH2-SW1)
	* [UIView Animations Guide](https://developer.apple.com/library/ios/documentation/WindowsViews/Conceptual/ViewPG_iPhoneOS/AnimatingViews/AnimatingViews.html#//apple_ref/doc/uid/TP40009503-CH6-SW1)
* Other Resources:
	* [Custom UIViewController Transitions](https://www.objc.io/issues/5-ios7/view-controller-transitions/)

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000QTHpeeBGGo_aR7U3F-rjiA#Week4_Day2)
