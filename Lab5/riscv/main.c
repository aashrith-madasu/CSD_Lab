#include <stdio.h>
#include "utils.h"

extern int g;
static int s1;


// will be called in the same file
int min3(int a, int b, int c){
    if(a <= b && a <= c) return a;
    else if(b <= c) return b;
    else return c;
}

int main(){

    printf("%d\n", g);
    int mx = max3(2, 3, 4);
    printf("%d\n", mx);

}