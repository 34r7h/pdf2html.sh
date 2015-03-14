#!/bin/bash

function pdf2html {
  if [ ${#1} -gt 99 ]
  then
  	echo "too many"
  	echo ${1:0:99}
  	DIR=${1:0:99}_
  	echo $DIR
  else
  	DIR=$1_
  fi
  pdf2htmlEX --embed cfijo --dest-dir $DIR $1
  cd $DIR
  for i in *.html
  do 
    echo $i
	mv $i index.html
  done
  git init
  hub create $DIR
  git add .
  git commit -m "$DIR"
  git push origin master
  git checkout --orphan gh-pages
  git add .
  git commit -m "$DIR"
  git push origin gh-pages
  cd ..
  rm -rf $DIR
  echo adding $DIR to the list.js 
  echo $DIR >> "list.js"
}

  for f in *.pdf
  do
    echo $f
	pdf2html $f
  done
