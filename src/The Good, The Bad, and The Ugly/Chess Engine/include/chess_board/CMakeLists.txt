add_library(chess_board chess_board.cpp chess_board.hpp)
target_include_directories(chess_board PUBLIC .)
target_link_libraries(chess_board definitions helper_functions)