/* Flex implementation to read number of characters in a given file. */
%{ 
int count = 0; 
%} 

%% 
.	count++;
%% 

int yywrap()
{
  return 1;
}

int main(){ 

    FILE *file; 
    char filename[50]; 
    printf("Enter the file name e.g. file.txt: \n"); 
    scanf("%s",filename); 
    file = fopen(filename,"r"); 
    yyin = file; 

    yylex(); 
    printf("\nNumber of characters in file: %d\n", count); 

    return 0; 
} 
