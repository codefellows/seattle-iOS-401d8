#Week 2 - Class 3
##Homework
* Setup your cells with Auto Layout so you can see the entire tweet's text. If you get any `...` at the end that is probably twitters API being annoying.
* Create a 2nd UIViewController that shows an individual tweet in detail
* Upon clicking a tweet, your interface should push to the 2nd UIViewController that displays the tweet's details, using labels instead of `print()` statements. Also, a few other caveats:
  * If the tweet that was selected is a retweet, you should let the user know in some way.
  * This information is available in the JSON, you just have to go digging for it and add a property to your Tweet class.
* Create a ProfileViewController that when presented, shows the logged in user's profile information. Utilize the NavigationBar to add a button to present this new viewController.
* Programmatically support dynamic type in your `ViewController.swift` class.  

###Reading Assignment:
* Apple Documentation:
  * [UITableViewDelegate](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITableViewDelegate_Protocol/index.html)
  * [Image Assets](https://developer.apple.com/library/prerelease/ios/documentation/Xcode/Reference/xcode_ref-Asset_Catalog_Format/)
  * [UINibs](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UINib_Ref/index.html)

##Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000clqbz13p8N-0ljiqMLD-0w#Week2_Day3)
