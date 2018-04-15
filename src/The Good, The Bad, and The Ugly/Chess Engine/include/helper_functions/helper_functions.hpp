#ifndef HELPER_FUNCTIONS
#define HELPER_FUNCTIONS

#define GEN_RAND_64 (((long long int)rand()) | \
((long long int)rand() << 15 ) | \
((long long int)rand() << 30) | \
((long long int)rand() << 45) | \
(((long long int)rand() & 0xf) << 60))

int count_bits(long long int num);
void set_bit(long long int &num, int index);
void clear_bit(long long int &num, int index);

void print_bit_board(long long int num);

char *print_square(const int square);
char *print_move(const int move);

#endif //HELPER_FUNCTIONS