#!/bin/bash

list=("Marsal, Assignment 1, submitted" "John, Assignment 3, not submitted" "Doe, Assignment 1, not submitted" "Hello, Assignment 2, not submitted" "Jane, Assignment 4, submitted")
script=("#!/bin/bash" "source ./app/reminder.sh")
mkdir -p submission_reminder_app/app
touch submission_reminder_app/app/reminder.sh
chmod u+x submission_reminder_app/app/reminder.sh
mkdir -p submission_reminder_app/modules
touch submission_reminder_app/modules/functions.sh
mkdir -p submission_reminder_app/assets
chmod u+x submission_reminder_app/modules/functions.sh
mv submissions.txt submission_reminder_app/assets/
for i in "${list[@]}"; do
  echo $i >> submission_reminder_app/assets/submissions.txt
done
mkdir -p submission_reminder_app/config
touch submission_reminder_app/config/config.env
touch submission_reminder_app/startup.sh
for a in "${script[@]}"; do
  echo $a >> submission_reminder_app/startup.sh
done
chmod u+x submission_reminder_app/startup.sh
