#!/bin/bash
PS3="Select item please: "

items=("created 5 file" "add hello world to all file" "replace bash with world")

while true; do
  select item in "${items[@]}" Quit; do
    case $REPLY in
    1)
      for i in {1..5}; do
        touch $i.txt
      done
      break
      ;;
    2)
      for i in {1..5}; do
        echo "hello world" >>$i.txt
      done
      break
      ;;
    3)
      for i in {1..5}; do
        sed 's/world/bash/g' $i.txt | cat >$i.txt
      done
      break
      ;;
    $((${#items[@]} + 1)))
      echo "We're done!"
      break 2
      ;;
    *)
      echo "Ooops - unknown choice $REPLY"
      break
      ;;
    esac
  done
done
