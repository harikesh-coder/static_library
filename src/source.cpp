#include<iostream>
#include"file1.h"
extern "C"
{
   int add(int a , int b);
   int subtract(int a , int b);
}
int main()
{
 std::cout<<add(2,3)<<"\n";
 std::cout<<subtract(2,27)<<"\n";

 std::cout<<divide(9,3)<<"\n";
 return 0;
}