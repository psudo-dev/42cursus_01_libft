# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rsetoue <rsetoue@student.42sp.org.br>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/05 16:36:06 by rsetoue           #+#    #+#              #
#    Updated: 2021/12/02 22:30:57 by rsetoue          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# < Files
NAME =				libft.a
LIBFT_H =			libft.h
SRC =				*.c
OBJ =				*.o

# > Commands
MAKE :=				@make
CC :=				@clang
CFLAGS :=			-Wall -Wextra -Werror
AR :=				@ar -rcs
RANLIB :=			@ranlib
RM_FILE :=			@rm -f
RM_FOLDER :=		@rm -rf

# ? Directories
TEST_DIR :=			.
ROOT_DIR =			..
INC =				inc
LIBFT =				libft

${NAME}: ${INC}
	${MSG} ${FG_GREY} "Copying libft files" ${RESET} ${NO_NL}
	@cp ../src/${SRC} ${TEST_DIR}
	${DONE}
	${MSG} ${FG_YELLOW} "Compiling files" ${RESET} ${NO_NL}
	${CC} ${CFLAGS} -c -I${INC} ${SRC}
	${DONE}
	${MSG} ${FG_YELLOW} "Building Static Library" ${RESET} ${NO_NL}
	${AR} ${NAME} ${OBJ}
	${DONE}
	${MSG} ${FG_GREY} "Indexing Library" ${RESET} ${NO_NL}
	${RANLIB} ${NAME}
	@cp ${NAME} ${LIBFT}
	${DONE}
	${MSG} ${FG_GREEN} "Finished!" ${RESET}

${INC}: ../inc/${LIBFT_H}
	@mkdir -p ${INC}
	${MSG} ${FG_LAV} "Building Tests" ${RESET}
	${MSG} ${FG_GREY} "Copying ${LIBFT_H}" ${RESET} ${NO_NL}
	@cp ../inc/${LIBFT_H} ${INC}
	@cp ../inc/${LIBFT_H} ${LIBFT}
	@cp ../inc/${LIBFT_H} ${TEST_DIR}
	${DONE}

all: ${NAME}

bonus: all

clean:
	${MSG} ${FG_BLUE} "Removing object files" ${RESET} ${NO_NL}
	${RM_FILE} ${OBJ}
	${DONE}

fclean: clean
	${MSG} ${FG_BLUE} "Removing header files" ${RESET} ${NO_NL}
	${RM_FOLDER} ${INC}
	${RM_FILE} ${LIBFT_H}
	${DONE}
	${MSG} ${FG_BLUE} "Removing source files" ${RESET} ${NO_NL}
	${RM_FILE} ${SRC}
	${DONE}
	${MSG} ${FG_BLUE} "Removing ${NAME}" ${RESET} ${NO_NL}
	${RM_FILE} libft.a libft.h libft/libft.h libft/libft.a
	${DONE}

re: rebuilding_msg fclean all

rebuilding_msg:
	${MSG} ${FG_LAV} "Rebuilding Tests" ${RESET}
	
norm:
	${MSG} ${FG_LAV} "running norminette" ${RESET}
	@norminette -R CheckForbiddenSourceHeader
	${MSG_FINISHED}
	${MSG}
	${MSG}
	${MSG}
	${MSG}

.PHONY: all clean fclean

# ? Messages
FG_GREEN =			"\033[38;2;73;242;73m"
FG_BLUE =			"\033[38;2;80;182;255m"
FG_YELLOW =			"\033[38;2;230;230;72m"
FG_GREY =			"\033[38;2;144;150;160m"
FG_PINK =			"\033[38;2;255;102;204m"
FG_LAV =			"\033[38;2;170;128;255m"
FG_ORANGE =			"\033[38;2;255;167;64m"

MSG =				@echo
RESET =				"\033[0m"
NO_NL :=			| tr -d '\n'
DONE :=				${MSG} ${FG_GREEN} "✔" ${RESET}

# :					"code[
# ~					48;2 (background color)
# ~					38;2 (foreground color)
# >					;R;G;B
# <					m
# ?					\033[0m" (reset)
