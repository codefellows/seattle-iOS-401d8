# Week 3 - Class 1
## Homework
* Setup a new project, disable landscape in project settings **General > Deployment Info**.  
* Enable CloudKit in your application, we will continue to build this out tomorrow.  
* Layout an image view in the center of the screen using Auto Layout and change its background color.  
* In the attributes inspector, make sure to enable *Clips to Bounds* and set the content mode to *Aspect Fill* on the image View.  
* UIImageView Auto Layout Constraints: centerX, centerY, width 0.85, height 0.85  
* Create and outlet to your image view in code and call it `imageView`.  
* Add a TapGestureRecognizer to the image view and create an Action in code.  
* When tapped the image should present a UIAlertController to allow the user to select the *Camera* or *Photo Library*  
* Use the UIImagePickerController and its delegate to use the camera to set the image view's image.  
* Your UIImagePickerController should allow editing. Also, the *edited* image should be assigned to the image view.  
* **Code Challenge:**
	* Write a function that determines how many words there are in a sentence.  

### Readings (read **before** Class 12):
* Apple Documentation:
	* [Core Image Programming Guide](https://developer.apple.com/library/ios/documentation/GraphicsImaging/Conceptual/CoreImaging/ci_intro/ci_intro.html)
	* [CloudKit Refresh](https://developer.apple.com/library/ios/documentation/General/Conceptual/iCloudDesignGuide/DesigningforCloudKit/DesigningforCloudKit.html) - Refresh
	* [UITabBarController](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITabBarController_Class/index.html)
* General Concepts
	* Animating Constraints

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000zQVxi0EIEUbwpmakSgmxwA#Week3_Day1)
