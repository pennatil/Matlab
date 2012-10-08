#include <iostream>
using namespace std;
int fibonacci(int x){
	int risp=0;
	if (x==0) {
		risp = 0;
	}
	else if (x==1){
		risp = 1;
	}
	else{
		risp=fibonacci(x-1)+fibonacci(x-2);
	}
	return risp;
}
int main() {
	int input;
	do{
	cout << "number of the value: ";
	cin >> input;
	if (input<0)
	{
		cout << "please choose a value bigger than 0!";
	}
	else if (input>200){
		string answer;
		cout << "careful!! for large numbers it might take a while! are you sure you want to continue?? (y/n)";
		cin >> answer;
		do{
		if (answer=="y") {
			cout << fibonacci(input); 
		}
		else if (answer=="n"){
			cout << "please restart the program";
			return 0;
		}
		else {
			cout << "please choose y for yes, and n for no";
		}
		}while (answer!="n" || answer!="y");
	}
	else if (input>0){
		cout << fibonacci(input);
	}
	else {
		cout << "please choose a value bigger than 0";
        cout << "please fuck off";
	}
	
	}while (input<0);
	return 0;
}