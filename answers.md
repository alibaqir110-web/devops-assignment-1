Name: Ali Baqir
Roll number:65697
Class Id:120823
GitHub repo: https://github.com/alibaqir110-web/devops-assignment-1
My PR to partner: https://github.com/MuhammadFarazAhmedd/devops-assignment-1/pull/1
Partner's PR to me: https://github.com/alibaqir110-web/devops-assignment-1/pull/1
Partner's name: Muhammad Faraz Ahmed
# Answers - DevOps Assignment 1


## Part 3, Task 1

Commands:
```
cd ~
mkdir devops-assignment-1
cd devops-assignment-1
git config --global init.defaultBranch main
git init
git config --global user.name "Ali Baqir"
git config --global user.email "alibaqir110@gmail.com"
git config user.name
git config user.email
```

Output:
```
Initialized empty Git repository in /home/ali/devops-assignment-1/.git/
Ali Baqir
alibaqir110@gmail.com
```

Explanation:
The git init create a hidden folder inside our project called .git.This folder is used by git to track who made the changes and to remember them .i have set my name and email so i can know after wards that who made these changes in project if project is shared with someone else ..

## Part 3, Task 2

Commands:
```
mkdir scripts screenshots tips
echo "# DevOps Assignment 1" > README.md
echo "# Answers - DevOps Assignment 1" > answers.md
printf '*.log\ntmp/\n.env\n' > .gitignore
cat .gitignore
echo "test log" > server.log
mkdir tmp
echo "temp" > tmp/temp.txt
echo "API_KEY=abc123" > .env
git status
git add .
git commit -m "Part 3: add README, answers and .gitignore"
```

Output:
```
*.log
tmp/
.env

On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        .gitignore
        README.md
        answers.md

nothing added to commit but untracked files present (use "git add" to track)

[main (root-commit) d93c682] Part 3: add README, answers and .gitignore
 3 files changed, 5 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 README.md
 create mode 100644 answers.md
```

Explanation:
server.log,tmp/ and .env is not shown in git status because they match the pattern of .gitignore git ignores these files so it never gets track down 
.env should never be uploaded on github because it has secret such as api keys and password and other information that is private .if it is uploaded any one who access our repo can see them and steal them because our repo is public 

## Part 1

### Question 1

Problem 1: The first problem that i identify is that the features that are made and added wait for three months to deploy in between multiple features are added and all get together and when they are released and gone live together the code breaks and nobody knows which new feature added has issues because multiple features are added together so root problem is not known .Dev Ops can fix problem like this by releasing new build every other day when new feature or bug fix is added and automation can be used so testing and releasing happens together and if there is issue in that feature it is pointed out easily and it can be easily fix 
Problem 2: The second problem that i found is that there are two seperate teams of Dev & Ops .There is no accountability one team blames the other team for the issue and simillarly the second team does the same .Dev Ops Solve this problem by making a one team which work together from coding to running the code.if any issues comes they will work together and find the issue because they all are accountable and they cant specifically blame any one.

### Question 2

1. Plan - GitHub Issues
2. Code - Git
3. Build - GitHub Actions
4. Test - pytest
5. Release - Docker images
6. Deploy - Kubernetes
7. Operate - Ansible
8. Monitor - Prometheus


### Question 3

Culture - Team members should check each others code and help each other if any mistake comes instead of blaming each other.

Automation - We can make a small script which automatically take backup of our project files so we dont have to do it manually every time.

Lean - We should make small commits after completing small work instead of adding all changes together at one time.

Measurement - We can count how many pull requests are merged every week to check how much work our team has completed.

Sharing - We can share useful tips and problems in our repository or GitHub issues so other team members can also learn from them.


### Question 4

(a) There are four DORA metrics :

Deployment frequency - it shows how many times we push our code to production in a given time . it is a Speed metric
Lead time for changes - it is how long a change takes from the moment i commit it till it is actually running live . it is also a Speed metric
Change failure rate - this shows what percentage of our deployments cause a problem and need a fix or rollback . it is a Stability metric
Time to restore service - it is the time that teams takes to get system backup after the system gets down .it is a stability metric.

The first two metrics are about speed and the last two are about stability .

(b)

An automated test that fails a push within minutes - it is called Feedback . the developer comes to know within few minutes that his code has broken something so he can correct it while the work is still fresh in his mind he remembers the changes.

A blameless review after an outage - this is Continual learning . after the system goes down the team discusses what went wrong and nobody is blamed , so everyone learns from it and the same mistake is avoided next time .

Releasing small changes every day instead of one big release every quarter - this is Flow . the work keeps on moving towards production in small parts instead of piling up and waiting for three months .


## Part 2, Task 1

Commands:

```
mkdir -p ~/assignment/linux/data/reports ~/assignment/linux/data/archive
ls -R ~/assignment/linux

```
Output:
```
/home/ali/assignment/linux:
data

/home/ali/assignment/linux/data:
archive reports

/home/ali/assignment/linux/data/archive:

/home/ali/assignment/linux/data/reports:

```

Explanation:
The mkdir -p command is used to create folders along with their parent folders if they do not already exist. In this command it created the assignment folder, then linux, data and reports and archive folders in one command. If any folder already exists it does not give an error and continues normally.

The ls -R command is used to show all folders and files inside a directory including the folders inside other folders. It shows the complete folder structure and also shows what is inside each folder.

## Part 2, Task 2

Commands:

```
cd ~/assignment/linux
touch report.txt run.sh
chmod 640 report.txt
chmod 754 run.sh
ls -l

```

Output:

```
total 4
drwxrwxr-x 4 ali ali 4096 Nov 27 23:29 data
-rw-r----- 1 ali ali 0 Nov 27 23:30 report.txt
-rwxr-xr-- 1 ali ali 0 Nov 27 23:30 run.sh

```
Explanation:

For report.txt i used 640 permissions. The owner can read and write the file but group members can only read it and others have no permission to access it. I used these permissions because report.txt is just a text file and everyone does not need to change it.

For run.sh i used 754 permissions. The owner can read, write and execute the file. Group members can read and execute it but cannot change it. Others can only read the file but cannot execute it. I used these permissions because run.sh is a script which needs execute permission to run.

![Part 2 Task 2](screenshots/p2t2.png)

## Part 2, Task 3

Commands:

```
printf 'INFO start\nERROR disk full\nINFO user login\nWARN slow response\nERROR timeout\nINFO user logout\nERROR disk full\nINFO backup done\nWARN memory high\nERROR timeout\nINFO restart\nERROR disk full\n' > server.log
grep ERROR server.log | wc -l
grep WARN server.log | wc -l
grep ERROR server.log | grep disk

```
Output:

```
5
2
ERROR disk full
ERROR disk full
ERROR disk full

```

Explanation:
The grep command is used to search for a specific word in a file. In this case grep ERROR server.log shows all the lines which contains the word ERROR. It prints the complete line instead of only showing the word.

The pipe (|) is used to pass the output of one command to another command. For example grep ERROR server.log | wc -l first finds all the ERROR lines and then passes them to wc -l instead of showing them on screen.

The wc -l command counts the total number of lines. In this task it counted the ERROR lines and gave the result 5. Similarly when i searched for WARN it gave 2 lines.

When we use two grep commands together like grep ERROR server.log | grep disk, the first grep finds all lines containing ERROR and the second grep searches for the word disk in those results. This way only the lines containing both ERROR and disk are shown. It works like applying one filter after another.


## Part 2, Task 4

Commands:

```
sleep 600 &
ps
kill 58342
ps
sleep 600 &
ps
kill -9 58360
ps
```

Output:
```
[1] 58342
PID TTY TIME CMD
8696 pts/0 00:00:00 bash
58342 pts/0 00:00:00 sleep
58345 pts/0 00:00:00 ps
[1]+ Terminated sleep 600
PID TTY TIME CMD
8696 pts/0 00:00:00 bash
58354 pts/0 00:00:00 ps
[1] 58360
PID TTY TIME CMD
8696 pts/0 00:00:00 bash
58360 pts/0 00:00:00 sleep
58362 pts/0 00:00:00 ps
[1]+ Killed sleep 600
PID TTY TIME CMD
8696 pts/0 00:00:00 bash
58374 pts/0 00:00:00 ps

```
Explanation:

The normal kill command sends SIGTERM signal which asks the process to stop and gives it some time to save its data and close properly. While kill -9 sends SIGKILL signal which forcefully stops the process immediately without giving it time to save data or close properly.

We should always try normal kill first because it allows the program to stop safely. We use kill -9 only when a program is stuck or not responding and does not stop with the normal kill command.

![Part 2 Task 4](screenshots/p2t4.png)

## Part 2, Task 5

Commands:

```
whoami
groups
sudo apt update
```

Output:

```
ali
ali adm cdrom sudo dip plugdev users lpadmin lxd
Hit:1 http://archive.ubuntu.com/ubuntu resolute InRelease
Hit:2 http://archive.ubuntu.com/ubuntu resolute-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu resolute-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu resolute-security InRelease
All packages are up to date.

```

Explanation:
Using sudo is safer because it gives admin permission only for the command we want to run. It also asks for our password before running the command and keeps a record of which command we used. After the command is completed we are back to our normal user. But if we stay logged in as root every command we type has full permission and even a small mistake can delete important system files. That's why using sudo is better because it reduces the chances of making big mistakes.

## Part 3, Task 3

Commands:

```
echo "Author: Ali Baqir" >> README.md
git status
git add README.md
git status
git commit -m "Part 3: add author to README"

```

Output:

```
On branch main
Changes not staged for commit:
(use "git add <file>..." to update what will be committed)
(use "git restore <file>..." to discard changes in working directory)
modified: README.md

no changes added to commit (use "git add" and/or "git commit -a")

On branch main
Changes to be committed:
(use "git restore --staged <file>..." to unstage)
modified: README.md

[main fdd2794] Part 3: add author to README
1 file changed, 1 insertion(+)

```

Explanation:
After editing README.md the changes are in the working directory. Git knows that the file is changed but we have not added it for commit yet.

After using git add the changes move to the staging area. It means we have selected the changes which we want to save in our next commit.

After using git commit the changes are saved in the repository and become part of our project history. Now if we use git status it shows that there is nothing left to commit.


## Part 3, Task 4

Commands:

```
git remote add origin git@github.com:alibaqir110-web/devops-assignment-1.git
git push -u origin main
git remote -v
git log --oneline
```

Output:

```
Enumerating objects: 35, done.
Counting objects: 100% (35/35), done.
Delta compression using up to 4 threads
Compressing objects: 100% (31/31), done.
Writing objects: 100% (35/35), 209.16 KiB | 754.00 KiB/s, done.
Total 35 (delta 16), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (16/16), done.
To github.com:alibaqir110-web/devops-assignment-1.git

[new branch] main -> main
branch 'main' set up to track 'origin/main'.

origin git@github.com:alibaqir110-web/devops-assignment-1.git (fetch)
origin git@github.com:alibaqir110-web/devops-assignment-1.git (push)

b86ad5e (HEAD -> main, origin/main) Part 3: Task 3 answer
fdd2794 Part 3: add author to README
f9066e5 Part 2: Linux command line tasks
00a0fbd Part 1: Question 4 answer
502d1f0 Part 1: Question 3 answer
e88b0ba Part 1: Question 2 answer
98652eb Part 1: Question 1 answer
5834caf Part 3: add Task 2 answer
a77504a Part 3: add Task 1 answer
d93c682 Part 3: add README, answers and .gitignore

```

Explanation:

Origin is just a name given to our GitHub repository link. It connects our local project with GitHub so we dont have to write the full link every time we want to upload our code.

The git push -u origin main command uploads our main branch and all its commits to GitHub. The -u is used so Git remembers the connection between our local main branch and GitHub main branch. Next time we can simply use git push to upload our changes. It also created a new main branch on GitHub because it was not already there.

The git remote -v command shows the link of our GitHub repository. It shows fetch and push which are used for downloading and uploading changes. The git log --oneline command shows all our commits with their short IDs and messages. It showed 10 commits which means our work is saved in GitHub and both local and online branches are at the same point.


## Part 4, Task 1

Commands:

```

git switch -c add-notes
echo "# Notes" > notes.md
git add notes.md
git commit -m "Add notes.md"
echo "Branches keep work separate until it is ready." >> notes.md
git commit -am "Edit notes.md"
git switch main
git merge add-notes
git branch -d add-notes
git log --oneline --graph

```

Output:

```
Switched to a new branch 'add-notes'
[add-notes 638aae7] Add notes.md
 1 file changed, 1 insertion(+)
 create mode 100644 notes.md
[add-notes 784bc6c] Edit notes.md
 1 file changed, 1 insertion(+)
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
Updating 5f3a3d2..784bc6c
Fast-forward
 notes.md | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 notes.md
Deleted branch add-notes (was 784bc6c).
* 784bc6c (HEAD -> main) Edit notes.md
* 638aae7 Add notes.md
* 5f3a3d2 (origin/main) Part 3: Task 4 answer
* b86ad5e Part 3: Task 3 answer
* fdd2794 Part 3: add author to README
* f9066e5 Part 2: Linux command line tasks
* 00a0fbd Part 1: Question 4 answer
* 502d1f0 Part 1: Question 3 answer
* e88b0ba Part 1: Question 2 answer
* 98652eb Part 1: Question 1 answer
* 5834caf Part 3: add Task 2 answer
* a77504a Part 3: add Task 1 answer
* d93c682 Part 3: add README, answers and .gitignore

```

Explanation:

Yes it was a fast-forward merge because no one made any new commits in the main branch while we were working on the add-notes branch. We made two commits in add-notes and then merged it into main. Git simply moved the main branch forward to the latest commit of add-notes because there were no separate changes in main to combine. That's why Git did not create an extra merge commit and the commit history shows a straight line instead of two branches joining together.

## Part 4, Task 2

Commands:

```
echo "Hello from main" > greeting.txt
git add greeting.txt
git commit -m "Add greeting.txt"
git switch -c branch-a
echo "Hello from A" > greeting.txt
git commit -am "Branch A greeting"
git switch main
git switch -c branch-b
echo "Hello from B" > greeting.txt
git commit -am "Branch B greeting"
git switch main
git merge branch-a
git merge branch-b
cat greeting.txt
nano greeting.txt
cat greeting.txt
git add greeting.txt
git commit -m "Resolve conflict: keep both greetings"
git branch -d branch-a branch-b
git push

```

Output:

```
[main 7220e47] Add greeting.txt
1 file changed, 1 insertion(+)
create mode 100644 greeting.txt
Switched to a new branch 'branch-a'
[branch-a 25845b9] Branch A greeting
1 file changed, 1 insertion(+), 1 deletion(-)
Switched to branch 'main'
Switched to a new branch 'branch-b'
[branch-b 78c1cb6] Branch B greeting
1 file changed, 1 insertion(+), 1 deletion(-)
Switched to branch 'main'
Updating 7220e47..25845b9
Fast-forward
greeting.txt | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)
Auto-merging greeting.txt
CONFLICT (content): Merge conflict in greeting.txt
Automatic merge failed; fix conflicts and then commit the result.
```

The file with the conflict markers:
```
<<<<<<< HEAD
Hello from A
=======
Hello from B
>>>>>>> branch-b
```

After resolving (cat greeting.txt):
```
Hello from A
Hello from B
```

Commit, branch delete and push output:
```
[main 352aafc] Resolve conflict: keep both greetings
Deleted branch branch-a (was 25845b9).
Deleted branch branch-b (was 78c1cb6).
To github.com:alibaqir110-web/devops-assignment-1.git
   5f3a3d2..352aafc  main -> main
```

Explanation:

The `<<<<<<< HEAD` shows the changes that are already in our current branch (main). The `=======` is used to separate the two versions and `>>>>>>> branch-b` shows the changes coming from branch-b.

Git could not merge it automatically because both branches made different changes to the same line of the file. When changes are made to different lines Git can usually merge them automatically but when both branches change the same line it gets confused about which version to keep. That's why it stops and asks us to resolve the conflict manually.

## Part 4, Task 3

My pull request to my partner:
https://github.com/MuhammadFarazAhmedd/devops-assignment-1/pull/1

My partner's pull request to me:
https://github.com/alibaqir110-web/devops-assignment-1/pull/1

Partner's name: Muhammad Faraz Ahmed

## Part 4, Task 4

Commands:

```

echo "Part 6: scripts are in scripts/ and run with cron." >> notes.md
git commit -am "Add Part 6 notes. Closes #2"
git push

```

Output:

```

[main 9b0b13e] Add Part 6 notes. Closes #2
 1 file changed, 1 insertion(+)
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 360 bytes | 360.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:alibaqir110-web/devops-assignment-1.git
   9da5cf7..9b0b13e  main -> main

```

Explanation:

GitHub automatically closes an issue when we use words like Closes #2 or Fixes #2 in our commit message. When we push that commit to the main branch GitHub checks the message and closes the related issue automatically. We don't have to go to the issue page and close it manually.

This is useful because sometimes we fix a problem but forget to close its issue. GitHub does it automatically when our changes are pushed to main. It also shows which commit fixed the issue so anyone can check it later.

The documentation label is used to identify issues related to documentation. Labels help us separate different types of issues like bugs, documentation and new features so they are easier to find.

Closed issue: https://github.com/alibaqir110-web/devops-assignment-1/issues/2

## Part 5, Task 1

Commands:

```

sudo apt update
sudo apt install -y apache2
systemctl status apache2
sudo systemctl stop apache2
systemctl status apache2
curl localhost
sudo systemctl start apache2
sudo systemctl enable apache2
systemctl is-enabled apache2
sudo journalctl -u apache2 --since today

```

Output:
```
● apache2.service - The Apache HTTP Server
Loaded: loaded (/usr/lib/systemd/system/apache2.service; enabled; preset: enabled)
Active: active (running) since Sat 2026-11-28 02:14:37 PKT; 13s ago
Main PID: 70979 (apache2)

(after stopping)
○ apache2.service - The Apache HTTP Server
Loaded: loaded (/usr/lib/systemd/system/apache2.service; enabled; preset: enabled)
Active: inactive (dead) since Sat 2026-11-28 02:19:50 PKT; 5s ago

curl: (7) Failed to connect to localhost port 80 after 0 ms: Could not connect to server

Synchronizing state of apache2.service with SysV service script with /usr/lib/systemd/systemd-sysv-install.
Executing: /usr/lib/systemd/systemd-sysv-install enable apache2
enabled

Nov 28 02:14:37 ali-ThinkPad-T450 systemd[1]: Starting apache2.service - The Apache HTTP Server...
Nov 28 02:14:37 ali-ThinkPad-T450 systemd[1]: Started apache2.service - The Apache HTTP Server.
Nov 28 02:19:50 ali-ThinkPad-T450 systemd[1]: Stopping apache2.service - The Apache HTTP Server...
Nov 28 02:19:50 ali-ThinkPad-T450 systemd[1]: apache2.service: Deactivated successfully.
Nov 28 02:19:50 ali-ThinkPad-T450 systemd[1]: Stopped apache2.service - The Apache HTTP Server.
Nov 28 02:22:16 ali-ThinkPad-T450 systemd[1]: Starting apache2.service - The Apache HTTP Server...
Nov 28 02:22:16 ali-ThinkPad-T450 systemd[1]: Started apache2.service - The Apache HTTP Server.

```
Explanation:

The systemctl start command is used to start a service immediately but it will not start automatically if we restart our system. The systemctl enable command is used to make the service start automatically every time we turn on our system but it does not start it right now. That's why we use both commands so the service starts now and also runs automatically after restarting the system.


![Part 5 Task 1 - service stopped](screenshots/p5t1-stopped.png)
![Part 5 Task 1 - logs](screenshots/p5t1.png)


## Part 5, Task 2

Commands:
```
export APP_ENV=staging
echo $APP_ENV
printenv APP_ENV
```


Output:

```
staging
staging
```


In a new terminal:

```
echo $APP_ENV
printenv APP_ENV

```

Output:
(both printed nothing, the variable did not exist)


Explanation:

The export command sets a variable only for the current terminal. When we open a new terminal it starts a new shell so the APP_ENV variable is not available there and it shows an empty output.

To make this variable permanent we can add export APP_ENV=staging in the ~/.bashrc file. This file runs whenever we open a new terminal so we don't have to set the variable again and again.


## Part 5, Task 3

Commands:
```
ls ~/.ssh
ssh-keygen -l -f ~/.ssh/id_ed25519.pub
sudo systemctl enable --now ssh
hostname -I
whoami
ssh-copy-id faraz@192.168.0.35
ssh faraz@192.168.0.35
whoami
exit
echo "Hello from Ali" > hello-from-ali.txt
scp hello-from-ali.txt faraz@192.168.0.35:~/
ssh faraz@192.168.0.35 "cat ~/.ssh/authorized_keys"

```

Output:
```
authorized_keys  id_ed25519  id_ed25519.pub  known_hosts  known_hosts.old
256 SHA256:vrvPrvczy82DzF/Cr5L1AEQc/CnwXSvQPNeGNlMJYwE alibaqir110@gmail.com (ED25519)
My machine:
192.168.0.39
ali

Partner's machine (Faraz):
192.168.0.35
faraz

/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: ssh-add -L
The authenticity of host '192.168.0.35 (192.168.0.35)' can't be established.
ED25519 key fingerprint is: SHA256:BU3B+YLMOhCkAxBaZDSvd00fR6y4RhXvZtYhk0qu+t8
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
faraz@192.168.0.35's password:

Number of key(s) added: 1

Login with no password:
faraz@faraz-HP-Pavilion-m7-Notebook-PC:~$ whoami
faraz
faraz@faraz-HP-Pavilion-m7-Notebook-PC:~$ exit
logout
Connection to 192.168.0.35 closed.

File copy:
hello-from-ali.txt 100% 15 0.7KB/s 00:00

Partner's authorized_keys:
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL48lkEWEPaIhzM+fU1N/gZu2jxNt8b9MpNsu5WYIV/M alibaqir110@gmail.com

```
Explanation:

I generated my key pair earlier with ssh-keygen -t ed25519 -C "alibaqir110@gmail.com" when setting up GitHub SSH, so I did not generate it again because that would overwrite my existing key.The private key is `~/.ssh/id_ed25519` and the public key is `~/.ssh/id_ed25519.pub`. We should never share our private key with anyone because it is used to prove our identity. The public key can be shared with other machines because it is safe to share.

Both keys are connected with each other. When we add our public key to another machine it allows us to log in using our private key. If someone gets our private key they can access all the machines and GitHub accounts where our public key is added and they can login as us.


## Part 6, Task 1

Script (scripts/sys_report.sh):

```

#!/bin/bash
HOST=$(hostname)
TODAY=$(date +%Y-%m-%d)

echo "Hostname: $HOST"
echo "Date: $TODAY"
echo "Current user: $(whoami)"
echo "Disk usage of /:"
df -h /
```

Commands:
```

chmod +x sys_report.sh
./sys_report.sh

```

Output:

```
Hostname: ali-ThinkPad-T450
Date: 2026-11-28
Current user: ali
Disk usage of /:
Filesystem Size Used Avail Use% Mounted on
/dev/sda7 18G 7.6G 8.7G 47% /

```

Explanation:

The $(...) is used to run a command and store its output in a variable. In this task HOST stores the computer name and TODAY stores the current date in YYYY-MM-DD format.

The chmod +x command gives execute permission to the file so we can run it like a program. The ./ is used to run the script from the current folder.


## Part 6, Task 2

Script (scripts/backup_linux.sh):
```
#!/bin/bash
SOURCE="$HOME/assignment/linux"
DEST="$HOME/assignment/backups"
TIMESTAMP=$(date +%Y-%m-%d-%H%M)

if [ ! -d "$SOURCE" ]; then
echo "Error: source folder $SOURCE does not exist"
exit 1
fi

mkdir -p "$DEST"
tar -czf "$DEST/linux-$TIMESTAMP.tar.gz" -C "$HOME/assignment" linux
echo "Backup saved: $DEST/linux-$TIMESTAMP.tar.gz"
```

Commands:
```
cd ~/devops-assignment-1/scripts
chmod +x backup_linux.sh
./backup_linux.sh
echo $?
tar -tzf ~/assignment/backups/linux-2026-11-28-0317.tar.gz
mv ~/assignment/linux ~/assignment/linux-old
./backup_linux.sh
echo $?
mv ~/assignment/linux-old ~/assignment/linux
```

Output (normal run):
```
Backup saved: /home/ali/assignment/backups/linux-2026-11-28-0317.tar.gz
0
linux/
linux/data/
linux/data/reports/
linux/data/archive/
linux/report.txt
linux/server.log
linux/run.sh
```

Output (error case):
```
Error: source folder /home/ali/assignment/linux does not exist
1
````
Explanation:

The if [ ! -d "$SOURCE" ] checks if the source folder exists or not. If the folder does not exist then exit 1 stops the script and shows that it failed. The echo $? command shows the result of the last command where 0 means it was successful and 1 means it failed.

The mkdir -p command creates the backups folder if it is not already there. The tar -czf command is used to create a compressed backup file and tar -tzf is used to see the files inside the backup without extracting them.


## Part 6, Task 3

Script (scripts/site_check.sh):
```
#!/bin/bash
URL="http://localhost"
CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$CODE" = "200" ]; then
echo "$(date '+%Y-%m-%d %H:%M:%S') OK"
else
echo "$(date '+%Y-%m-%d %H:%M:%S') FAIL: HTTP code $CODE"
exit 1
fi
```


Commands:
```
chmod +x site_check.sh
sudo systemctl start apache2
./site_check.sh
echo $?
sudo systemctl stop apache2
./site_check.sh
echo $?
sudo systemctl start apache2
```


Output (apache2 running):
```

2026-11-28 03:22:36 OK
0
```

Output (apache2 stopped):

```
2026-11-28 03:22:54 FAIL: HTTP code 000
1
```
Explanation:

The curl -s command is used to check if the website is working or not without showing extra details on the screen. The -o /dev/null is used to ignore the page content because we only want to check the status of the website. The -w "%{http_code}" shows only the HTTP status code of the website. If it shows 200 it means the website is working and responding properly. If it shows 000 it means curl could not connect to the server at all because the server was stopped.

The exit 1 command is used when the check fails. It tells the system that something went wrong and the command was not successful. This is useful for cron or other programs because they can check the exit code and know if the website is working or not.


## Part 6, Task 4

Commands:
```
crontab -e
crontab -l
tail ~/assignment/cron.log

```

The cron line added:

```
*/2 * * * * /home/ali/devops-assignment-1/scripts/site_check.sh >> /home/ali/assignment/cron.log 2>&1

```

Output of crontab -l:
```
# m h dom mon dow command
*/2 * * * * /home/ali/devops-assignment-1/scripts/site_check.sh >> /home/ali/assignment/cron.log 2>&1
```
Output of tail ~/assignment/cron.log:

```
2026-11-28 03:34:01 OK
2026-11-28 03:36:01 OK
2026-11-28 03:38:01 OK
```

Crontab time fields:
(a) Every day at 14:30
30 14 * * *

(b) Every Monday to Friday at 06:00
0 6 * * 1-5

Explanation:

Cron is used to run commands automatically after a specific time. It has five fields which are minute, hour, day, month and day of week. In this task */2 means the command will run after every 2 minutes without running it manually.

The >> is used to add new output at the end of the log file without deleting the old data. The 2>&1 is used to save error messages in the same log file so we can check both normal output and errors in one place.

We use complete file paths in cron because it does not always know where our files are located. By giving the full path it can easily find and run the correct file.


