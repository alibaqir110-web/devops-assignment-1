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
