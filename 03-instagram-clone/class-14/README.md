# Assignment Overview: Lab for Class 14 - PicFeed  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a developer, I want to use gestures in my application, to provide additional "surprise and delight" to my users.  
 - As a user, I want to be able to post the image I filter to Twitter, to share with my followers.  
 - As a user, I want to see each photo pre-filtered before applying it to my image, to better understand what each filter does.  

## Technical Requirements  
* Implement collection view on the HomeViewController to display all available filters already pre-applied to the image.  
* Create an additional UICollectionViewCell subclass that has a label to display info about the filter being previewed.  
* Show / Hide `filterCollectionView` in place of Action Sheet.  
* Selecting a filtered image applies that filter to the current Image in the primary image view.  
* Implement a pinch gesture recognizer on GalleryViewController, that affects the collection view layout.  
* Create a custom protocol and use delegation to send back the image selected from GalleryViewController to the HomeViewController for further editing.  
* Use `SLComposeViewController` to share images to one of the supported social networks.  
* If you didn't complete in class 13 lab, refactor the `HomeViewController` to make the `UIAlertController` logic more DRY.  
* Rewrite the `imagePickerControllerDelagate` methods to be in an extension.  
* Use the `//MARK:` comments to make it easier to navigate your code.  

### Stretch Goal:  
* Alter the existing post button, or add another one, that allows the user to choose whether they post the filtered images to CloudKit in the **public database** or **private database**. Following this, you should implement a 3rd tab on the tabBarController that displays all the images posted to the public database, as a feed.  

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `thursday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `thursday-lab` to `master`  

### Reading Assignment (read **before** Class 15):  
* Cracking the coding Interview/Programming Interviews Exposed:  
  * Linked List  
* [Linked List Article](http://waynewbishop.com/swift/linked-lists/)  
* [Swift Algorithms Club - Linked lists](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Linked%20List)  
  
## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000Jb3jQrKlkMaoFiZ5Nrlk8g#Week3_Day4)
