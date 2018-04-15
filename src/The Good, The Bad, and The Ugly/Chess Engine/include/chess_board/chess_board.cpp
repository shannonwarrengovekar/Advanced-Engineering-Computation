#include <iostream>
#include "chess_board.hpp"
#include "helper_functions.hpp" 

ChessBoard::ChessBoard(){
	cout << "The Chessboard is created" << endl;
}

ChessBoard::~ChessBoard(){
	cout << "The Chessboard is destroyed" << endl;
}

void ChessBoard::reset_board(){

	for (int i=0; i < BOARD_SIZE; ++i){
		configuration[i] = OFF_BOARD;
	}

	for (int i=0; i < 64; ++i){
		configuration[get_120(i)] = emp;
	}

	for (int i=0; i < 3; ++i){
		pawns[i] = 0ULL;
	}

	for (int i=0; i < 13; ++i){
		pieceNum[i] = 0;
	}

	for (int i=0; i < 2; ++i){
		kings[i] = 0;
		bigPiece[i] = 0;
		majorPiece[i] = 0;
		minorPiece[i] = 0;
		score[i] = 0;
	}

	side = BOTH;
	enPas = NOT_SQUARE;
	fiftycount = 0;
	ply = 0;
	historyply = 0; 
	castling = 0;
	position = 0ULL; 

	// Might have to reset the history here

}

void ChessBoard::print_board(){
	int sq,file,rank,piece;

	cout << "Board Configuration" << endl << endl;

	for(rank = R_8; rank >= R_1; rank--) {
		cout << rank + 1 << " ";
		for(file = F_A; file <= F_H; file++) {
			sq = FR2SQ(file,rank);
			piece = this->configuration[sq];
			printf("%3c",PIECES_STRING[piece]);
		}
		cout << endl;
	}

	cout << endl << "  ";
	for(file = F_A; file <= F_H; file++) {
		printf("%3c",'a' + file);	
	}
	cout << endl;
	cout << "Side: " << SIDE_STRING[this->side] << endl;
	cout << "En Passant Square: " << enPas << endl;
	// printf("castle:%c%c%c%c\n",
	// 	pos->castlePerm & WKCA ? 'K' : '-',
	// 	pos->castlePerm & WQCA ? 'Q' : '-',
	// 	pos->castlePerm & BKCA ? 'k' : '-',
	// 	pos->castlePerm & BQCA ? 'q' : '-'	
	// 	);
	cout << "Position Key: " << position << endl;
}

void ChessBoard::update_material_score(){
	int piece,color;
	for (int i=0; i < BOARD_SIZE; ++i){
		piece = configuration[i];
		if (piece != OFF_BOARD && piece != emp){
			color = get_color(piece);
			
			if(is_big_piece(piece))
				this->bigPiece[color]++;
			
			if(is_major_piece(piece))
				this->majorPiece[color]++;

			if(is_minor_piece(piece))
				this->minorPiece[color]++;

			score[color] += get_score(piece);

			this->piece_list[piece][this->pieceNum[piece]] = i;
			this->pieceNum[piece]++;

			if (piece == K)
				kings[WHITE] = i;

			if (piece == k)
				kings[BLACK] = i;

			if(piece==P) {
				set_bit(this->pawns[WHITE],get_64(i));
				set_bit(this->pawns[BOTH],get_64(i));
			} else if(piece==p) {
				set_bit(this->pawns[BLACK],get_64(i));
				set_bit(this->pawns[BOTH],get_64(i));
			}
		}
	}
}

bool ChessBoard::square_attacked(const int sq, const int side){
	int pce,index,t_sq,dir;

	// Pawns
	if(side == WHITE) {
		if(this->configuration[sq-11] == P || this->configuration[sq-9] == P) {
			return true;
		}
	} else {
		if(this->configuration[sq+11] == p || this->configuration[sq+9] == p) {
			return true;
		}	
	}

	// Knights
	for(index = 0; index < 8; ++index) {		
		pce = this->configuration[sq + knight_dir[index]];
		if(pieceKn[pce] && get_color(pce)==side) {
			return true;
		}
	}

	// Rooks, Queens
	for(index = 0; index < 4; ++index) {		
		dir = rook_dir[index];
		t_sq = sq + dir;
		pce = this->configuration[t_sq];
		while(pce != OFF_BOARD) {
			if(pce != emp) {
				if(pieceRQ[pce] && get_color(pce) == side) {
					return true;
				}
				break;
			}
			t_sq += dir;
			pce = this->configuration[t_sq];
		}
	}

	// bishops, queens
	for(index = 0; index < 4; ++index) {		
		dir = bishop_dir[index];
		t_sq = sq + dir;
		pce = this->configuration[t_sq];
		while(pce != OFF_BOARD) {
			if(pce != emp) {
				if(pieceBQ[pce] && get_color(pce) == side) {
					return true;
				}
				break;
			}
			t_sq += dir;
			pce = this->configuration[t_sq];
		}
	}
	
	// kings
	for(index = 0; index < 8; ++index) {		
		pce = this->configuration[sq + king_dir[index]];
		if(pieceKi[pce] && get_color(pce)==side) {
			return true;
		}
	}

	return false;
}

void PieceHashKeys::init_Hash_Keys() {
	
	for(int index1 = 0; index1 < 13; ++index1) {
		for(int index2 = 0; index2 < 120; ++index2) {
			this->piece_keys[index1][index2] = GEN_RAND_64;
		}
	}
	this->side_key = GEN_RAND_64;
	for(int index1 = 0; index1 < 16; ++index1) {
		this->castling_keys[index1] = GEN_RAND_64;
	}
	return;
}


long long int generate_position_key(const ChessBoard &my_board, PieceHashKeys &keys){

	long long int finalKey = 0;
	int piece = emp;
	
	// pieces
	for( int sq = 0; sq < BOARD_SIZE; ++sq) {
		piece = my_board.configuration[sq];
		if(piece!=NOT_SQUARE && piece!=emp) {
			// Might have to Check if (piece>=P && piece<=k)
			finalKey ^= keys.piece_keys[piece][sq];
		}		
	}
	
	if(my_board.side == WHITE) {
		finalKey ^= keys.side_key;
	}

	if(my_board.enPas != NOT_SQUARE) {
		// Might have to Check if (my_board.enPas>=0 && my_board.enPas<BOARD_SIZE)
		finalKey ^= keys.piece_keys[emp][my_board.enPas];
	}
	
	 // Might have to Check if (my_board.castling>=0 && my_board.castling<=15) 
	finalKey ^= keys.castling_keys[my_board.castling];
	
	return finalKey;
}

int parse_configuration(ChessBoard &my_board, char* cur_configuration, PieceHashKeys &keys){
	int  rank = R_8;
	int  file = F_A;
	int  piece = 0;
	int  count = 0;
	int  i = 0; 
	int  sq64 = 0; 
	int  sq120 = 0;
	
	my_board.reset_board();

	while ((rank >= R_1) && *cur_configuration) {
		count = 1;
		switch (*cur_configuration) {
			case 'p': piece = p; 
			break;
			case 'r': piece = r; 
			break;
			case 'n': piece = n; 
			break;
			case 'b': piece = b; 
			break;
			case 'k': piece = k; 
			break;
			case 'q': piece = q;
			break;
			case 'P': piece = P;
			break;
			case 'R': piece = R;
			break;
			case 'N': piece = N; 
			break;
			case 'B': piece = B; 
			break;
			case 'K': piece = K;
			break;
			case 'Q': piece = Q; 
			break;

			case '1':
			case '2':
			case '3':
			case '4':
			case '5':
			case '6':
			case '7':
			case '8':
			piece = emp;
			count = *cur_configuration - '0';
			break;

			case '/':
			case ' ':
			rank--;
			file = F_A;
			cur_configuration++;
			continue;              

			default:
			printf("FEN Parsing Error \n");
			return -1;
		}	

		for (i = 0; i < count; i++) {			
			sq64 = rank * 8 + file;
			sq120 = get_120(sq64);
			if (piece != emp) {
				my_board.configuration[sq120] = piece;
			}
			file++;
		}
		cur_configuration++;

	}
		// Side Information
	if(*cur_configuration == 'w' || *cur_configuration == 'b'){
		if(*cur_configuration == 'w')
			my_board.side = WHITE;
		else
			my_board.side = BLACK;

		cur_configuration += 2;
	}

		// Castling Information
	for (i = 0; i < 4; i++) {
		if (*cur_configuration == ' ') {
			break;
		}

		switch(*cur_configuration) {
			case 'K': my_board.castling |= WK_c;
			break;
			case 'Q': my_board.castling |= WQ_c;
			break;
			case 'k': my_board.castling |= BK_c;
			break;
			case 'q': my_board.castling |= BQ_c;
			break;

			default:	     
			break;
		}
		cur_configuration++;
	}
	cur_configuration++;

	if (*cur_configuration != '-') {        
		file = cur_configuration[0] - 'a';
		rank = cur_configuration[1] - '1';

		my_board.enPas = FR2SQ(file,rank);		
	}

	my_board.position = generate_position_key(my_board, keys); 
	my_board.update_material_score();

	return 0;
}

void print_move_list(const MoveList &my_move_list) {
	int index = 0;
	int score = 0;
	int move = 0;
	printf("MoveList: %d\n",my_move_list.count);
	
	for(index = 0; index < my_move_list.count; ++index) {

		move = my_move_list.moves[index].move;
		score = my_move_list.moves[index].score;
		printf("Move:%d > %s (score:%d)\n",index+1,print_move(move),score);
	}
	printf("MoveList Total %d Moves:\n\n",my_move_list.count);
}

void add_quiet_move(const ChessBoard &my_board, int move_data, MoveList &my_move_list){
	my_move_list.moves[my_move_list.count].move  = move_data;
	my_move_list.moves[my_move_list.count].score  = 0;
	my_move_list.count++;
	return;
}

void add_capture_move(const ChessBoard &my_board, int move_data, MoveList &my_move_list){
	my_move_list.moves[my_move_list.count].move  = move_data;
	my_move_list.moves[my_move_list.count].score  = 0;
	my_move_list.count++;
	return;
}

void add_enpassant_move(const ChessBoard &my_board, int move_data, MoveList &my_move_list){
	my_move_list.moves[my_move_list.count].move  = move_data;
	my_move_list.moves[my_move_list.count].score  = 0;
	my_move_list.count++;
	return;
}

void add_pawn_capture_w(const ChessBoard &my_board, const int from, const int to, const int cap, MoveList &my_move_list) {
	if(get_rank(from) == R_7) {
		add_capture_move(my_board, MOVE(from,to,cap,Q,0), my_move_list);
		add_capture_move(my_board, MOVE(from,to,cap,R,0), my_move_list);
		add_capture_move(my_board, MOVE(from,to,cap,B,0), my_move_list);
		add_capture_move(my_board, MOVE(from,to,cap,N,0), my_move_list);
	} else {
		add_capture_move(my_board, MOVE(from,to,cap,emp,0), my_move_list);
	}
}

void add_pawn_move_w(const ChessBoard &my_board, const int from, const int to, MoveList &my_move_list) {
	if(get_rank(from) == R_7) {
		add_quiet_move(my_board, MOVE(from,to,emp,Q,0), my_move_list);
		add_quiet_move(my_board, MOVE(from,to,emp,R,0), my_move_list);
		add_quiet_move(my_board, MOVE(from,to,emp,B,0), my_move_list);
		add_quiet_move(my_board, MOVE(from,to,emp,N,0), my_move_list);
	} else {
		add_quiet_move(my_board, MOVE(from,to,emp,emp,0), my_move_list);
	}
}

void add_pawn_capture_b(const ChessBoard &my_board, const int from, const int to, const int cap, MoveList &my_move_list) {
	if(get_rank(from) == R_2) {
		add_capture_move(my_board, MOVE(from,to,cap,q,0), my_move_list);
		add_capture_move(my_board, MOVE(from,to,cap,r,0), my_move_list);
		add_capture_move(my_board, MOVE(from,to,cap,b,0), my_move_list);
		add_capture_move(my_board, MOVE(from,to,cap,n,0), my_move_list);
	} else {
		add_capture_move(my_board, MOVE(from,to,cap,emp,0), my_move_list);
	}
}

void add_pawn_move_b(const ChessBoard &my_board, const int from, const int to, MoveList &my_move_list) {
	if(get_rank(from) == R_2) {
		add_quiet_move(my_board, MOVE(from,to,emp,q,0), my_move_list);
		add_quiet_move(my_board, MOVE(from,to,emp,r,0), my_move_list);
		add_quiet_move(my_board, MOVE(from,to,emp,b,0), my_move_list);
		add_quiet_move(my_board, MOVE(from,to,emp,n,0), my_move_list);
	} else {
		add_quiet_move(my_board, MOVE(from,to,emp,emp,0), my_move_list);
	}
}


void generate_moves(const ChessBoard &my_board, MoveList &my_move_list){
	
	my_move_list.count = 0;	
	
	int pce = emp;
	int side = my_board.side;
	int sq = 0; int t_sq = 0;
	int pceNum = 0;

	if(side == WHITE) {
		for(pceNum = 0; pceNum < my_board.pieceNum[P]; ++pceNum) {
			sq = my_board.piece_list[P][pceNum];

			if(my_board.configuration[sq + 10] == emp) {
				add_pawn_move_w(my_board, sq, sq+10, my_move_list);
				if(get_rank(sq) == R_2 && my_board.configuration[sq + 20] == emp) {
					add_quiet_move(my_board, MOVE(sq,(sq+20),emp,emp,MFLAGPS),my_move_list);
				}
			} 
			
			if(!(my_board.configuration[sq + 9] == OFF_BOARD) && color[my_board.configuration[sq + 9]] == BLACK) {
				add_pawn_capture_w(my_board, sq, sq+9, my_board.configuration[sq + 9], my_move_list);
			}  
			if(!(my_board.configuration[sq + 11] == OFF_BOARD) && color[my_board.configuration[sq + 11]] == BLACK) {
				add_pawn_capture_w(my_board, sq, sq+11, my_board.configuration[sq + 11], my_move_list);
			} 
			
			if(sq + 9 == my_board.enPas) {
				add_capture_move(my_board, MOVE(sq,sq + 9,emp,emp,MFLAGEP), my_move_list);
			} 
			if(sq + 11 == my_board.enPas) {
				add_capture_move(my_board, MOVE(sq,sq + 11,emp,emp,MFLAGEP), my_move_list);
			}		
		}
	}
	else{
		for(pceNum = 0; pceNum < my_board.pieceNum[p]; ++pceNum) {
			sq = my_board.piece_list[p][pceNum];

			if(my_board.configuration[sq - 10] == emp) {
				add_pawn_move_b(my_board, sq, sq-10, my_move_list);
				if(get_rank(sq) == R_7 && my_board.configuration[sq - 20] == emp) {
					add_quiet_move(my_board, MOVE(sq,(sq-20),emp,emp,MFLAGPS),my_move_list);
				}
			} 
			
			if(!(my_board.configuration[sq - 9] == OFF_BOARD) && color[my_board.configuration[sq - 9]] == WHITE) {
				add_pawn_capture_b(my_board, sq, sq-9, my_board.configuration[sq - 9], my_move_list);
			}  
			if(!(my_board.configuration[sq - 11] == OFF_BOARD) && color[my_board.configuration[sq - 11]] == WHITE) {
				add_pawn_capture_b(my_board, sq, sq-11, my_board.configuration[sq - 11], my_move_list);
			} 
			
			if(sq - 9 == my_board.enPas) {
				add_capture_move(my_board, MOVE(sq,sq - 9,emp,emp,MFLAGEP), my_move_list);
			} 
			if(sq - 11 == my_board.enPas) {
				add_capture_move(my_board, MOVE(sq,sq - 11,emp,emp,MFLAGEP), my_move_list);
			}	
		}
	}


}