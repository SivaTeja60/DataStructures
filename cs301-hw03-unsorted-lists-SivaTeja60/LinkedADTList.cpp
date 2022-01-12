#include <iostream>
#include <new>
#include "LinkedADTList.h"

//Returns length of the linked list
template<class DataType>
int LinkedADTList<DataType>::GetLength() {
    return length;
}
//Inserts an item into linked list
template<class DataType>
bool LinkedADTList<DataType>::PutItem(const DataType &item) {
    //Added at the Start of the node to avoid Traversing

    Node<DataType>* location=new Node<DataType>;
    location->value = item;
    location->next=NULL;
    if(start==NULL){
        start=location;         //Incase of empty list
    }
    else {
        location->next = start;
        start= location;
    }
    length++;
    cursor=start;
    return true;
}

//GetItem returns true if item is found in list
//Returns false if item is not found in list
template<class DataType>
bool LinkedADTList<DataType>::GetItem(const DataType &item, DataType &found_item) {

    Node<DataType>* location= new Node<DataType>;
    location=start;
    if(length>0) {
        while (location != NULL) {
            if (location->value == item) {
                found_item = item;              //Having the item value in found_item
                return true;
            }
            location=location->next;
        }
    }
    return false;
}

//Returns false as linked list never gets full
template<class DataType>
bool LinkedADTList<DataType>::isFull() {

        return false;                       //Linked list never gets full

}

//Makes the list Empty
//Resets the start and cursor to Null
template<class DataType>
void LinkedADTList<DataType>::makeEmpty() {

    Node<DataType>* Temp=NULL;
    while (start) {
        Temp = start->next;
        delete start;
        start = Temp;
    }
    length = 0;
    start=NULL;                             //Reset start and cursor
    cursor=NULL;
}

//Deletes item from the list
//Returns false if element is not present in the list
template<class DataType>
bool LinkedADTList<DataType>::DeleteItem(const int &item) {

    Node<DataType>* previous = NULL;        // Empty header
    Node<DataType>* current = start;        // First valid node
    while(current != NULL) {
        if(current->value == item) {
            break;                          //Breaks from loop once value exist
        }
        else {

            previous = current;
            current = current->next;        // going to next value
        }
    }
    if((current == NULL)) {                 // if we reached end of list or the list is empty
        return false;

    } else {

        previous->next = current->next;     // unlink the node
        delete current;                     // delete the node
        length--;
        return true;
    }
}

//Gets next item from the list
//Returns true if next item exits
//Returns false if next item doesnt exists

template<class DataType>
bool LinkedADTList<DataType>::GetNextIem(DataType &item) {

    Node<DataType> *location = cursor;
    if ((length==0)) {                  //if list is empty
        return false;
    } else if((location)!= NULL) {      //if next item exists
        item = location->value;
        cursor=cursor->next;
        return true;
    }
    else{                               //if next item doesnt exist
            return false;
        }
}

//Resets the cursor
template<class DataType>
void LinkedADTList<DataType>::ResetList() {
    {
        cursor = start;
    }

}

// This is the destructor, it will run when the object is removed from memory
// I've included it here because we've not gone over them in class yet.
// This one deletes all the nodes in the list, if you change the names
// of the object properties make sure you update this code.

template<class DataType>
LinkedADTList<DataType>::~LinkedADTList() {
    Node<DataType>* temp;
    while(start != nullptr) {
        temp = start;
        start = temp->next;
        delete temp;
    }
}
