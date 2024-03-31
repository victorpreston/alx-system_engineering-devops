0x00. Shell, basics
===================

-   By Julien Barbier
-   Weight: 1


About Bash projects
-------------------

Unless stated, all your projects will be auto-corrected with Ubuntu 14.04 LTS.

![](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/205/image.jpg)

Resources
---------

**Read or watch**:

-   [What Is "The Shell"?](https://alx-intranet.hbtn.io/rltoken/vwO91sqNBgRL03BLu-ueiA "What Is "The Shell"?")
-   [Navigation](https://alx-intranet.hbtn.io/rltoken/iblidp7yp6i-QpT8rDXHaA "Navigation")
-   [Looking Around](https://alx-intranet.hbtn.io/rltoken/xEKUCnQsMH0esQ6fJU5vLA "Looking Around")
-   [A Guided Tour](https://alx-intranet.hbtn.io/rltoken/HUhQ73fFR1GOC5nb4r-mDw "A Guided Tour")
-   [Manipulating Files](https://alx-intranet.hbtn.io/rltoken/olv-1tj4d1LA57Z0PrLNvw "Manipulating Files")
-   [Working With Commands](https://alx-intranet.hbtn.io/rltoken/zUtux3Pm0BkvtwXzbTtkmA "Working With Commands")
-   [Reading Man pages](https://alx-intranet.hbtn.io/rltoken/rddGdsqLf8_kRzp12RaD4A "Reading Man pages")
-   [Keyboard shortcuts for Bash](https://alx-intranet.hbtn.io/rltoken/JcsRq7PW6v7SdpPH_N8udQ "Keyboard shortcuts for Bash")
-   [LTS](https://wiki.ubuntu.com/LTS)
-   [Shebang](https://alx-intranet.hbtn.io/rltoken/cE8ZA3kgEaFhB-IDNv31bQ "Shebang")

**man or help**:

-   `cd`
-   `ls`
-   `pwd`
-   `less`
-   `file`
-   `ln`
-   `cp`
-   `mv`
-   `rm`
-   `mkdir`
-   `type`
-   `which`
-   `help`
-   `man`

Learning Objectives
-------------------

At the end of this project, you are expected to be able to [explain to anyone](https://alx-intranet.hbtn.io/rltoken/Cn1p1E1_3FRvKpHfiKJ1GQ "explain to anyone"), **without the help of Google**:

### General

-   What does RTFM mean?
-   What is a Shebang

### What is the Shell

-   What is the shell
-   What is the difference between a terminal and a shell
-   What is the shell prompt
-   How to use the history (the basics)

### Navigation

-   What do the commands or built-ins `cd`, `pwd`, `ls` do
-   How to navigate the filesystem
-   What are the . and .. directories
-   What is the working directory, how to print it and how to change it
-   What is the root directory
-   What is the home directory, and how to go there
-   What is the difference between the root directory and the home directory of the user root
-   What are the characteristics of hidden files and how to list them
-   What does the command `cd -` do

### Looking Around

-   What do the commands `ls`, `less`, `file` do
-   How do you use options and arguments with commands
-   Understand the ls long format and how to display it
-   [A Guided Tour](https://alx-intranet.hbtn.io/rltoken/HUhQ73fFR1GOC5nb4r-mDw "A Guided Tour")
-   What does the `ln` command do
-   What do you find in the most common/important directories
-   What is a symbolic link
-   What is a hard link
-   What is the difference between a hard link and a symbolic link

### Manipulating Files

-   What do the commands `cp`, `mv`, `rm`, `mkdir` do
-   What are wildcards and how do they work
-   How to use wildcards

### Working with Commands

-   What do `type`, `which`, `help`, `man` commands do
-   What are the different kinds of commands
-   What is an alias
-   When do you use the command help instead of man

### Reading Man Pages

-   How to read a man page
-   What are man page sections
-   What are the section numbers for User commands, System calls and Library functions

### Keyboard Shortcuts for Bash

-   Common shortcuts for Bash

### LTS

-   What does `LTS` mean?

Requirements
------------

### General

-   Allowed editors: `vi`, `vim`, `emacs`
-   All your scripts will be tested on Ubuntu 20.04 LTS
-   All your scripts should be exactly two lines long (`$ wc -l file` should print 2)
-   All your files should end with a new line ([why?](http://unix.stackexchange.com/questions/18743/whats-the-point-in-adding-a-new-line-to-the-end-of-a-file/18789))
-   The first line of all your files should be exactly `#!/bin/bash`
-   A `README.md` file at the root of the repo, containing a description of the repository
-   A `README.md` file, at the root of the folder of *this* project, describing what each script is doing
-   You are not allowed to use backticks, `&&`, `||` or `;`
-   All your scripts must be executable. To make your file executable, use the `chmod` command: `chmod u+x file`. Later, we'll learn more about how to utilize this command.

More Info
---------

*Example of line count and first line*

```
julien@ubuntu:/tmp$ wc -l 12-file_type
2 12-file_type
julien@ubuntu:/tmp$ head -n 1 12-file_type
#!/bin/bash
julien@ubuntu:/tmp$

```

In order to test your scripts, you will need to use this command: `chmod u+x file`. We will see later what does `chmod` mean and do, but you can have a look at `man chmod` if you are curious.

*Example*

```
julien@ubuntu:/tmp$ ls
12-file_type
lll
julien@ubuntu:/tmp$ ls -la lll
-rw-rw-r-- 1 julien julien 15 Sep 19 21:05 lll
julien@ubuntu:/tmp$ cat lll
#!/bin/bash
ls
julien@ubuntu:/tmp$ ls -l lll
-rw-rw-r-- 1 julien julien 15 Sep 19 21:05 lll
julien@ubuntu:/tmp$ chmod u+x lll # you do not have to understand this yet
julien@ubuntu:/tmp$ ls -l lll
-rwxrw-r-- 1 julien julien 15 Sep 19 21:05 lll
julien@ubuntu:/tmp$ ./lll
12-file_type
lll
julien@ubuntu:/tmp$

```

### Description

  Shell basic manipulation exercises are stored here

### Structure
 * 0-current_working-directory 
       prints the absolute path name of the current working directory.
 * 1-listit
           Display the contents list of your current directory.
 * 2-bring_me_home
          changes the working directory to the user’s home directory.
 * 3-listfiles
          Display current directory contents in a long format
 * 4-listmorefiles
          Display current directory contents, including hidden files 
 * 5-listfilesdigitonly
          Display current directory contents.
              *  Long format
              *  with user and group IDs displayed numerically
              *  And hidden files (starting with .)
 * 6-firstdirectory
           creates a directory named my_first_directory in the /tmp/ directory.
 * 7-movethatfile
           Move the file betty from /tmp/ to /tmp/my_first_directory.
 * 8-firstdelete : delete file betty
 * 9-firstdirdeletion : delete directory holberton in tmp directory
 * 10-back : changes working directory to previous one
 * 11-lists : list all files in the current directory, parent directory and he boot directory including hidden files in long format
 * 12-file_type : prints the type of the file iamfile in tmp directory
 * 13-symbolic_link : creates a symbolic link named __ls__ to /bin/ls
 * 14-copy_html : copies all HTML files from working to parent directory that does not exist
 * 15-lets_move : moves all files beginning with uppercase letter to tmp directory
 * 16-clean_emacs : deletes all files ending with "~" in working directory
 * 17-tree : creates series of directories
 * 18-commas : list files and directories of current directory ending with slash(/), sorted numerically and alphabetically, and include hidden files

Tasks
-----

### 0\. Where am I?

mandatory

Score: 100.00% (Checks completed: 100.00%)

Write a script that prints the absolute path name of the current working directory.

Example:

```
$ ./0-current_working_directory
/root/alx-system_engineering-devops/0x00-shell_basics
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `0-current_working_directory`

 Done! Help Re-check your code Get a sandbox QA Review

### 1\. What's in there?

mandatory

Score: 100.00% (Checks completed: 100.00%)

Display the contents list of your current directory.

Example:

```
$ ./1-listit
Applications    Documents   Dropbox Movies Pictures
Desktop Downloads   Library Music Public
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `1-listit`

 Done! Help Re-check your code Get a sandbox QA Review

### 2\. There is no place like home

mandatory

Score: 100.00% (Checks completed: 100.00%)

Write a script that changes the working directory to the user's home directory.

-   You are not allowed to use any shell variables

```
julien@ubuntu:/tmp$ pwd
/tmp
julien@ubuntu:/tmp$ echo $HOME
/home/julien
julien@ubuntu:/tmp$ source ./2-bring_me_home
julien@ubuntu:~$ pwd
/home/julien
julien@ubuntu:~$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `2-bring_me_home`

 Done! Help Re-check your code Get a sandbox QA Review

### 3\. The long format

mandatory

Score: 100.00% (Checks completed: 100.00%)

Display current directory contents in a long format

Example:

```
$ ./3-listfiles
total 32
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:19 0-current_working_directory
-rwxr-xr-x@ 1 sylvain staff 19 Jan 25 00:23 1-listit
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:29 2-bring_me_home
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:39 3-listfiles
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `3-listfiles`

 Done! Help Re-check your code Get a sandbox QA Review

### 4\. Hidden files

mandatory

Score: 100.00% (Checks completed: 100.00%)

Display current directory contents, including hidden files (starting with `.`). Use the long format.

Example:

```
$ ./4-listmorefiles
total 32
drwxr-xr-x@ 6 sylvain staff 204 Jan 25 00:29 .
drwxr-xr-x@ 43 sylvain staff 1462 Jan 25 00:19 ..
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:19 0-current_working_directory
-rwxr-xr-x@ 1 sylvain staff 19 Jan 25 00:23 1-listit
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:29 2-bring_me_home
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:39 3-listfiles
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:41 4-listmorefiles
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `4-listmorefiles`

 Done! Help Re-check your code Get a sandbox QA Review

### 5\. I love numbers

mandatory

Score: 100.00% (Checks completed: 100.00%)

Display current directory contents.

-   Long format
-   with user and group IDs displayed numerically
-   And hidden files (starting with .)

Example:

```
$ ./5-listfilesdigitonly
total 32
drwxr-xr-x@ 6 501 20 204 Jan 25 00:29 .
drwxr-xr-x@ 43 501 20 1462 Jan 25 00:19 ..
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:19 0-current_working_directory
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:23 1-listfiles
-rwxr-xr-x@ 1 501 20 19 Jan 25 00:29 2-bring_me_home
-rwxr-xr-x@ 1 501 20 20 Jan 25 00:39 3-listfiles
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:41 4-listmorefiles
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:43 5-listfilesdigitonly
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `5-listfilesdigitonly`

 Done! Help Re-check your code Get a sandbox QA Review

### 6\. Welcome

mandatory

Score: 100.00% (Checks completed: 100.00%)

Create a script that creates a directory named `my_first_directory` in the `/tmp/` directory.

Example:

```
$ ./6-firstdirectory
$ file /tmp/my_first_directory/
/tmp/my_first_directory/: directory
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `6-firstdirectory`

 Done! Help Re-check your code Get a sandbox QA Review

### 7\. Betty in my first directory

mandatory

Score: 100.00% (Checks completed: 100.00%)

Move the file `betty` from `/tmp/` to `/tmp/my_first_directory`.

Example:

```
$ ./7-movethatfile
$ ls /tmp/my_first_directory/
betty
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `7-movethatfile`

 Done! Help Re-check your code Get a sandbox QA Review

### 8\. Bye bye Betty

mandatory

Score: 100.00% (Checks completed: 100.00%)

Delete the file `betty`.

-   The file `betty` is in `/tmp/my_first_directory`

Example:

```
$ ./8-firstdelete
$ ls /tmp/my_first_directory/
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `8-firstdelete`

 Done! Help Re-check your code Get a sandbox QA Review

### 9\. Bye bye My first directory

mandatory

Score: 100.00% (Checks completed: 100.00%)

Delete the directory `my_first_directory` that is in the `/tmp` directory.

Example:

```
$ ./9-firstdirdeletion
$ file /tmp/my_first_directory
/tmp/my_first_directory: cannot open `/tmp/my_first_directory' (No such file or directory)
$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `9-firstdirdeletion`

 Done! Help Re-check your code Get a sandbox QA Review

### 10\. Back to the future

mandatory

Score: 100.00% (Checks completed: 100.00%)

Write a script that changes the working directory to the previous one.

```
julien@ubuntu:/tmp$ pwd
/tmp
julien@ubuntu:/tmp$ cd /var
julien@ubuntu:/var$ pwd
/var
julien@ubuntu:/var$ source ./10-back
/tmp
julien@ubuntu:/tmp$ pwd
/tmp

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `10-back`

 Done! Help Re-check your code Get a sandbox QA Review

### 11\. Lists

mandatory

Score: 100.00% (Checks completed: 100.00%)

Write a script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the `/boot` directory (in this order), in long format.

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `11-lists`

 Done! Help Re-check your code Get a sandbox QA Review

### 12\. File type

mandatory

Score: 100.00% (Checks completed: 100.00%)

Write a script that prints the type of the file named `iamafile`. The file `iamafile` will be in the `/tmp` directory when we will run your script.

Example

```
ubuntu@ip-172-31-63-244:~$ ./12-file_type
/tmp/iamafile: ELF 64-bit LSB  executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.24, BuildID[sha1]=bd39c07194a778ccc066fc963ca152bdfaa3f971, stripped

```

Note that depending on the file, the output of your script will be different.

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `12-file_type`

 Done! Help Re-check your code Get a sandbox QA Review

### 13\. We are symbols, and inhabit symbols

mandatory

Score: 100.00% (Checks completed: 100.00%)

Create a symbolic link to `/bin/ls`, named `__ls__`. The symbolic link should be created in the current working directory.

```
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la
total 144
drwxrwxr-x  2 ubuntu ubuntu   4096 Sep 20 03:24 .
drwxrwxrwt 12 root   root   139264 Sep 20 03:24 ..
ubuntu@ip-172-31-63-244:/tmp/sym$./13-symbolic_link
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la
total 144
drwxrwxr-x  2 ubuntu ubuntu   4096 Sep 20 03:24 .
drwxrwxrwt 12 root   root   139264 Sep 20 03:24 ..
lrwxrwxrwx  1 ubuntu ubuntu      7 Sep 20 03:24 __ls__ -> /bin/ls

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `13-symbolic_link`

 Done! Help Re-check your code Get a sandbox QA Review

### 14\. Copy HTML files

mandatory

Score: 100.00% (Checks completed: 100.00%)

Create a script that copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.

You can consider that all HTML files have the extension `.html`

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `14-copy_html`

 Done! Help Re-check your code Get a sandbox QA Review

### 15\. Let's move

#advanced

Score: 100.00% (Checks completed: 100.00%)

Create a script that moves all files beginning with an uppercase letter to the directory `/tmp/u`.

You can assume that the directory `/tmp/u` will exist when we will run your script

```
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la
total 148
drwxrwxr-x  3 ubuntu ubuntu   4096 Sep 20 03:33 .
drwxrwxrwt 12 root   root   139264 Sep 20 03:26 ..
-rw-rw-r--  1 ubuntu ubuntu      0 Sep 20 03:32 My_file
lrwxrwxrwx  1 ubuntu ubuntu      7 Sep 20 03:24 __ls__ -> /bin/ls
-rw-rw-r--  1 ubuntu ubuntu      0 Sep 20 03:32 Elif_ym
-rw-rw-r--  1 ubuntu ubuntu      0 Sep 20 03:32 random_file
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la /tmp/u
total 8
drwxrwxr-x 2 ubuntu ubuntu 4096 Sep 20 03:33 .
drwxrwxr-x 3 ubuntu ubuntu 4096 Sep 20 03:33 ..
ubuntu@ip-172-31-63-244:/tmp/sym$ ./100-lets_move
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la
total 148
drwxrwxr-x  3 ubuntu ubuntu   4096 Sep 20 03:33 .
drwxrwxrwt 12 root   root   139264 Sep 20 03:26 ..
lrwxrwxrwx  1 ubuntu ubuntu      7 Sep 20 03:24 __ls__ -> /bin/ls
-rw-rw-r--  1 ubuntu ubuntu      0 Sep 20 03:32 random_file
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la /tmp/u
total 8
drwxrwxr-x 2 ubuntu ubuntu 4096 Sep 20 03:33 .
drwxrwxr-x 3 ubuntu ubuntu 4096 Sep 20 03:33 ..
-rw-rw-r-- 1 ubuntu ubuntu    0 Sep 20 03:32 My_file
-rw-rw-r-- 1 ubuntu ubuntu    0 Sep 20 03:32 Elif_ym

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `100-lets_move`

 Done! Help Re-check your code Get a sandbox QA Review

### 16\. Clean Emacs

#advanced

Score: 100.00% (Checks completed: 100.00%)

Create a script that deletes all files in the current working directory that end with the character `~`.

```
ubuntu@ip-172-31-63-244:/tmp/sym$ ls
main.c  main.c~  Makefile~
ubuntu@ip-172-31-63-244:/tmp/sym$ ./101-clean_emacs
ubuntu@ip-172-31-63-244:/tmp/emacs$ ls
main.c
ubuntu@ip-172-31-63-244:/tmp/emacs$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `101-clean_emacs`

 Done! Help Re-check your code Get a sandbox QA Review

### 17\. Tree

#advanced

Score: 100.00% (Checks completed: 100.00%)

Create a script that creates the directories `welcome/`, `welcome/to/` and `welcome/to/school` in the current directory.

You are only allowed to use two spaces (and lines) in your script, not more.

```
julien@ubuntu:/tmp/h$ ls -l
total 4
-rwxrw-r-- 1 julien julien 44 Sep 20 12:09 102-tree
julien@ubuntu:/tmp/h$ wc -l 102-tree
2 102-tree
julien@ubuntu:/tmp/h$ head -1 102-tree
#!/bin/bash
julien@ubuntu:/tmp/h$ tr -cd ' ' < 102-tree | wc -c # you do not have to understand this yet, but the result should be 2, 1 or 0
2
julien@ubuntu:/tmp/h$ ./102-tree
julien@ubuntu:/tmp/h$ ls
102-tree  welcome
julien@ubuntu:/tmp/h$ ls welcome/
to
julien@ubuntu:/tmp/h$ ls -l welcome/to
total 4
drwxrwxr-x 2 julien julien 4096 Sep 20 12:11 school
julien@ubuntu:/tmp/h$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `102-tree`

 Done! Help Re-check your code Get a sandbox QA Review

### 18\. Life is a series of commas, not periods

#advanced

Score: 100.00% (Checks completed: 100.00%)

Write a command that lists all the files and directories of the current directory, separated by commas (`,`).

-   Directory names should end with a slash (`/`)

-   Files and directories starting with a dot (`.`) should be listed

-   The listing should be alpha ordered, except for the directories `.` and `..` which should be listed at the very beginning
-   Only digits and letters are used to sort; Digits should come first
-   You can assume that all the files we will test with will have at least one letter or one digit
-   The listing should end with a new line

```
ubuntu@ubuntu:~/$ ls -a

.  ..  0-commas  0-commas-checks  1-empty_casks  2-gifs  3-directories  4-zeros  5-rot13  6-odd  7-sort_rot13  Makefile  quote  .test  test_dir  test.var

ubuntu@ubuntu:~/$ ./103-commas

./, ../, 0-commas, 0-commas-checks/, 1-empty_casks, 2-gifs, 3-directories, 4-zeros, 5-rot13, 6-odd, 7-sort_rot13, Makefile, quote, .test, test_dir/, test.var

ubuntu@ubuntu:~/$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `103-commas`

 Done! Help Re-check your code Get a sandbox QA Review

### 19\. File type: School

#advanced

Score: 100.00% (Checks completed: 100.00%)

Create a magic file `school.mgc` that can be used with the command `file` to detect `School` data files. `School` data files always contain the string `SCHOOL` at offset 0.

```
ubuntu@ip-172-31-63-244:/tmp/magic$ cp /bin/ls .
ubuntu@ip-172-31-63-244:/tmp/magic$ ls -la
total 268
drwxrwxr-x  2 ubuntu ubuntu   4096 Sep 20 02:44 .
drwxrwxrwt 11 root   root   139264 Sep 20 02:44 ..
-rw-r--r--  1 ubuntu ubuntu    496 Sep 20 02:42 holberton.mgc
-rwxr-xr-x  1 ubuntu ubuntu 110080 Sep 20 02:43 ls
-rw-rw-r--  1 ubuntu ubuntu     50 Sep 20 02:06 thisisanholbertonfile
-rw-rw-r--  1 ubuntu ubuntu     30 Sep 20 02:16 thisisatextfile
ubuntu@ip-172-31-63-244:/tmp/magic$ file --mime-type -m school.mgc *
school.mgc:         application/octet-stream
ls:                    application/octet-stream
thisisaschoolfile: School
thisisatextfile:       text/plain
ubuntu@ip-172-31-63-244:/tmp/magic$ file -m school.mgc *
school.mgc:         data
ls:                    data
thisisaschoolfile: School data
thisisatextfile:       ASCII text
ubuntu@ip-172-31-63-244:/tmp/magic$

```

**Repo:**

-   GitHub repository: `alx-system_engineering-devops`
-   Directory: `0x00-shell_basics`
-   File: `school.mgc`
