

int vector_dot(int* a, int* b){
    int n = sizeof(a)/sizeof(a[0]);
    int c = 0;

    for(int i=0; i<n; i++)
        c += a[i]*b[i];

    return c;
}