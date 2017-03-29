# Assignment Overview: Lab for Class 13 - PicFeed  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a user, I want to be able to see a preview or thumbnail version of each filter applied, to get a better understanding of what each filter does.  
 - As a developer, I want to implement a UICollectionView into my application, for a better presented UI/UX for my users.  
 - As a developer, I want to implement a custom `UICollectionViewFlowlayout`, to provide a layout other than the defauit UICollectionViewFlowLayout provided by Apple.  

## Technical Requirements  
* Build a call to CloudKit to get all images uploaded.  
* Create a GalleryViewController designed to show uploaded images.  
* Add a collection view to the interface.  
* Build a simple custom `UICollectionViewFlowlayout` to handle how the cells are displayed.  
	* Customize your Flow Layout, we will add a pinch gesture to this tomorrow.  
* Use property observers to set collection view cell's imageViews, when downloaded (lazy load images).  
* Refactor your Filters class to be a singleton.  
	* This new singleton should have 1 instance of the **context** that gets reused for each filter.  
* Add a label to each `UICollectionViewCell` that displays the date the image was posted.  

### Stretch Goal:  
* Add 3-5 more CIFilters to the `Filters` class.  
* **Code Challenge:**  
	* Write a function that computes the list of the first 100 Fibonacci numbers.(This is trickier than it seems).  

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `wednesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `wednesday-lab` to `master`  

### Reading Assignment (read **before** Class 14):  
* Apple Documentation:  
	* [UIGestureRecognizer](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIGestureRecognizer_Class/index.html#//apple_ref/occ/cl/UIGestureRecognizer)  
	* [Photos Framework](https://developer.apple.com/library/ios/documentation/Photos/Reference/Photos_Framework/index.html)  
	* [SLComposeController](https://developer.apple.com/library/ios/documentation/NetworkingInternet/Reference/SLComposeViewController_Class/index.html)  

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000m4LBd0MejMf8HT5gD5aU3g#Week3_Day3)  
