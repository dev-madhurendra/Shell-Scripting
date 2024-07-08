#! /bin/bash

PS3="Choose an action: "

select action in "List files" "Show current directory" "Display date" "Quit"; 
do
  case $action in
    "List files")
      ls
      ;;
    "Show current directory")
      pwd
      ;;
    "Display date")
      date
      ;;
    "Quit")
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid selection."
      ;;
  esac
done
