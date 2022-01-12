# CS301 HW04 HTML Validator.
## Getting familiar with standard library containers

In this assignment you only need to write one method, the HTMLChecker::isValid(). In this method you'll read from a std::queue and std::unordered_set and push and pop from a std::stack.  The objective of this assignment is you to get familiar with the standard library containers.  You can read about them here: https://www.cplusplus.com/reference/stl/ .  You must use these stack, queue and unsorted_set containers. Do not use other libraries.  

I've written the HTMLChecker::load() load method for you that reads in a html file and creates a queue of tags and words in the file.  There is also a self_closing_tags unsorted_set defined for you in the Class constructor.  

HTML uses nested tag to define the structure of a webpage.  This tag come in two forms, tags that open and close such as `<body>` and `</body>` and self closing tags such as `<br>` or `<br/>`. Our HTMLChecker is going to check to see that an HTML file as a closing tags for each opening tag and requires it and vice versa.  It will also make sure that the nested tags are in the correct nested order.

The checker will accomplish this by pushing tags on the stack when its finds an opening tag and popping tags off the stack when if finds a matching closing tag.  If its finds a closing tag that does not match the opening tag on the stack then the HTML is invalid. The HTML is also invalid if the end of the queue is reached and the stack is not empty.  

While putting tags on the stack you'll need to check them against a list of self closing tags so you don't put them on the stack as they have to corresponding closing tag.

***Because we're working with files when you run the driver or tests you'll need to make sure you have the "working directory" set to the root directory of the project.***  I'll include a video in blackboard on how to do this in cLion, if you're using another IDE you'll have the look up how to set it.  If you compile and run the application from the command line the working directory is just the directory you are currently in.   

You use the main file as a driver to develop you code and test the results with the HTML_CheckerTest.  There are a few simple HTML files in samples for you to play with, feel free to add more.  