# Assignment Overview: Lab for Class 18 - GoGoGitHub  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a user, I want to be able to click on a repository to see more of the details associated with that specific repository.  
 - As a developer, I want to implement a custom transition into my application to create a "delightful" UX.  
 - As a developer, I want to implement my `UITableViewCell`'s as `UINibs` to have a more easily reusable cell and to provide more data to the user than the default cell styles allow.  

## Technical Requirements  
* Layout your TableViewCells as Nibs and create a subclass called `RepositoryCell` instead of using the Basic UITableViewCell.  
* Your Nib should have `UILabels` for 3 pieces of data from the Repository:  
	* Repo Name  
	* Repo Description  
	* Repo Language  
* Create `RepoDetailViewController` that will display Repository information.  
* Implement the dismissal of the `RepoDetailViewController`.  
* Your `RepoDetailViewController` should display at least these 6 pieces of data from the Repository:  
    * Repo Name  
    * Repo Description  
    * Programming Language  
    * Number Of Stars  
    * isFork: True or False  
    * createdAt: Date  
* Create custom `UIViewController` Transition from HomeViewController to `RepoDetailViewController`.  

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `wednesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `wednesday-lab` to `master`  

## Reading Assignment (read **before** Class 19):
* Apple Documentation:
  * [WKWebView](https://developer.apple.com/reference/webkit/wkwebview)  
  * [SafariViewController](https://developer.apple.com/reference/safariservices/sfsafariviewcontroller)  
  * [Regex](https://developer.apple.com/reference/foundation/nsregularexpression)  

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000lReqBJ1v41Z9NFhFkN3I8g#Week4_Day3)
