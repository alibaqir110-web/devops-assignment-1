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


