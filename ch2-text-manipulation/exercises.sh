# 1. Navigate to /usr/share/metasploit-framework/data/wordlists. This is a directory of multiple wordlists that can be used to brute force passwords in various password-protected devices using Metasploit, the most popular pentesting and hacking framework.
cd /usr/share/metasploit-framework/data/wordlists

# 2. Use the cat command to veiw the contents of the file password.lst
cat password.lst

# 3. Use the more command to display the file password.lst
more password.lst

# 4. Use the less command to view the file password.lst
less password.lst

# 5. Now use the nl command to place line numbers on the passwords in password.lst. There should be around 88,396 passwords.
nl password.lst

# 6. Use the tail command to see the last 20 passwords in password.lst
tail -20 password.lst

# 7. Use the cat command to display password.lst and pipe it to find all the passwords that contain 123.
cat password.lst | grep 123