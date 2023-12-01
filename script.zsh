# Add these to your ~/.bash_aliases
#!/bin/zsh
 AOC="~/Documents/advent-of-code" # remember to change this to whatever your AOC directory is
 AOC_COOKIE="..." # get this from the cookies tab in network tools on the AOC website

alias eaos="cd $AOC; mix solution.ex < in.txt"
alias eaot="cd $AOC; mix solution.ex < test.txt"
alias eaot="eaot; echo; eaos"

aoc_load(){
    if [ $1 ]
    then
        curl --cookie "session=$AOC_COOKIE" https://adventofcode.com/$1/day/$2/input > in.txt
    else
        curl --cookie "session=$AOC_COOKIE" `date +https://adventofcode.com/%Y/day/%d/input` > in.txt
    fi
}
