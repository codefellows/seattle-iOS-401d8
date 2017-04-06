# Assignment Overview: Lab for Class 19 - GoGoGitHub  

## Announcements:  
> Make sure to look at the Career Development assignment on Canvas in preparation for tomorrow. 

## Project Planning Stage  
> Your project plan document must be uploaded, via a canvas submission, by 1 designated member of your group. Some stuff scribbled on a whiteboard, or a photo of some stuff scribbled on a whiteboard, is not sufficient.  

The **Project Plan** document should contain the following information:  
* Your team's name (if you want one)  
* Your team's members names  
* Your project's overview and concept  
* A diagram or overview of your project's model layer  
* Sketches/wireframes of your project's pages  
* Any Frameworks and Libraries you foresee needing  
* A detailed overview of the features needed to meet MVP(Minimum Viable Product)  
* A detailed overview of the stretch goals you want to implement given a completed MVP.  
* Which task management system will you use for tracking feature implementation?(GitHub Projects, Trello, Waffle.io, etc.)  

> NOTE: You should not be writing any code prior to first thing Monday morning.  
> TIP: Use pencil and paper to diagram and sketch. Online tools look snazzy but take some time to learn.  

## User Stories for Lab(MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a user, I want to be able to click on a repository to see more of the details associated with that specific repository viewed as it is on the web.  
 - As a developer, I want to validate my user's input in my application to ensure no malicious or unintended input is received.  
 
## Technical Requirements  
 - Add a button to your RepoDetailViewController that, when clicked, loads either a `sfsafariviewcontroller` or a `WKWebView` showing the url for the associated repository.  
 - Add a regex extension to `String` to validate user input into the `UISearchBar`'s of your application.  

### GoGoGitHub Stretch Goals  
* Embed your HomeViewController in a TabBarController.  
* Create a `UserSearchViewController` and assign it as a second tab.  
* Implement `UserSearchViewController` to search for users using another call to GitHub's API.  
  * Implement a `UISearchBar` to allow the user to search for a specific user on GitHub.  
  * Instead of a `UITableView`, use a `UICollectionView` to display the users avatar image.  
* Implement Regex in your app to validate the characters the user types into any `UISearchBar`.  
  * Your application should not allow any non-alphanumeric characters when searching users.  
* Upon clicking one of the `UICollectionViewCell`s, implement another `WKWebView` that shows the `selected` user's GitHub page.  

## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `thursday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `thursday-lab` to `master`  

## Reading Assignment:
N/A.

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000WS5NknuZhbyF90fq6X7z_Q#Week4_Day4)
