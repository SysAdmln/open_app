if test $# -gt 0; #проверка на значение, иначе все программы
  then mdfind $1 "kind:app" | grep -v '/Users/' | awk '{print "\x27" $0 "\x27" }' | fzf -1 -0 --cycle --height=10 | xargs open; 
fi