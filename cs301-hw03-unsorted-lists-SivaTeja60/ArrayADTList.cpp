#include "ArrayADTList.h"
#include "stdlib.h"

//Returns length of the Array list
template <class Datatype>
int ArrayADTList<Datatype>::GetLength() {

    return length;
}

//Inserts an item into Array list
template<class DataType>
bool ArrayADTList<DataType>::PutItem(const DataType &item) {

    if(length>=MAX_SIZE){           //when array is full
        return false;
    }
    else{
        items[length]=item;
        length++;
        return true;
    }
}

//GetItem returns true if item is found in list
//Returns false if item is not found in list
template<class DataType>
bool ArrayADTList<DataType>::GetItem(const DataType &item, DataType &found_item) {
    for (int i = 0; i < length; i++) {
        if (items[i] != item) {
            continue;                           //continues the loop until item is found
        }
        else {
            found_item = items[i];
            return true;
        }
    }
    return false;
}

//Returns true when Array list gets full
template<class DataType>
bool ArrayADTList<DataType>::isFull() {
    if(length == MAX_SIZE){
        return true;
    }
    else{
        return false;
    }
}

//Makes the list Empty
//Resets the length to zero
template<class DataType>
void ArrayADTList<DataType>::makeEmpty() {
    length=0;
}

//Deletes item from the list
//Returns false if element is not present in the list
template<class DataType>
bool ArrayADTList<DataType>::DeleteItem(const int &item) {

    if(items[length-1]==item) {             //if element to be deleted is last one
        length--;
        return true;
    }
    for (int i = 0; i < length-1; i++) {
        if(items[i]==item){
            items[i]=items[length-1];          //Replacing with the last element
            length--;
            return true;
                    }
    }
    return false;
}

//Resets the cursor
template<class DataType>
void ArrayADTList<DataType>::ResetList() {
cursor=0;
}

//Gets next item from the list
//Returns true if next item exits
//Returns false if next item doesnt exists
template<class DataType>
bool ArrayADTList<DataType>::GetNextIem(DataType &item) {

    if(cursor<length) {

       item=items[cursor];
        cursor++;
       return true;
    }
    return false;
}
