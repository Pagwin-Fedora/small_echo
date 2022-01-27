#include<unistd.h>
int main(void){
	char c = 0;
	for(size_t count = read(0,&c,1);count!=0;count = read(0,&c,1))write(1,&c,1);
}
