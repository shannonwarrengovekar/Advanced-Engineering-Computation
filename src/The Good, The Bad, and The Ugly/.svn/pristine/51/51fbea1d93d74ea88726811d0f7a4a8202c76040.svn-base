// This file includes the definitions of the pieces and the chess board

#ifndef DEFINITION_HEADER
#define DEFINITION_HEADER

#define BOARD_SIZE 120 
// Includes two levels of padding on top and bottom and one level of padding on the sides

#define MAXGAMEMOVES 2048
// Maximum number of half-moves in a game

#define MAXPOSMOVES 256
// Max number of moves from a configuration 

#define FR2SQ(f,r) ((21 + f) + (r*10))
// Converts file and rank to square number

#define START_CONFIGURATION "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"

#define PIECES_STRING ".PNBRQKpnbrqk"
#define SIDE_STRING "wb-"
#define RANK_STRING "12345678"
#define FILE_STRING "abcdefgh"

// Move Definitions
/*                         	                        
0000 0000 0000 0000 0000 0111 1111 -> From 0x7F
0000 0000 0000 0011 1111 1000 0000 -> To >> 7, 0x7F
0000 0000 0011 1100 0000 0000 0000 -> Captured >> 14, 0xF
0000 0000 0100 0000 0000 0000 0000 -> EP 0x40000
0000 0000 1000 0000 0000 0000 0000 -> Pawn Start 0x80000
0000 1111 0000 0000 0000 0000 0000 -> Promoted Piece >> 20, 0xF
0001 0000 0000 0000 0000 0000 0000 -> Castling 0x1000000
*/

#define FROMSQ(m) ((m) & 0x7F) // Extracting from square
#define TOSQ(m) (((m)>>7) & 0x7F) // Extracting to square
#define CAPTURED(m) (((m)>>14) & 0xF) // Extracting captured piece num
#define PROMOTED(m) (((m)>>20) & 0xF) // Extracting promoted piece num

#define MFLAGEP 0x40000 //Enpassant square flag in Move integer
#define MFLAGPS 0x80000 //Pawn Start flag in Move integer
#define MFLAGCA 0x1000000 //Castling flag in Move integer

#define MFLAGCAP 0x7C000 // Flag for checking pawn capture
#define MFLAGPROM 0xF00000 // Flag for checking promotion

// For move generation
#define MOVE(f,t,c,p,fl) ( (f) | ((t) << 7) | ( (c) << 14 ) | ( (p) << 20 ) | (fl))
// f -from
// t -to
// c -captured
// p -promoted
// fl -flag for pawn start

#include<array>
using namespace std;

// Global Variables
extern const bool big[13];
extern const bool major[13];
extern const bool minor[13];
extern const int score[13];
extern const int color[13];

extern const int knight_dir[8];
extern const int rook_dir[4];
extern const int bishop_dir[4];
extern const int king_dir[8];

// Check if piece is Knight, King, RookQueen, BishopQueen
extern const int pieceKn[13];
extern const int pieceKi[13];
extern const int pieceRQ[13];
extern const int pieceBQ[13];

// Piece definitions
enum{emp, P, N, B, R, Q, K, p, n, b, r, q, k};
// emp - empty
// P - White Pawn
// N - White Knight
// B - White Bishop
// R - White Rook
// Q - White Queen
// K - White King
// p - Black Pawn
// n - Black Knight
// b - Black Bishop
// r - Black Rook
// q - Black Queen
// k - Black King

// Rank definitions
enum{R_1, R_2, R_3, R_4, R_5, R_6, R_7, R_8, R_NONE};

// File definitions
enum{F_A, F_B, F_C, F_D, F_E, F_F, F_G, F_H, F_NONE};

// Colors
enum{WHITE, BLACK, BOTH};

// Value for each chess configuration
enum{A1 = 21, B1, C1, D1, E1, F1, G1, H1, // B1 takes 22, C1 takes 23 and so on
	A2 = 31, B2, C2, D2, E2, F2, G2, H2,
	A3 = 41, B3, C3, D3, E3, F3, G3, H3,
	A4 = 51, B4, C4, D4, E4, F4, G4, H4,
	A5 = 61, B5, C5, D5, E5, F5, G5, H5,
	A6 = 71, B6, C6, D6, E6, F6, G6, H6,
	A7 = 81, B7, C7, D7, E7, F7, G7, H7,
	A8 = 91, B8, C8, D8, E8, F8, G8, H8, NOT_SQUARE, OFF_BOARD};

// Castling Moves
// Using the bit-representation to check the possible castling moves
enum{WK_c = 1, WQ_c = 2, BK_c = 4, BQ_c = 8};	

bool is_big_piece(int index);
bool is_major_piece(int index);
bool is_minor_piece(int index);
int get_score(int index);
int get_color(int index);

void init_file_rank();
int get_file(int index);
int get_rank(int index);

void init_Boards();
void Board64to120(const array<int,64> &input, array<int,BOARD_SIZE> &output);
void Board120to64(const array<int,BOARD_SIZE> &input, array<int,64> &output);
int get_64(int index);
int get_120(int index);

#endif //DEFINITION_HEADER