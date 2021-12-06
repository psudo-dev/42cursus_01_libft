# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rsetoue <rsetoue@student.42sp.org.br>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/19 20:40:41 by rsetoue           #+#    #+#              #
#    Updated: 2021/12/03 22:22:53 by rsetoue          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBFT :=			libft
LIBFT_A :=			libft.a

BIN_DIR :=			bin
SRC_DIR :=			src
OBJ_DIR :=			build
INC_DIR :=			inc
TEST_DIR :=			test
ALL_DIR :=			${BIN_DIR} \
					${SRC_DIR} \
					${OBJ_DIR} \
					${INC_DIR}

NAME =				${BIN_DIR}/${LIBFT_A}

SRC_FILES =			ft_atoi.c \
					ft_calloc.c \
					ft_isalpha.c \
					ft_isdigit.c \
					ft_memcpy.c \
					ft_memcmp.c \
					ft_memmove.c \
					ft_strchr.c \
					ft_strlcat.c \
					ft_strlen.c \
					ft_strnstr.c \
					ft_tolower.c \
					ft_bzero.c \
					ft_isalnum.c \
					ft_isascii.c \
					ft_isprint.c \
					ft_memchr.c \
					ft_memset.c \
					ft_strdup.c \
					ft_strlcpy.c \
					ft_strncmp.c \
					ft_strrchr.c \
					ft_toupper.c \
					ft_substr.c \
					ft_strjoin.c \
					ft_strtrim.c \
					ft_split.c \
					ft_itoa.c \
					ft_strmapi.c \
					ft_striteri.c \
					ft_putchar_fd.c \
					ft_putstr_fd.c \
					ft_putendl_fd.c \
					ft_putnbr_fd.c \
					ft_lstnew.c \
					ft_lstadd_front.c \
					ft_lstsize.c \
					ft_lstlast.c \
					ft_lstadd_back.c \
					ft_lstclear.c \
					ft_lstdelone.c \
					ft_lstiter.c \
					ft_lstmap.c \
					ft_isspace.c \
					ft_strcpy.c \
					ft_str_tolower.c \
					ft_str_toupper.c \
					ft_nbr_len.c \
					ft_nbr_ulen.c \
					ft_ll_itoa.c \
					ft_ll_utoa.c \
					ft_itoh.c \
					ft_chr_index.c

SRC :=				${addprefix ${SRC_DIR}/,${SRC_FILES}}
OBJ :=				${addprefix ${OBJ_DIR}/,${SRC_FILES:.c=.o}}
LIBFT_H =			${INC_DIR}/${LIBFT}.h

CC =				@clang
CFLAGS =			-Wall -Wextra -Werror
AR =				@ar -rc
RANLIB =			@ranlib
RM_FILE :=			@rm -f
RM_FOLDER :=		@rm -rf
MSG =				@echo

# < RECIPES
${NAME}: ${ALL_DIR} ${OBJ}
	${MSG_COMPILING}
	${AR} ${NAME} ${OBJ}
	${DONE}
	${MSG_INDEX_LIB}
	${RANLIB} ${NAME}
	${DONE}
	@cp -f ${NAME} .
	${MSG_FINISHED}

${OBJ_DIR}/%.o: ${SRC_DIR}/%.c ${LIBFT_H}
	${CC} ${CFLAGS} -I${INC_DIR} -c $< -o $@

all: msg_building ${NAME}

${ALL_DIR}:
	@mkdir -p ${ALL_DIR}

clean: clean_build
	${MSG_FINISHED}

fclean: clean_build clean_program
	${MSG_FINISHED}

re: msg_rebuilding clean_build clean_program all

norm:
	${MSG} ${FG_LAV} "running norminette" ${RESET}
	@norminette -R CheckForbiddenSourceHeader
	${MSG_FINISHED}
	${MSG}
	${MSG}
	${MSG}

retest: rebuild_test

.PHONY: all clean fclean re

# : CLEANING
clean_build: msg_cleaning
	${RM_FILE} ${OBJ}
	${DONE}

clean_program: msg_fcleaning
	${RM_FILE} ${NAME} ${LIBFT_A}
	${DONE}

# ? TESTS

TRIPOUILLE_DIR :=	${TEST_DIR}/tripouille
UNIT_DIR :=			${TEST_DIR}/unit
LIBFTEST_DIR :=			${TEST_DIR}/libftest

${TRIPOUILLE_DIR}:
	@git clone \
	https://github.com/Tripouille/libftTester.git \
	${TRIPOUILLE_DIR}
	${MSG_FINISHED}

${UNIT_DIR}:
	@git clone \
	https://github.com/alelievr/libft-unit-test.git \
	${UNIT_DIR}
	${MSG_FINISHED}

${LIBFTEST_DIR}:
	@git clone \
	https://github.com/jtoty/Libftest.git \
	${LIBFTEST_DIR}
	${MSG_FINISHED}

test: norm ${UNIT_DIR} ${LIBFTEST_DIR} ${TRIPOUILLE_DIR}
	${MAKE} -C ${TEST_DIR}
	${MAKE} -C ${UNIT_DIR}
t: test

mandatory_tests: test ${UNIT_DIR} ${LIBFTEST_DIR} ${TRIPOUILLE_DIR}
	${MSG} ${FG_LAV} "running libft unit tests: MANDATORY" ${RESET}
	${MAKE} f -C ${UNIT_DIR}
	${MSG} ${FG_LAV} "running tripouille tests: MANDATORY" ${RESET}
	${MAKE} m -C ${TRIPOUILLE_DIR}
m: mandatory_tests

bonus_tests: ${UNIT_DIR} ${LIBFTEST_DIR} ${TRIPOUILLE_DIR}
	${MSG} ${FG_LAV} "running libft unit tests: BONUS" ${RESET}
	${MAKE} f -C ${UNIT_DIR}
	${MSG} ${FG_LAV} "running tripouille tests: BONUS" ${RESET}
	${MAKE} b -C ${TRIPOUILLE_DIR}
b: bonus_tests

all_tests: ${UNIT_DIR} ${LIBFTEST_DIR} ${TRIPOUILLE_DIR}
	${MSG} ${FG_LAV} "running libft unit tests: ALL" ${RESET}
	${MAKE} f -C ${UNIT_DIR}
	${MSG} ${FG_LAV} "running tripouille tests: ALL" ${RESET}
	${MAKE} a -C ${TRIPOUILLE_DIR}
a: all_tests

clean_test:
	${MSG} ${FG_PINK} "make clean_test tests" ${RESET}
	${MAKE} clean -C ${TEST_DIR}
c: clean_test

fclean_test:
	${MSG} ${FG_PINK} "make fclean_test tests" ${RESET}
	${MAKE} fclean -C ${TEST_DIR}
f: fclean_test

rebuild_test:
	${MSG} ${FG_PINK} "make rebuild_test tests" ${RESET}
	${MAKE} re -C ${TEST_DIR}
	${MSG_FINISHED}
r: rebuild_test

delete_test: fclean_test
	${MSG} ${FG_PINK} "Removing ${TRIPOUILLE_DIR} Folder" ${RESET} ${NO_NL}
	${RM_FOLDER} ${TRIPOUILLE_DIR}
	${DONE}
	${MSG} ${FG_PINK} "Removing ${UNIT_DIR} Folder" ${RESET} ${NO_NL}
	${RM_FOLDER} ${UNIT_DIR}
	${DONE}
	${MSG} ${FG_PINK} "Removing ${LIBFTEST_DIR} Folder" ${RESET} ${NO_NL}
	${RM_FOLDER} ${LIBFTEST_DIR}
	${DONE}
	${RM_FILE} ${TEST_DIR}/libft.h ${TEST_DIR}/${LIBFT}/libft.h
	${RM_FILE} ${TEST_DIR}/libft.a ${TEST_DIR}/${LIBFT}/libft.a
	${MSG_FINISHED}
d: delete_test

exit: fclean delete_test
e: exit

# ~ MESSAGES
FG_GREEN :=			"\033[38;2;73;242;73m"
FG_BLUE :=			"\033[38;2;80;182;255m"
FG_YELLOW :=		"\033[38;2;230;230;72m"
FG_GREY :=			"\033[38;2;144;150;160m"
FG_PINK :=			"\033[38;2;255;102;204m"
FG_LAV :=			"\033[38;2;170;128;255m"
FG_ORANGE :=		"\033[38;2;255;167;64m"

MSG :=				@echo
RESET :=			"\033[0m"
NO_NL :=			| tr -d '\n'
DONE :=				${MSG} ${FG_GREEN} "✔" ${RESET}

# : 				"code[
# ~ 				48;2 (background color)
# ~ 				38;2 (foreground color)
# > 				;R;G;B
# < 				m
# ? 				\033[0m" (reset)

MSG_INDEX_LIB =		${MSG} ${FG_GREY} "Indexing ${LIBFT} library..." \
					${RESET} ${NO_NL}
MSG_BUILD_LIB =		${MSG} ${FG_YELLOW} "Building ${LIBFT} library..." \
					${RESET} ${NO_NL}
MSG_COMPILING =		${MSG} ${FG_YELLOW} "Compiling ${LIBFT}..." \
					${RESET} ${NO_NL}
MSG_BUILDING =		${MSG} ${FG_ORANGE} "Building ${LIBFT} files..." \
					${RESET}
MSG_REBUILDING =	${MSG} ${FG_PINK} "Rebuilding executable..." \
					${RESET}
MSG_CLEANING =		${MSG} ${FG_BLUE} "Cleaning ${LIBFT} Build..." \
					${RESET} ${NO_NL}
MSG_FCLEANING =		${MSG} ${FG_BLUE} "Cleaning ${LIBFT} Program..." \
					${RESET} ${NO_NL}
MSG_FINISHED	=	${MSG} ${FG_GREEN} "Finished!" \
					${RESET}

msg_compiling:
	${MSG_COMPILING}
msg_building:
	${MSG_BUILDING}
msg_rebuilding:
	${MSG_REBUILDING}
msg_cleaning:
	${MSG_CLEANING}
msg_fcleaning:
	${MSG_FCLEANING}
msg_create_dir:
	${MSG_CREATE_DIR}
done:
	${DONE}
