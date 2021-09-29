#include <iostream>
int main(){
    int *d,*p;
    d=(int *)malloc(20*sizeof(int));
    p=(int *)malloc(10*sizeof(int));
    d=p;
    return 0;
}