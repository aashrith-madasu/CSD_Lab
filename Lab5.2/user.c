

int* vector_add(int*, int*);
int vector_dot(int*, int*);
void matrix_add();

int GLOBAL_VAR = 1000;

int main(){

    int a[] = {1, 2, 3};
    int b[] = {1, 2, 3};

    int* c = vector_add(a, b);
    int d = vector_dot(a, b);


    matrix_add();

}