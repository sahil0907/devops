if [ condition ]; then
  # code if condition is true
fi

if [ $age -gt 18 ]; then
  echo "You are an adult."
fi


if [ condition ]; then
  # code if true
else
  # code if false
fi


if [ $age -gt 18 ]; then
  echo "Adult"
else
  echo "Minor"
fi


if [ condition1 ]; then
  # code block 1
elif [ condition2 ]; then
  # code block 2
else
  # fallback code
fi


if [ $marks -ge 90 ]; then
  echo "Grade: A"
elif [ $marks -ge 75 ]; then
  echo "Grade: B"
else
  echo "Grade: C"
fi


if [[ $name == "Sahil" ]]; then
  echo "Hello Sahil!"
fi


if (( a > b )); then
  echo "a is greater"
fi


