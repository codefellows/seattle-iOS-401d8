# Week 6 - Class 27  

## Lab Assignment
* Continue from the same project from yesterday.  
* Refactor the `Employee` class to have these **PROPERTIES**: `firstName`, `lastName`, `email`, `phone`.  
	* Declare a custom initializer that takes in all the required parameters.  
	* Conform Employee class to `NSCoding` protocol and implement the required methods.  
* Define and build `EmployeeDatabase`.  
	* Make this class a singleton that manages an array of employees.  
* Build out the UI:
	* Create a new `ViewController` with a `UITableView`.
	* Create an Outlet to the `tableView` in code.
	* Assign the `datasource` to be the corresponding `ViewController`, and implement `cellForRowAt` and `numberOfRowInSection`.
	* This `tableView` should populate with the names of all the employees in the `EmployeeDatabase` array.  
	
## Submitting Your Assignment  
1. When your work is complete and ready for submission, **open a Pull Request** from `tuesday-lab` to `master`.  
2. Submit the link to the above Pull Request to Canvas  
3. Add a comment to this Canvas submission with answers to the following questions.  
  - How did this lab go, overall?  
  - What observations or questions do you have about what you've learned so far?  
4. Once you've submitted your work, complete the merge of `tuesday-lab` to `master`  

### Reading Assignment (read **before** Class 28):
* Programming in Objective-C
	* **Chapter 16:** Working with Files
	* **Chapter 9:** Polymorphism, Dynamic Typing and Dynamic Binding
	* **Chapter 12:** The Preprocessor


## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Slides](https://www.icloud.com/keynote/000m0shf3CzsBXOPgyE5yadjw#Week6_Day2)
