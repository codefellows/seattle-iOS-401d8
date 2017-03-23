# Assignment Overview: Lab for Class 9 - Twitter Clone  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to gain a working knowledge of Apple's primary UI framework.  
 - As a developer, I want to challenge myself to put into practice the skills I have learned throughout the week, to improve my iOS application development skills.  
 - As a user, I want to be able to click on a single tweet in my timeline, in order to later be able to view that User's tweets.  
 - As a developer, I want to know how image assets work, to better develop applications supported on multiple screen resolutions.  

## Technical Requirements  
 * Continue to work from the same repository.  
 * Working on a non-master branch, called, `thursday-lab` with regular commit history  
 * In `TweetDetailViewController.swift`:  
 	* Have an imageView that shows the user's profile image.  
	* Have 2 labels for the `Username` and `TweetText`.  
	* Create a `View Feed` button.  
 * When the `View Feed` button is clicked, the user should segue to a 3rd view controller that will show that user's timeline. The api url is "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=" but you will need to ensure that you pass in the username as a parameter to this url.  
 * Convert your `UITableViewCell` subclass(`TweetCell`) to use a Nib, so you can share the same cell for both the `HomeTimelineViewController` and the `UserTimelineViewController`.  
 * Import an image asset into the asset catalog with the appropriate corresponding image sizes.  
 * Implement a UITableViewHeaderView on your `ViewController.swift` that displays the image added to the asset catalog.  
 
### Stretch Goals
 * Implement a `SimpleCache` class to check and see if an image you are about to download is already downloaded before doing a network call. If the image exists in the cache, use it, if not, fetch it from Twitter.  
* Refactor your code to use a single `TimelineViewController` instead of having multiple view controllers doing the same thing presenting a tableView of tweets. This will allow you to create seemingly endless navigation when selecting individual tweets.  
	* HINT: I would recommend first finding the similarities between the 2 viewControllers, then create a single subclass to manage the logic of these commonalities. Then, if needed, create another subclass from this that will handle the individual logic of the `HomeTimelineViewController` that will show the user's home timeline of tweets.  
 
## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `thrusday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `thrusday-lab` to `master`  

### Reading Assignment (read **before** Class 10):
* Cracking the coding Interview, Programming Interviews Exposed, Swift Algorithm Club repository:
  * Stacks & Queues - look up these general topics in the above resources.  
	* [Stacks](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Stack)  
	* [Queues](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Queue)  

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000KMDpLPEkp73gzYutBM0RZQ#Week2_Day4)
