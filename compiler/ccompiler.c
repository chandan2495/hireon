#include<stdio.h>

int main(int argc,char **argv)
{
char s[500],s1[500];
FILE *fp,*fp1;

sprintf(s,"gcc %s 2>error.txt -o prg.exe",argv[1]);

system(s);

fp=fopen("error.txt","r");

fseek(fp,0,SEEK_END);

if(ftell(fp)==0)
{
 system("prg.exe <t1.txt >output.txt 2>runtimeerror.txt");
 system("diff output.txt out1.txt >check.txt");
 fp1=fopen("check.txt","r");

 fseek(fp1,0,SEEK_END);
 if(ftell(fp1)==0){
 //printf("0");
 return 0;
 }
 else{
 //printf("1");
 return 1;
 }
}
else
{
 return 2;
}

return 0;
}
