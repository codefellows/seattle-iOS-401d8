# Week 3 - Class 2  
## Homework  
* Create `Post` Model Object.  
* Add `ModelAdditions` to `Post` to create `CKRecord` from `Post`.  
* Create an extension on `UIImage` that resizes an image to specified parameters.  
* Create `Filters` class and implement at least **5** filters.  
	* Be aware that certain filters require additional parameters.  
	* To find out what filters are available, use this:  
	```swift
	for name in CIFilter.filterNames(inCategories: nil){
      print(name)
  }
	```  
* Create the ability to reset applied filter to the default image.  
* Implement `POST` of an image to CloudKit.  
* Implement Save image to the Library.  
	> This should be seperated from the POST to CloudKit.  

* Add a UITabBarController to your project.  
* **Code Challenge:**  
	* Write a function that returns all the odd elements of an array.  
* **Bonus:**  
	* Change from `Reset` to `Undo` and manually manage images to properly handle `Undo`ing of an applied filter.  
* Embed the `HomeViewController` in a TabBarController.  

### Reading Assignment:
* [UICollectionView](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UICollectionView_class/index.html)
* [UICollectionViewFlowLayout](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UICollectionViewFlowLayout_class/)

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000itEApKaUNewFvchS4Z7Vcw#Week3_Day2)
