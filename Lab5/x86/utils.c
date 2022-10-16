#include "utils.h"

extern int g;
static int s2;

// will be called in another file
int max3(int a, int b, int c){
    if(a>=b && a>=c) return a;
    else if(b >= c) return b;
    else return c;
}

// wont be called anywhere
int sum3(int a, int b, int c){
    return a+b+c;
}
