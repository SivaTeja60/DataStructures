#ifndef NODE
#define NODE
/*
 * Implementation of Unsorted list using Linked list
 */
//Template for node
template <class DataType>
struct Node {
    DataType value;
    Node<DataType>* next;
};
#endif


#ifndef UNSORTED_LISTS_LINKEDADTLIST_H
#define UNSORTED_LISTS_LINKEDADTLIST_H

template <class DataType>
class LinkedADTList {

public:
    virtual ~LinkedADTList();

    int GetLength();                                            //Gets length of list
    bool PutItem(const DataType &item);                         //Inserts item into list
    bool GetItem(const DataType &item, DataType &found_item);   //Gets item from list
    bool isFull();                                              //checks if list is full
    void makeEmpty();                                           //Makes list Empty
    bool DeleteItem(const int &item);                           //Delete Item from list
    bool GetNextIem(DataType &item);                            //Gets next item from list
    void ResetList();                                           //Resets the cursor


private:
    //Variable declarations
    Node<DataType>* start = nullptr;
    long length = 0;
    Node<DataType>* cursor = start;

};

#endif //UNSORTED_LISTS_LINKEDADTLIST_H
