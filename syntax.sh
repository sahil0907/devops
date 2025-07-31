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

case $variable in
  pattern1)
    # code
    ;;
  pattern2)
    # code
    ;;
  *)
    # default
    ;;
esac

read -p "Enter choice: " choice
case $choice in
  1) echo "Start";;
  2) echo "Stop";;
  *) echo "Invalid choice";;
esac


for file in *.txt; do
    echo "Processing $file"
done

for i in 1 2 3 4 5; do
    echo "Number: $i"
done


for (( i=0; i<5; i++ )); do
    echo "Index: $i"
done





I can't directly create a .txt file for you, but I can give you the entire content from the previous explanation of Bash scripting syntaxes in a single block. You can then easily copy and paste this into any text editor (like Notepad on Windows, TextEdit on macOS, or nano/vim on Linux) and save it as a .txt file.

Here's the full content:

There's a vast world of Bash scripting syntaxes beyond just loops and conditionals! Here's a breakdown of other essential categories and specific syntaxes, along with examples:

---

## 1. Variable Declaration and Manipulation

* **Declaration:** No explicit declaration keyword. Just assign a value.
    ```bash
    my_variable="Hello World"
    another_number=123
    ```
* **Accessing Variables:** Use `$` before the variable name.
    ```bash
    echo $my_variable
    echo "The number is: ${another_number}" # Braces for clarity, especially when concatenating
    ```
* **Default Values:**
    ```bash
    echo "User: ${USERNAME:-default_user}" # Uses default_user if USERNAME is unset or null
    ```
* **Parameter Expansion (various forms):**
    * `${variable#pattern}`: Remove shortest matching prefix.
    * `${variable##pattern}`: Remove longest matching prefix.
    * `${variable%pattern}`: Remove shortest matching suffix.
    * `${variable%%pattern}`: Remove longest matching suffix.
    * `${variable/pattern/replacement}`: Replace first match.
    * `${variable//pattern/replacement}`: Replace all matches.
    * `${#variable}`: Length of string.
    * `${variable:offset:length}`: Substring.
    ```bash
    path="/home/user/documents/file.txt"
    echo ${path##*/} # Output: file.txt (basename)
    echo ${path%/*}  # Output: /home/user/documents (dirname)
    name="John Doe"
    echo ${name/Doe/Smith} # Output: John Smith
    ```

---

## 2. Command Substitution

* **Backticks (legacy):**
    ```bash
    current_date=`date`
    echo "Today's date is: $current_date"
    ```
* **`$()` (preferred):** More readable and allows nesting.
    ```bash
    files=$(ls -l *.txt)
    echo "Text files: $files"
    kernel_version=$(uname -r)
    echo "Kernel version: $kernel_version"
    ```

---

## 3. Arithmetic Expansion

* **`$((expression))`:** For integer arithmetic.
    ```bash
    num1=10
    num2=5
    sum=$((num1 + num2))
    echo "Sum: $sum"
    product=$((num1 * num2))
    echo "Product: $product"
    ```

---

## 4. Array Declaration and Manipulation

* **Indexed Arrays:**
    ```bash
    my_array=("apple" "banana" "cherry")
    echo ${my_array[0]} # Output: apple
    echo ${my_array[@]} # Output all elements: apple banana cherry
    echo ${#my_array[@]} # Number of elements
    my_array[3]="date" # Add element
    unset my_array[1] # Remove element
    ```
* **Associative Arrays (Bash 4+):**
    ```bash
    declare -A config
    config["user"]="admin"
    config["port"]=8080
    echo "User: ${config["user"]}"
    for key in "${!config[@]}"; do
        echo "$key: ${config[$key]}"
    done
    ```

---

## 5. Functions

* **Declaration (two common ways):**
    ```bash
    # Method 1 (preferred)
    my_function() {
        echo "This is my function."
        echo "Arguments: $1, $2"
        return 0 # Optional, 0 for success, non-zero for error
    }

    # Method 2 (older style)
    function another_function {
        echo "This is another function."
    }
    ```
* **Calling Functions:**
    ```bash
    my_function "arg1" "arg2"
    another_function
    ```
* **Accessing Arguments:** `$1`, `$2`, etc. `$@` for all arguments, `$#` for argument count.

---

## 6. Input/Output Redirection

* **Redirecting Standard Output (`>` and `>>`):**
    ```bash
    ls > filelist.txt       # Overwrites file
    echo "New line" >> filelist.txt # Appends to file
    ```
* **Redirecting Standard Error (`2>` and `2>>`):**
    ```bash
    ls non_existent_file 2> error.log
    ```
* **Redirecting Both (`&>` or `2>&1`):**
    ```bash
    command &> output_and_error.log # Bash 4+
    command > output.log 2>&1       # Older, redirects stderr to stdout
    ```
* **Here Strings (`<<<`):**
    ```bash
    read variable <<< "some data"
    echo "$variable" # Output: some data
    ```
* **Here Documents (`<<`):** For multi-line input to a command.
    ```bash
    cat << EOF
    This is line 1.
    This is line 2.
    EOF
    ```

---

## 7. Process Control and Job Control

* **Running in Background:** `&`
    ```bash
    sleep 10 & # Runs sleep in the background
    ```
* **Foreground/Background Control (using `fg`, `bg`, `jobs`):** These are more interactive shell features but can be used in scripts for specific scenarios.

---

## 8. String Manipulation Utilities (External Commands often used)

While not Bash *syntax* per se, these are crucial for string manipulation within Bash scripts:

* **`grep`:** Searching for patterns.
* **`sed`:** Stream editor, for powerful text transformations.
* **`awk`:** Pattern scanning and processing language, excellent for column-based data.
* **`cut`:** Extracting sections from lines.
* **`tr`:** Translating or deleting characters.
* **`sort`:** Sorting lines of text.
* **`uniq`:** Reporting or omitting repeated lines.

---

## 9. Brace Expansion

* **Sequences:**
    ```bash
    echo {1..5} # Output: 1 2 3 4 5
    echo {a..e} # Output: a b c d e
    ```
* **Lists:**
    ```bash
    echo {file1,file2}.txt # Output: file1.txt file2.txt
    mkdir {test1,test2}/sub_dir # Creates test1/sub_dir and test2/sub_dir
    ```

---

## 10. Quoting

* **Double Quotes (`"`):** Preserves literals, but allows variable expansion, command substitution, and arithmetic expansion.
    ```bash
    name="Alice"
    echo "Hello, $name" # Output: Hello, Alice
    ```
* **Single Quotes (`'`):** Preserves literals, no expansion.
    ```bash
    echo 'Hello, $name' # Output: Hello, $name
    ```
* **No Quotes:** Subject to word splitting and pathname expansion (globbing). Generally avoid for variables unless you explicitly need these behaviors.

---

## 11. Exit Status and Error Handling

* **`$?`:** The exit status of the most recently executed foreground pipeline. `0` usually means success, non-zero means an error.
    ```bash
    ls non_existent_file
    echo "Exit status: $?"
    ```
* **`set -e`:** Exits immediately if a command exits with a non-zero status. Extremely useful for robust scripts.
    ```bash
    #!/bin/bash
    set -e
    echo "Starting..."
    ls /nonexistent_directory # This will cause the script to exit
    echo "This line will not be reached."
    ```
* **`set -u`:** Treats unset variables as an error.
* **`set -o pipefail`:** Ensures that the exit status of a pipeline is the exit status of the *last* command to exit with a non-zero status, or zero if all commands exit successfully.

---

## 12. Miscellaneous

* **Comments:** `#` at the beginning of a line.
* **`:` (null command):** Useful as a placeholder or to evaluate expansions without doing anything.
    ```bash
    : ${VAR:="default_value"} # Set VAR if unset
    ```
* **`true` and `false` commands:** Often used in loops or conditions.
* **`read`:** Reading input from the user or a file.
    ```bash
    echo "Enter your name:"
    read name
    echo "Hello, $name"
    ```
* **Shebang Line (`#!`):** Specifies the interpreter for the script. Always the first line.
    ```bash
    #!/bin/bash
    ```
