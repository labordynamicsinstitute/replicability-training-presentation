---
title: "Command Line/Git & Version Control/Markdown/"
author: "Leonel Borja-Plaza"
date: "January 2022"
output: slidy_presentation
---

# Command Line/Git & Version Control/Markdown/

## Command Line

This slide is based on the [carpentries on the unix shell](https://swcarpentry.github.io/shell-novice/01-intro/index.html)

- What is a command line and why use it?
  - Graphical user interface are the most common way to give instruction to our computers. They are not good when we need to scale thing up, do repetitive tasks, or have people reproduce instructions across systems.
  - Command-line interface are another way to pass instructions to computers. 
  - "Shell" instructions can be scripted, allowing repetitive tasks to be done automatically and fast.

## Commands in the Unix Shell

  - list things

```
$ ls
```
- moving around 
  - where are we 

```
$ pwd
```
 - change to where we want to be 

```
$ cd /somepath 
$ cd ..
$ cd ./somepath
```
- Create directories

```
$ mkdir 
```
- Move files 

```
$ mv /currentpath /otherpath
```
- Copy files

```
$ cp /currentpath /otherpath
```

- Remove files

```
$ rm filename
```

## Git 

Version Control system. Track the progress in a project: what changes?, who made changes? [again see the carpentries](https://swcarpentry.github.io/git-novice/01-basics/index.html)

### Git and the command line 

- Clone a repository

```
git clone
```
- Check where my local repository is vs. remote repository

```
git status
```

- Get the current version of an existing repository

```
git pull
```

- after making changes, how to reflect them in the external repository.

```
git add /thefileyoucreated/ormodified
git commit -m "you write here a commit message"
git push
```

## Markdown 
We use Markdowns to write reports. [why?](https://carto.com/blog/why-we-use-markdown/)  

- It's easy, fast, multi-platform, and it works great.

### Basic Syntax(https://www.markdownguide.org/basic-syntax/)

#### Headings

```
# Heading level 1
## Heading level 2
### Heading level 3
#### Heading level 4
##### Heading level 5

Heading level 1
===============

Heading level 2
---------------

```
#### Lists

##### Ordered lists

```
1. First item
2. Second item
3. Third item
    1. Indented item
    2. Indented item
4. Fourth item 


```
##### Unordered lists

```
- First item
- Second item
- Third item
    - Indented item
    - Indented item
- Fourth item 

```

#### Blockquotes and Code Blocks
- Blockquotes

> This is a block quote, and it is created like this

```
> This is a block quote, and it is created like this

```

- Code Block

Code embedded in the document:

```
 "```"
 gen var1= var2/var3
 
 "```" 

```





