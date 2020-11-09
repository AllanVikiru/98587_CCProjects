NUMBER [0-9]
IDENTIFIER [a-z]*
KEYWORD if|else|do|while|switch|case|break|continue|default|for|auto|const|int|float|double|string|void|char|char*|bool|return|main|cin|cout|endl
OPERATOR "+"|"-"|"*"|"/"|">"|"<"|"="|"++"|"=="|"--"|"&&"|"||"|"!="
SEPARATOR  ";"|"("|")"|"{"|"}"|"<"|">"|"["|"]"|"&"|":"

%%
[ \t\n]+  
{KEYWORD}   printf("%s is a keyword\n", yytext);
{NUMBER}+    printf("%s is a number\n", yytext, atoi(yytext));
{IDENTIFIER}    printf("%s is an identifier\n", yytext);
{OPERATOR}    printf("%s is an operator \n", yytext);
{SEPARATOR}    printf("%s is a separator \n", yytext);
.   printf( "%s is invalid \n", yytext );
%%

int yywrap()
{
  return 1;
}

int main()
{
	FILE *file; 
    char filename[50]; 
    printf("Enter the file name: \n"); 
    scanf("%s",filename); 
    file = fopen(filename,"r"); 
    yyin = file; 
	yylex();
	return 0;
}