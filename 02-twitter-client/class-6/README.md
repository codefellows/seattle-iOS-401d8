# Week 2 - Class 1
## Homework
* Create Model  
	* Create Tweet class  
	* Create User class  
* Create MVC groups  
	* Organize your files into proper MVC groups.  
* Create your JSONParser class  
	* Parse the JSON file into tweets, make sure all properties on each tweet are being set.  
* Display tweets in a tableView.  
		* Do **not** use the same `Basic` cell we used in class, instead use `Subtitle`.  
			* The subtitle label should show the User's `name` string.  
* Assign `ViewController.swift` to be the `dataSource` of `tableView` **programmatically**, not in storyboards.  
	* This will take a little research.  
* Assign `ViewController.swift` to be the `delegate` of `tableView` and implement the `tableView(_ tableView:, didSelectRowAt indexPath:)` method.
	* When a user clicks on a specific cell, `print()` the `indexPath.row` to the console.
* **Code Challenge:**  
	* Write a function that reverses an array  

### Reading Assignment:
* Apple Documentation:
	* Accounts Framework
	* Social Framework
	* NSOperationQueue
* General Concepts:
	* Concurrency
	* HTTP Response Codes
* Swift Programming Guide:
	* Closures

## Other Resources
* [Grading Rubrics](../../resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000JOeuDHWuUbUJrSdhFhQJcg#Week2_Day1)
