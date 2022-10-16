
int MAX_SIZE = 100;

int* vector_add(int* a, int* b){

    int n = sizeof(a)/sizeof(a[0]);
    int c[n];

    for(int i=0; i<n; i++)
        a[i] = a[i] + b[i];
    return a;
}
