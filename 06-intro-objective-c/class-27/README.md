# Week 6 - Class 2
## Homework
* Create a new project and Disable ARC.  
	* Manage your memory, create proper setters that retain/copy data when assigned.  
* Create a `User` class, but implement the `NSCopying` protocol, and implement `CopyWithZone:` to make deep copies of `User`.  
	* `User` should have values for `name`, `age`, and `email`.  
	* `User` should have an initializer that takes in values for each of the above and returns a new instance.(Hint: Yesterday's slides).
* In `ViewController.m`, inside `viewDidLoad`, create 5 unique instances of `User` and use a `NSMutableDictionary` to store them with their `email` as the key for the dictionary.  
	* Remember to manually manage your memory for this.  

### Reading Assignment:
* Programming in Objective-C
  * **Chapter 16:** Working with Files
  * **Chapter 17:** Memory Management and Automatic Reference Counting

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000m0shf3CzsBXOPgyE5yadjw#Week6_Day2)
