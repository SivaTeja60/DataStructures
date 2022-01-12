#include "HTMLChecker.h"


HTMLChecker::HTMLChecker() {
    self_closing_tags = {
            "<!doctype>", "<area>", "<base>", "<br>", "<col>", "<embed>", "<hr>",
            "<img>", "<input>", "<link>", "<meta>", "<param>", "<source>", "<track>", "<wbr>",
            "<!doctype/>", "<area/>", "<base/>", "<br/>", "<col/>", "<embed/>", "<hr/>",
            "<img/>", "<input/>", "<link/>", "<meta/>", "<param/>", "<source/>", "<track/>", "<wbr/>"
    };
}



/**
 * Takes the path of a html file and loads it into a
 * Queue one word at a time.  The method reads in the file
 * one character at a time, using a state machine with 4
 * states to parse the tags and words into a Queue for later
 * evaluation.
 *
 * @param file_path
 * @return true if the file could be read.
 */
bool HTMLChecker::load(const string &file_path) {
    // open the file and make sure there is something in it.
    fstream file_in(file_path, fstream::in);
    bool is_empty = file_in.peek() == std::ifstream::traits_type::eof();
    if (is_empty) return false;

    string buff = "";            // holds the word or tag string as we build it.
    char character;              // holds the char we read from the file
    State state = whitespace;    // set our initial state to whitespace

    // loop though each char in the file
    while (file_in >> noskipws >> character) {

        if (state == whitespace) {
            if (!isspace(character)) {
                // if you find a < is the start of a tag
                // otherwise its the start of a word
                if (character == '<') state = tag;
                else state = word;
                buff = character;
            }
        } else if (state == tag) {
            // if it's a > we've reached the end of the tag
            if (character == '>') {
                buff += '>';
                state = whitespace;
                // add the tag to the heml elements queue
                html_elements.push(buff);
                buff = "";

            } else if (isspace(character)) {
                // space in the tag means we're looking at attributes
                state = tag_attr;
            } else {
                buff += tolower(character);
            }
        } else if (state == tag_attr) {
            // in the tag attributes ignore everything but the >
            if (character == '>') {
                buff += '>';
                html_elements.push(buff);
                buff = "";
                state = whitespace;
            }
        } else if (state == word) {
            if (isspace(character)) {
                html_elements.push(buff);
                buff = "";
                state = whitespace;
            } else if (character == '<') {
                html_elements.push(buff);
                buff = "";
                state = tag;
                buff += character;
            } else {
                buff += character;
            }
        }
    }
    return true;
}
/**
 Checks if the html tags are properly placed i.e. every start tag should have a end tag
 * @return true if tags are placed properly.
 */

bool HTMLChecker::isValid() {

    while (!html_elements.empty())          //Looping through queue
    {
        html_tag = html_elements.front();                //Gets the 1st element in the queue
        n = html_tag.find("<");                     //Checks if it is a tag
        isending_tag=(html_tag.find("</")!=-1);       //check if it is ending tag and stores boolean value
        //checking if tag is present in self_closing_tags
        if (self_closing_tags.count(html_tag)>0){
            html_elements.pop();                        //Removes element from queue that helps for loop
        }
        else if(n != -1){                               //Its a tag
            //checking if it is close tag
            if(isending_tag) {
                top_value = html_stack.top();           //Getting top value from stack
                dummy_value="";
                for(int i=0;i<html_tag.length();i++){   //To remove '/' from ending tag to facilitate for comparison
                    if(html_tag[i]!='/') {
                        dummy_value = dummy_value + html_tag[i];
                    }
                }
                //Compare the ending tag after removing '/' with stack top value
                if (top_value == dummy_value) {
                    html_stack.pop();                   //Removes value from stack
                }
                else{
                    return false;                       //Returns false as tags doesnt match
                }
            }
            //For open tag
           else{
               html_stack.push(html_tag);               //Push value into stack
           }
            html_elements.pop();                        //Removes element from queue that helps for loop
        }
        //If the value is not a tag insted a word or any other
    else{
            html_elements.pop();
        }

    }
length=html_stack.size();                               //Gets length of stack

    if(length==0 && html_elements.empty()){             //condition to check if every tag has ending tag
     return true;
}
    else {
        return false;
    }
}



