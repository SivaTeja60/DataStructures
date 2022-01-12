
#include <iostream>       // std::cout
#include <string>         // std::string
#include <queue>          // std::queue
#include <unordered_set>  // std::unordered_set
#include <stack>          // std::stack
#include <fstream>        // std::fstream


#ifndef HTMLCHECKER_H
#define HTMLCHECKER_H
/*
 * Program to validate if html tags are properly placed
 */

using namespace std;

enum State {whitespace, word, tag, tag_attr};

class HTMLChecker {
public:
    HTMLChecker();
    bool load(const string &file_path);
    bool isValid();

private:
//Variable declaration
    queue<string> html_elements;                //Queue
    unordered_set<string> self_closing_tags;    //Unordered Set
    stack<string> html_stack;                   //Stack
    string html_tag;
    string top_value;
    string dummy_value;
    int length;
    bool isending_tag;
    int n;

};


#endif //HTMLCHECKER_H
