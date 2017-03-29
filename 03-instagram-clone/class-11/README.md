# Assignment Overview: Lab for Class 11 - PicFeed  

## User Stories (MVP)  
 - As a developer, I want to utilize UIKit to build out an application to help work towards a better understanding of Apple's primary UI framework.  
 - As a developer, I want to use CloudKit in my applications, to allow user's to store and share data stored in the cloud.  
 - As a developer, I want to use UIImagePickerController, to allow user's to be able to access the photos stored on their device.  
 - As a developer, I want to utilize UIAlertController, to be able to present meaningful alerts and quick bits of information to the user.  

## Technical Requirements  
 * Create a new repository properly set up with a license, README, and `.gitignore`, and clone to local machine  
 * Working on a non-master branch, called `monday-lab`, with regular commit history  
 * Enable CloudKit in your applications *Capabilities*, we will continue to build this out tomorrow.  
 * Layout an `imageView` in the center of the screen using Auto Layout and give it a placeholder image.
   	* The placeholder image should be added to the asset catalog and should have all appropriate sizes added(1x,2x,3x).  
 * In the attributes inspector, make sure to enable *Clips to Bounds* and set the content mode to *Aspect Fill* on the `imageView`.  
 * `UIImageView` Auto Layout Constraints:  
 	* centerX  
	* centerY  
	* width 0.75  
	* height 0.75  
 * Create an outlet to your image view in code called `imageView`.  
 * Add a TapGestureRecognizer to the image view and create a corresponding `Action` in code.  
 * When tapped the image should present a UIAlertController to allow the user to select the *Camera* or *Photo Library*  
 * Use the UIImagePickerController and its delegate to use the camera to set the image view's image.  
 
### Stretch Goal:  
 * Your UIImagePickerController should allow editing. Also, the *edited* image should be assigned to the image view.  
 * Write a function that takes in a sentence as a String and determines how many words there are in it.  


## Submitting Your Assignment  

1. When your work is complete and ready for submission, **open a Pull Request** from `monday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `monday-lab` to `master`  

### Readings (read **before** Class 12):  
* Apple Documentation:  
	* [Core Image Programming Guide](https://developer.apple.com/library/ios/documentation/GraphicsImaging/Conceptual/CoreImaging/ci_intro/ci_intro.html)  
	* [CloudKit](https://developer.apple.com/library/ios/documentation/General/Conceptual/iCloudDesignGuide/DesigningforCloudKit/DesigningforCloudKit.html) - Review  
	* [UITabBarController](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITabBarController_Class/index.html)  
	* [Animating Constraints](https://www.ioscreator.com/tutorials/animating-views-auto-layout-ios8-swift)  

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000zQVxi0EIEUbwpmakSgmxwA#Week3_Day1)
