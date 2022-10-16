# 1 "utils.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "utils.c"
# 1 "utils.h" 1

int max3(int, int, int);
int sum3(int, int, int);

int gb;
# 2 "utils.c" 2

extern int g;
static int s2;


int max3(int a, int b, int c){
    if(a>=b && a>=c) return a;
    else if(b >= c) return b;
    else return c;
}


int sum3(int a, int b, int c){
    return a+b+c;
}
