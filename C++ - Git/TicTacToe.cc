#include <iostream>
#include <stdlib.h>
#include <ctype.h>
#include <time.h> 
using namespace std; 

char board [3][3];
const char PLAYER = 'X';
const char COMPUTER = 'O';

void resetBoard(){
	
	//For Loop to iterate through the board
	for (int i = 0; i < 3; i++){
		for (int j = 0; j < 3; j++){
			
			board [i][j] = ' '; 
		}
	}
}

void printBoard(){
	
	printf(" %c | %c | %c ", board [0][0], board [0][1], board [0][2]); 
	printf("\n---|---|---\n"); 
	printf(" %c | %c | %c ", board [1][0], board [1][1], board [1][2]); 
	printf("\n---|---|---\n"); 
	printf(" %c | %c | %c ", board [2][0], board [2][1], board [2][2]);  
	printf("\n---|---|---\n");
	
}
	

int checkFreeSpaces(){
	
	int freeSpaces = 9; //Initializing the count of free spaces to 9 representing the total number of free spaces on a tic-tac-toe board 
	
	for (int i = 0; i < 3; i++){
		
		for (int j = 0; j < 3; j++){
		
			if(board [i][j] != ' '){
				freeSpaces--; //If the current board cell is not empty, decrement the counter 
			}
		}
	}
	return freeSpaces; // This sends the final count of free spaces back to the caller or back to the part of the program that called the function
}

void playerMove(){
	
	int x; //Row number 
	int y; //Column number 
	
	do{
		printf("Enter row number (1-3): "); //Do-While loop to check if there are still open spaces
		scanf("%d", &x); 
		x--; 
	
		printf("Enter column number (1-3): "); 
		scanf("%d", &y); 
		y--; 
	
		if(board[x][y] != ' '){
			printf("Invalid move! \n"); 
		}
		else{
			board[x][y] = PLAYER;
			break;  
		}
	}
	while (board[x][y] != ' '); 
}


void computerMove(){
	
	//Create seed based on current time to generate aleatory moves for the computer 
	srand(time(0)); 
	int x; 
	int y; 
	
	if(checkFreeSpaces() > 0){
		
		do{
			
			x = rand() %3;
			y = rand() %3;
		}
		while(board[x][y] != ' '); 
		
		board[x][y] = COMPUTER; 		
	}
	else{
		printWinner(' '); 
	}
}

char checkWinner(){
	
	//Check rows 
	for(int i = 0; i < 3; i++){
		if(board[i][0] == board[i][1] && board[i][0] == board[i][2] ){
		
			return board[i][0]; 
		}
	}
	
	//Check columns
	for(int i = 0; i < 3; i++){
		if(board[0][i] == board[1][i] && board[0][i] == board[2][i] ){
		
			return board[0][i]; 
		}
	}
	
	//Check diagonals
		if(board[0][0] == board[1][1] && board[0][0] == board[2][2] ){
		
			return board[0][0]; 
	}
	
	//Check other set of diagonals
	if(board[0][2] == board[1][1] && board[0][2] == board[2][0] ){
	
		return board[0][2]; 
	}
	
	//No winner 
	return ' '; 
}	

void printWinner(char winner){
	if(winner == PLAYER){
		printf("VICTORY!\n"); 
	}
	
	else if(winner == COMPUTER){
		printf("DEFEAT\n");
	}
	
	else{
		printf("TIE!\n");
	}
	
}

int main (){
	
	char winner = ' '; 
	char response; 
	
	do{
		
		winner = ' '; 
		response = ' '; 
		resetBoard();
	
		while (winner == ' ' && checkFreeSpaces() != 0){
		
			printBoard(); 
		
			playerMove();
			winner = checkWinner(); 
			if(winner != ' ' || checkFreeSpaces() == 0){
			
				break; 
			}
		
			computerMove();
			winner = checkWinner(); 
			if(winner != ' ' || checkFreeSpaces() == 0){
			
				break; 
			}
		} 
	
		printBoard(); 
		printWinner(winner);
		
		printf("\nWould you like to play again? (Y/N): ");
		scanf("%c"); 
		scanf("%c", &response); 
		response = toupper(response); 
		
	}while(response == 'Y');  
	
	printf("Thanks for playing!"); 
	
	return 0; 
	
	
}