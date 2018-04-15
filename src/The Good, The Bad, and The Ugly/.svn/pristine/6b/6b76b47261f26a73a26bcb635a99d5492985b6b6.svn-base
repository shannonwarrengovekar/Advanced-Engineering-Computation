#include<array>
#include<iostream>
#include <stdlib.h> 
#include "definitions.hpp"
#include "helper_functions.hpp"

using namespace std;

// Counts number of ones in a bitboard
int count_bits(long long int num){
	int bits;
	for (bits = 0; num; bits++, num, num &= num-1);
		return bits;
}

// Sets the index bit on the bitboard
void set_bit(long long int &num, int index){
	long long int mask = 0ULL;
	mask |= (1ULL << index);
	num |= mask;
	return;
}

// Clears the index bit on the bitboard
void clear_bit(long long int &num, int index){
	long long int mask = 0ULL;
	mask |= (1ULL << index);
	mask = ~mask;
	num &= mask;
	return;
}

void print_bit_board(long long int num){

	int file, rank, square;

	for (rank = R_8; rank >= R_1; --rank){
		for (file = F_A; file <= F_H; ++file){
			square = get_64(FR2SQ(file,rank));
			if ((1ULL << square) & (num)) // is non-zero
				cout << "X" ;
			else
				cout << "-";
		}
		cout << endl;
	}

	cout << endl << endl;
	return;
}

char *print_square(const int square){
	static char square_string[3];
	int file = get_file(square);
	int rank = get_rank(square);
	sprintf(square_string, "%c%c", ('a'+file), ('1'+rank));
	return square_string;
}

char *print_move(const int move) {

	static char move_string[6];
	
	int ff = get_file(FROMSQ(move));
	int rf = get_rank(FROMSQ(move));
	int ft = get_file(TOSQ(move));
	int rt = get_rank(TOSQ(move));
	
	int promoted = PROMOTED(move);
	
	if(promoted) {
		char pchar = 'q';
		if(pieceKn[promoted]) {
			pchar = 'n';
		} else if(pieceRQ[promoted] && !pieceBQ[promoted])  {
			pchar = 'r';
		} else if(!pieceRQ[promoted] && pieceBQ[promoted])  {
			pchar = 'b';
		}
		sprintf(move_string, "%c%c%c%c%c", ('a'+ff), ('1'+rf), ('a'+ft), ('1'+rt), pchar);
	} else {
		sprintf(move_string, "%c%c%c%c", ('a'+ff), ('1'+rf), ('a'+ft), ('1'+rt));
	}
	
	return move_string;
}