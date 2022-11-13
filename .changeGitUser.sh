#!/bin/bash

if [ -e $HOME/.gitconfig_privat ] then
	mv $HOME/.gitconfig $HOME/.gitconfig_uni
	mv $HOME/.gitconfig_privat $HOME/.gitconfig
	echo Now using private profile
else
	mv $HOME/.gitconfig $HOME/.gitconfig_privat
	mv $HOME/.gitconfig_uni $HOME/.gitconfig
	echo Now using uni profile
fi
