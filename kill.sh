#!/bin/bash

# Check for parameters
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 [param1] [param2]"
  echo "param1 - Description for param1"
  echo "param2 - Description for param2"
  exit 1
fi

# Function to kill a process with a specific signal
kill_process() {
  read -p "Enter the PID of the process you want to kill: " pid
  read -p "Enter the signal you want to use (e.g., -9, -90, etc.): " signal
  kill $signal $pid
  echo "Process $pid killed with signal $signal."
}

# Function to kill zombie processes
kill_zombie_processes() {
  for pid in $(ps -e -o pid,stat | awk '$2=="Z" {print $1}'); do
    kill -9 $pid
    echo "Zombie process $pid killed."
  done
}

# Main menu
while true; do
  echo "-------------------------------------"
  echo "          Process Manager"
  echo "-------------------------------------"
  echo "1. Kill a process with a specific signal"
  echo "2. Kill zombie processes"
  echo "3. Exit"
  echo "-------------------------------------"

  read -p "Select an option: " option

  case $option in
    1) kill_process ;;
    2) kill_zombie_processes ;;
    3) echo "Exiting..."; exit 0 ;;
    *) echo "Invalid option." ;;
  esac
done
