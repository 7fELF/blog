##
## Makefile for blog in /home/antoine/repos/blog
##
## Made by Antoine Baudrand
## Login   <antoine.baudrand@epitech.eu>
##
## Started on  Sun Jan 14 11:46:42 2018 Antoine Baudrand
## Last update Sun Jan 14 11:46:42 2018 Antoine Baudrand
##

all:
	rm -rf public
	git worktree prune
	git worktree add public gh-pages
	rm -rf public/*
	hugo
	cp CNAME public
	cd public && \
	  git add -A && \
	  git commit -a --amend -m "Release" && \
	  git push -f


