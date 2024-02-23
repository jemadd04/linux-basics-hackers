# Finding the Head
# Use the Head command to view the beginning of a file
head /etc/snort/snort.lua
# Shows first 10 lines by default. Use `-<number>` to show more or less
head -20 /etc/snort/snort.lua #shows first 20 lines

# Finding the Tail
# Tail command shows last 10 lines of the file
tail /etc/snort/snort.lua
# Use `-<number>` to show more or less, similar to head
tail -20 /etc/snort/snort.lua

# Numbering the Lines
# Use the `nl` command to display a file with line numbers
nl /etc/snort/snort.lua

# Filtering with grep
# `grep` lets you filter content of a file for display
# Ex: to see all lines that include the word 'output':
cat /etc/snort/snort.conf | grep output
# This command 1) views the file and 2) the bang sends it to grep, which takes the file as input, looks for lines, and displays only those lines

# HACKER CHALLENGE: Using grep, nl, tail and head
# Challenge: let's say you want to display the five lines immediately before a line that says '# Step #6: Configure output plugins' using at least four of the commands oyu just learned. How do you do it?
# Method 1
# Step 1
nl /etc/snort/snort.lua | grep output
# Step 2
tail -n+507 /etc/snort/snort.lua | head -n 6
# In step 2 we use tail to start at line 507 and output into head, where we return just the top six lines

# Find and replace with 'sed'
# `sed` lets you search for occurrences of a word or text pattern and perform some action on it
# sed = stream editor
# Example replacing the word 'event' with 'texas'
sed s/event/texas/g /etc/snort/snort.lua > snort2.conf
# The 's' command performs the substitution; the 'g' flag tells Linux that you watn the replacement performed globally
# To replace only the first occurrence:
sed s/event/texas/ etc/snort/snort.lua > snort2.conf
# To replace a specific occurrence:
sed s/event/georgia/2 etc/snort/snort.lua > snort3.conf

# more command
# `more` displays a page of a file at a time and lets you page down using the ENTER key
more /etc/snort/snort.lua

# less command
# `less` is `more` but you can also filter for terms
less /etc/snort/snort.lua
# Use / to search for terms
# Use n to move cursor to next occurrence