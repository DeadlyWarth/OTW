passwords:
bandit1:ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If"cat the readme file"
bandit2:263JGJPfgU6LtdEvgfWU1XP5yac29mFx"rev -v | rev"
bandit3:MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx"cat -- "--the file name--""
bandit4:2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ "ls -la, cat ...File-Name"
bandit5:4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw "file -- -file* / cat --"file0x" /'combine data' find . -maxdepth 1 -name "-file[0-9][0-9]" -exec cat {} + > combined_file.txt"
bandit6:HWasnPhtq9AVKe0dmk45nxy20cvUa6EG "find {location of search} -type {type of file} -size {size of byte(c)} !(negation operator) -executable"
bandit7:morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj "find {location of search} -user {the user who owns the file} -group {the group that is includes the file} -size {size of file in bytes(c)} 2>/dev/null (to redirects all standard error messages)
bandit8:dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc "cat {file.txt} | grep {keyword}"
bandit9:4CKMh1JI91bUIZZPXDqGanal4xvAg0JM "strings(extracts all the printable text) {file.txt} | sort(sorts thing alphabeticaly) | uniq -u ( prints only the lines that have no duplicate neighbors)"
bandit10:FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey "strings(extracts all the printable text){file name.txt} | grep {keychar}"
bandit11:dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr "base64 --decode {filename}"
bandit12:7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4 "cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'"
bandit13:FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn "ask AI"
bandit14:MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS " ssh.private, chmod 600 {private key}, ssh -i {private key} {user}@{IP ADDRESS} -p {PORT}"
bandit15:8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo "echo {bandit14's passwd} | nc localhost 30000"
bandit16:kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx " openssl(to interact with ssl/tsl cert.) s_client(s stands for ssl whihc means we are the client) -connect localhost 30001"
bandit17:EReVavePLFHtFlFsjn3hyzMlvSuSAcRD "nmap -p 31000-32000 localhost, bandit17.sh, ssh -i key.private"
bandit18:x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO "diff password.old password.new"
bandit19:cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8 "ssh {user}@{ip address} {imeadiate command}"
bandit20:0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO "./bandit20-do cat /etc/bandit_pass/bandit20"
bandit21:EeoULMCra2q0dSkYj561DX7s1CpBuOBt "(on the attacker) echo"{bandit20} | nc -l(listen) -p {port}&, (on target) ./suconnect {port}"
bandit22:tRae0UfB9v0UzbCdn9cY0gQnds9GF58Q "cat /etc/cron.d/cronjob_bandit22, cat /usr/bin/cronjob_bandit22.sh, cat {dir that saves the pass to}
bandit23:0Zf11ioIjMVN551jX3CmStKLYqjk54Ga "echo I am user bandit23 | md5sum | cut -d ' ' -f 1, cat /tmp/{gen. hash}
bandit24:gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 "mktemp -d (cd the dir) , mv bandit24.sh /var/spool/bandit24/foo(don't use cp as you don't have write permission)
bandit25:iCi86ttT4KSNe1armKiwbQNmB3YJP3q4 "for i in $(seq -w 0 9999); do echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $i"; done | nc localhost 30002"
bandit26:s0773xxkk0MXfdqOfPRVr9L3jJBUOgCZ "(minimize the terminal so much) ssh -i bandit26.sshkey bandit26@bandit.labs.overthewire.org -p 2220,then v , ctrl+z,:set shell=/bin/bash {enter}, :shell"
bandit27:upsNCc7vzaRDx6oZC6GiR6ERwe1MowGB "./bandit27-do cat /etc/bandit_pass/bandit27"
