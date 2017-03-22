# Assignment Overview: Lab for Class 8 - Twitter Clone  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework. 
 - As a user, I want to be able to view my own profile information, to be able to track my followers count and see where I am located.  
 - As a user, I want to be able to click on a Tweet on my timeline, to see if it is a tweet or a retweet.  
 - As a developer, I want to know how to use Auto Layout, to build well-structured and dynamic application UI/UX.  

## Technical Requirements  
 * Continue to work from the same repository.  
 * Working on a non-master branch, called, `wednesday-lab` with regular commit history  
 * Setup your cells with Auto Layout so you can see the entire tweet's text. If you get any `...` at the end that is probably twitters API being annoying.
 * Create a 2nd `UIViewController` that shows an individual tweet in detail
 * Comment out the `tableView(_:, didSelectRowAt:)` delegate method in your `HomeTimelineViewController`.  
 * Upon clicking a tweet, your interface should push to another `UIViewController` that displays the tweet's details, via a storyboard segue, using labels to present the tweet details to the user instead of `print()` statements. Also, a few other caveats:
   * If the tweet that was selected is a retweet, you should let the user know in some way.
   * This information is available in the JSON, so you have to go digging for it and add a property to your Tweet class. HINT: This information should be in the `tweet.json` testing file as well to inspect.
 * Create a ProfileViewController that when presented, shows the logged in user's profile information. Utilize the NavigationBar to add a button to present this new viewController. This can be achieved using the `getOAuthUser` method we wrote yesterday to get the current user's information.  
 
 > The documentation is another great resource for locating the data we need, showing example json responses here:  
 https://dev.twitter.com/rest/reference/get/statuses/home_timeline  
 https://dev.twitter.com/rest/reference/get/account/verify_credentials  

#### Stretch Goal  
 * Programmatically support dynamic type in your `ViewController.swift` class.  

## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `wednesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `wednesday-lab` to `master`  

### Reading Assignment:
* Apple Documentation:
  * [UITableViewDelegate](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITableViewDelegate_Protocol/index.html)
  * [Image Assets](https://developer.apple.com/library/prerelease/ios/documentation/Xcode/Reference/xcode_ref-Asset_Catalog_Format/)
  * [UINibs](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UINib_Ref/index.html)

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000clqbz13p8N-0ljiqMLD-0w#Week2_Day3)
