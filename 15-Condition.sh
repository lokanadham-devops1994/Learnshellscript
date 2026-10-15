#!/bin/bash
echo "Please enter the Marks of the student:"
read marks
# lt- less than
if [ $marks -lt 35 ]; then
    echo "The student has failed-better next time!"
# gt- greater than or less than or equal to
elif [ $marks -ge 35 ] && [ $marks -lt 55 ] && [ $marks -le 55 ]; then
    echo "The student has passed with third grade marks-Keep it up!"
# greater than or Lt- less than or equal to
elif [ $marks -ge 55 ] && [ $marks -lt 65 ] && [ $marks -le 65 ]; then
    echo "The student has passed with second grade marks-Asowme!."
# greater than or Lt- less than or equal to
elif [ $marks -ge 65 ] && [ $marks -lt 75 ] && [ $marks -le 75 ]; then
    echo "The student has passed with first grade marks-Good!."
# ge- greater than or equal to
elif [ $marks -ge 75 ] && [ $marks -le 100 ]; then
    echo "The student has passed with distinction- Excellent!"
else
    echo "Invalid marks entered."
fi  