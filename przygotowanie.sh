#!/usr/bin/env bash
rm -r dir0

mkdir dir0
mkdir dir0/dir01
mkdir dir0/dir10
mkdir dir0/dir11
mkdir dir0/dir01/dir100
mkdir dir0/dir01/dir101
mkdir dir0/dir10/dir110
mkdir dir0/dir10/dir111

touch dir0/dir01/file01
touch dir0/dir01/file10
touch dir0/dir01/file11

touch dir0/dir10/file101.cpp
touch dir0/dir10/file110.c
touch dir0/dir10/file111.cpp

echo "Ala ma kota" > dir0/dir01/file01

tree dir0
