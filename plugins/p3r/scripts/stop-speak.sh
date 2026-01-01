#!/usr/bin/env bash

if [ "$CLAUDE_SPEAK" = "1" ]; then
  # Array of completion messages
  messages=(
    "finished and ready for the next task"
    "all done and standing by"
    "task completed and awaiting your command"
    "finished processing and ready to go"
    "work complete and ready for action"
    "all set and ready for your next request"
    "done and ready to assist"
    "task finished and awaiting instructions"
    "completed successfully and ready"
    "all wrapped up and standing by"
    "mission accomplished and awaiting orders"
    "job done and ready to roll"
    "execution complete and standing ready"
    "all finished up and good to go"
    "task accomplished and at your service"
    "processing complete and ready for more"
    "work concluded and awaiting your next move"
    "successfully completed and ready to proceed"
    "all tasks finished and ready for action"
    "operation complete and standing by for instructions"
  )

  # Randomly select a message
  random_index=$((RANDOM % ${#messages[@]}))
  selected_message="${messages[$random_index]}"

  say -v Alex "$selected_message" -r 200
else
  echo "Claude speaking disabled. Set CLAUDE_SPEAK=1 to enable"
fi
