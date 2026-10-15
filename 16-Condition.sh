#!/Bin/bash
echo "Please enter the Marks of the student:"
read marks
# lt- less than
if [ $marks -lt 35 ]; then
    echo "The student has failed."
# gt- greater than
elif [ $marks -gt 35 ] && [ $marks -lt 75 ]; then
    echo "The student has passed."
# ge- greater than or equal to
elif [ $marks -ge 75 ] && [ $marks -le 100 ]; then
    echo "The student has passed with distinction."
else
    echo "Invalid marks entered."
fi