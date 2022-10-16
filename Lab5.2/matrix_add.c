
void matrix_add(){

    // int** mat1 = malloc(3*sizeof(int));
    int mat1[3][3];
    int mat2[3][3];
    // int** mat2 = malloc(3*sizeof(int));

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            mat1[i][j] = i+j;
            mat2[i][j] = i+j;
        }
    }

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            mat1[i][j] = mat1[i][j] + mat2[i][j];
        }
    }
}