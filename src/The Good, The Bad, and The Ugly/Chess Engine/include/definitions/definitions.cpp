#include "definitions.hpp"
#include<array>
#include <iostream>
using namespace std;

array<int,BOARD_SIZE> square_120_to_64;
array<int,64> square_64_to_120;

array<int,BOARD_SIZE> File_Number;
array<int,BOARD_SIZE> Rank_Number;

const bool big[13] = {false, false, true, true, true, true, true, false, true, true, true, true, true};
const bool major[13] = {false, false, false, false, true, true, true, false, false, false, true, true, true};
const bool minor[13] = {false, false, true, true, false, false, false, false, true, true, false, false, false};
const int score[13] = {0, 100, 325, 325, 550, 1000, 50000, 100, 325, 325, 550, 1000, 50000};
const int color[13] = {BOTH, WHITE, WHITE, WHITE, WHITE, WHITE, WHITE, BLACK, BLACK, BLACK, BLACK, BLACK, BLACK};

// Directions for movements
const int knight_dir[8] = {-8, -19, -21, -12, 8, 19, 21, 12};
const int rook_dir[4] =  {-1, -10, 1, 10};
const int bishop_dir[4] = {-9, -11, 11, 9};
const int king_dir[8] = {-1, -10, 1, 10, -9, -11, 11, 9};

// Check if piece is Knight, King, RookQueen, BishopQueen
const int pieceKn[13] = { false, false, true, false, false, false, false, false, true, false, false, false, false };
const int pieceKi[13] = { false, false, false, false, false, false, true, false, false, false, false, false, true };
const int pieceRQ[13] = { false, false, false, false, true, true, false, false, false, false, true, true, false };
const int pieceBQ[13] = { false, false, false, true, false, true, false, false, false, true, false, true, false };


bool is_big_piece(int index){
	return big[index];
}

bool is_major_piece(int index){
	return major[index];
}

bool is_minor_piece(int index){
	return minor[index];
}

int get_score(int index){
	return score[index];
}

int get_color(int index){
	return color[index];
}

void init_file_rank(){
	int sq,file,rank;
	for (int i=0; i < BOARD_SIZE; ++i){
		File_Number[i] = OFF_BOARD;
		Rank_Number[i] = OFF_BOARD;
	}

	for(rank = R_8; rank >= R_1; rank--) {
		for(file = F_A; file <= F_H; file++) {
			sq = FR2SQ(file,rank);
			File_Number[sq] = file;
			Rank_Number[sq] = rank;
		}	
	}

	// for (int i = 0; i < BOARD_SIZE; ++i){
	
	// 	if(i%10 ==0 && i!=0)
	// 		cout << endl;
	// 	cout <<  Rank_Number[i] << "  ";
	// }
}

int get_file(int index){
	return File_Number[index];
}

int get_rank(int index){
	return Rank_Number[index];
}

void Board64to120(const array<int,64> &input, array<int,BOARD_SIZE> &output){

	int file, rank, square;
	int square64 = 0;

	for (rank = R_1; rank <= R_8; ++rank){
		for (file = F_A; file <= F_H; ++file){
			square = FR2SQ(file,rank);
			output[square] = square64;
			square64++;
		}
	}

	return;
}

void Board120to64(const array<int,BOARD_SIZE> &input, array<int,64> &output){

	int file, rank, square;
	int square64 = 0;

	for (rank = R_1; rank <= R_8; ++rank){
		for (file = F_A; file <= F_H; ++file){
			square = FR2SQ(file,rank);
			output[square64] = square;
			square64++;
		}
	}

	return;
}

void init_Boards(){

	int index = 0;

	for (index = 0; index < BOARD_SIZE; ++index){
		square_120_to_64[index] = 65;
	}

	for (index = 0; index < 64; ++index){
		square_64_to_120[index] = 120;
	}

	Board120to64(square_120_to_64, square_64_to_120);
	Board64to120(square_64_to_120, square_120_to_64);

	return;
}


int get_64(int index){
	return square_120_to_64[index];
}

int get_120(int index){
	return square_64_to_120[index];
}