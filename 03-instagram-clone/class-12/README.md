# Assignment Overview: Lab for Class 12 - PicFeed  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a user, I want to be able to filter the selected images to style them in different and creative ways.  
 - As a user, I want to be able to save my filtered images to the cloud, to be able to view them on multiple devices.  
 - As a developer, I want to add animations to my application, to provide some surprise and delight to retain users.  

## Technical Requirements  
* Create `Post` Model Object.  
* Add `CKExtensions` to `Post` to create `CKRecord` from `Post`.  
* Add `UIExtensions` to extend `UIImage` to resize an image to specified parameters.  
* Create `Filters` class and implement at least **5** filters.  
	* Be aware that certain filters require additional parameters.  
	* To find out what filters are available, use the documentation or you could use this code:  
	```swift
	for name in CIFilter.filterNames(inCategories: nil){
      print(name)
  }
	```  
* Create the ability to apply filters to the original image and reset to the original image.  
* Implement `POST` of an image to CloudKit.  
* Embed the `HomeViewController` in a TabBarController.  
* Have at least 2 or more constraint-based animations in your UI. Choose whichever constraints you'd like, be creative.  
 
### Stretch Goal:  
* Change from `Reset` to `Undo` and manually manage images to properly handle `Undo`ing of an applied filter(HINT: An array could hold all the images as they get filtered).  
* Add the ability to write the filteredImage to the saved photos album on the device.  
	> This should be separate from the POST to CloudKit.  

* Use an enum that conforms to `Error` that properly handles the `Filters.filter()` `fatalError`'s. This will mean altering the `filter()` function to `throw`.   

## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `tuesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `tuesday-lab` to `master`  

### Readings (read **before** Class 13):  
* [UICollectionView](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UICollectionView_class/index.html)
* [UICollectionViewFlowLayout](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UICollectionViewFlowLayout_class/)  

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000itEApKaUNewFvchS4Z7Vcw#Week3_Day2)
