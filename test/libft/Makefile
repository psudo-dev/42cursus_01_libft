# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rsetoue <rsetoue@student.42sp.org.br>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/01 21:31:08 by rsetoue           #+#    #+#              #
#    Updated: 2021/12/02 22:30:24 by rsetoue          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	make -C ..

bonus:
	make -C .. bonus

clean:
	make -C .. clean

fclean:
	make -C .. fclean

re:
	make -C .. re

norm:
	${MSG} ${FG_LAV} "running norminette" ${RESET}
	@norminette -R CheckForbiddenSourceHeader
	${MSG_FINISHED}
	${MSG}
	${MSG}
	${MSG}
	${MSG}

.PHONY: all clean fclean re norm
