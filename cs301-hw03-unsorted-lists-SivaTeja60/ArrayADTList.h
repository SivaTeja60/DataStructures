#ifndef UNSORTED_LISTS_ARRAYADTLIST_H
#define UNSORTED_LISTS_ARRAYADTLIST_H
/*
 * Implementation of Unsorted list using Array list
 */
template <class DataType>
class ArrayADTList {

public:
    int GetLength();                                            //Gets length of array
    bool PutItem(const DataType &item);                         //Inserts item into array
    bool GetItem(const DataType &item, DataType &found_item);   //Gets item from array
    bool isFull();                                              //checks if array is full
    void makeEmpty();                                           //Makes array Empty
    bool DeleteItem(const int &item);                           //Delete Item from list
    bool GetNextIem(DataType &item);                            //Gets next item from array
    void ResetList();                                           //Resets the cursor

private:
    // Variable declarations
    static const long MAX_SIZE = 100;
    DataType items[MAX_SIZE];
    long length = 0;
    long cursor = 0;
};

#endif //UNSORTED_LISTS_ARRAYADTLIST_H
