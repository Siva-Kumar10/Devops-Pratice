# LINUX
======

Memory Management:	Memory management refers to the management of Primary Memory or Main Memory i.2. RAM. IS keeps track of Primary Memory; the OS also decides which process will get memory when and how much which is called multiprogramming. OS allocates memory when required by a process and de-allocates the memory when a process no longer needs it or has been terminated.

Process Management:	Management of different processes running by the user such as Microsoft word Google chrome is also done by OS. This is done by CPU scheduling internally. We can see which process uses what CPU % in task manager.

File Management:	The resource allocation & Deallocation for different users according to their needs. This is also called parallel processing where multiple user access the same resource.

Storage Management:	Management of how data us stored in secondary storage such as Hard Disk by the file syste,

Device Management: 	Managing connections of the I/O devices and which device process get how much time. The program responsible for these tasks is known as the I/O controller.


# LINUX BOOT PROCESS
====================

Linux Boot Process works in 6 steps

BIOS -----> MBR ------> GRUB -------> KERNAL -------> INIT (System memory)

	1.	BIOS is basic input / output system
	2.	It is the 1st program which execute in RAM
	3.	It will check all the hardware component e.g. drivers,

# MBR
======

	1.	Master Boot Record, it is the first sector of the Hard Disk
	2.	It will store all the information which required to load the OS.
	3.	The size of this MBR is 512 bites, out of this initial 446 contains Boot Loader, 64 bytes contains Partition, & remaining 2 bytes  it contains all the error checking mechanism.

# GRUB
=======

	1.	Grand Unified Boot Loader
	2.	Loads kernel and initg image
	3.	Once grub is loaded transfer the control to the kernel

# KERNAL
=========

		Loads the file system
		Loads the drivers to load the file system
		mount all the partition
		starts the first process --- init / systems

Run level program


Linux Boot Process (Detailed Step-by-Step)

The Linux boot process is the sequence of events that takes place from the moment you power on your computer until the Linux login prompt or graphical desktop appears.

The Linux boot process consists of 6 major stages:

BIOS/UEFI
Boot Loader (GRUB)
Linux Kernel
Initramfs (Initial RAM Filesystem)
Systemd (Init Process)
Login Prompt / Desktop

Power ON
    │
    ▼
BIOS / UEFI
    │
    ▼
Boot Loader (GRUB)
    │
    ▼
Linux Kernel
    │
    ▼
Initramfs (initrd)
    │
    ▼
Mount Root Filesystem
    │
    ▼
systemd (PID 1)
    │
    ▼
Start Services
    │
    ▼
Login Screen / Terminal

Step 1: Power ON the Computer

When you press the Power Button, the CPU receives power and begins executing firmware instructions stored on the motherboard.

At this stage:

CPU starts execution.
RAM is initialized.
Motherboard firmware starts.

No operating system is loaded yet.

Step 2: BIOS or UEFI

What is BIOS?

BIOS (Basic Input Output System) is firmware stored on the motherboard.

Modern computers usually use UEFI (Unified Extensible Firmware Interface) instead of BIOS.

Responsibilities
Performs Power-On Self-Test (POST).
Detects hardware devices.
Initializes CPU, RAM, keyboard, storage devices.
Checks boot order.
Finds a bootable disk.

Example boot order:

USB
SSD
Hard Disk
DVD
Network

After POST completes successfully, BIOS/UEFI transfers control to the boot loader.

POST (Power-On Self-Test)

During POST, the firmware checks:

CPU
RAM
Keyboard
Mouse
Graphics card
Hard disks
SSDs
USB devices

If hardware fails:

Beep Codes
or

Error Messages

Example:

Memory Error
No Boot Device Found
Keyboard Failure

Step 3: Boot Loader (GRUB)

After BIOS/UEFI identifies the bootable device, it loads the boot loader.

The most common Linux boot loader is GRUB (GNU GRand Unified Bootloader).

Responsibilities of GRUB
Displays the boot menu.
Loads the Linux kernel.
Loads the initial RAM filesystem (initramfs).
Passes boot parameters to the kernel.
Allows selecting different kernels.
Supports dual boot (e.g., Linux and Windows).

Step 4: Linux Kernel

The kernel is the core of the Linux operating system.

After GRUB loads the kernel into RAM:

Kernel decompresses itself.
Initializes CPU.
Initializes memory.
Detects hardware.
Loads drivers.
Mounts temporary root filesystem.
Starts the first process.

Responsibilities of Kernel
Memory Management

Allocates RAM.

Process Management

Creates processes.

Device Driver Initialization

Loads drivers for:

Keyboard
Mouse
USB
Network
Storage
CPU Scheduling

Controls CPU execution.

Filesystem Initialization

Mounts the root filesystem

Step 5: Initramfs (Initial RAM Filesystem)

Before mounting the real root filesystem, Linux loads initramfs into memory.

It contains:

Essential drivers
Storage drivers
Filesystem modules
RAID/LVM support
Disk encryption support

Without initramfs, the kernel may not be able to locate or mount the root filesystem.

Step 6: Mount Root Filesystem

The kernel mounts the root (/) filesystem from the disk.

Common filesystems include:

ext4
XFS
Btrfs

The root filesystem contains directories such as:

/
├── bin
├── boot
├── dev
├── etc
├── home
├── lib
├── media
├── opt
├── proc
├── root
├── run
├── sbin
├── srv
├── sys
├── tmp
├── usr
└── var

Step 7: systemd (Init Process)

After mounting the root filesystem, the kernel starts systemd, which is the first userspace process.

Responsibilities of systemd
Starts system services.
Starts networking.
Mounts filesystems.
Starts logging services.
Starts cron timers.
Starts SSH server.
Starts graphical desktop (if installed).


Complete Linux Boot Sequence

Power Button
      │
      ▼
BIOS / UEFI
      │
      ▼
POST (Hardware Check)
      │
      ▼
Locate Boot Device
      │
      ▼
Load GRUB Boot Loader
      │
      ▼
Display GRUB Menu
      │
      ▼
Load Linux Kernel
      │
      ▼
Load initramfs
      │
      ▼
Initialize Hardware Drivers
      │
      ▼
Mount Root Filesystem
      │
      ▼
Start systemd (PID 1)
      │
      ▼
Start Services
      │
      ▼
Networking
      │
      ▼
SSH / Display Manager
      │
      ▼
Login Screen
      │
      ▼
Desktop or Shell


| Stage | Component          | Purpose                                                                      |
| ----- | ------------------ | ---------------------------------------------------------------------------- |
| 1     | Power On           | Supplies power to the system and starts firmware execution.                  |
| 2     | BIOS/UEFI          | Performs POST, initializes hardware, and finds a bootable device.            |
| 3     | GRUB (Boot Loader) | Displays the boot menu and loads the Linux kernel and initramfs.             |
| 4     | Linux Kernel       | Initializes memory, CPU, device drivers, and prepares the operating system.  |
| 5     | Initramfs          | Loads essential drivers and mounts the real root filesystem.                 |
| 6     | systemd            | Starts system services, networking, logging, and other background processes. |
| 7     | Login              | Presents a command-line or graphical login screen for the user.              |



Kernel
=====

1.	Heart if OS. interface / middleman of usrs application and hardware
2.	It is responsible for executing commands
3.	It is responsible for communicating with hardware, memory management, process management.

		$ -- non root user
		# -- 	     root user / super user

Unix Architecture
=============

Linux file system has tree structure

1.	/ -- root directory  - Topmost directory

2.	bin -- bin means binary, it contains all the binary executable related to Linux command
			
			eg: touch, mkdir, ls

3.	sbin -- sbin containers system binaries
		
		user -- 1. Normal user, 2. Root user

4.	etc -- This directory contains all system configuration files
			  This configuration is used by system

		eg:	 /etc/passwd -- all user information in this file
			/etc/group -- all group information is present in this file
			/etc/hosts -- ip and dns are available in this file

	only root user is allowed to make changes here

5.	*tmp -- tmp means temporary directory*
		
		 - if ant files or directory required just for temporary purpose then we have to create such files or folder tmp directory
		 - files from /tmp/ directory are automatically deleted after shutdown

6.	*dev -- device drivers*

		-- All device related files will be stored in /dev
		-- B using this files, we can communicate with that device
		-- hd - hard drive/distribution
		keyboard - standard input device file
		monitor -- standard output device file


7.	*mnt -- mounting*

		- 16 gb pen drivers
	eg	- mkdir - pen_drive
			umount for remove

8.	*media -- The files or drive automatic mounting will be placed in this directory*

9.	*opt -- optional*
			
		- This directory contains all 3rd party software instillation files eg: Google chrome

10.	*lib -- lib means library*

		- This library which are required by our application are stored in this lib directory

11.	*var -- variable data*

		- If any data which is keep on changing, such type of variable data is placed here

12.	*usr - user directory*

		- This directory contains all user related software

13.	*home - as Linux is multiuser operating system, for every user there is a directory created under /home to hold specific data*

		- /home/john
		- /home/alex

14.	*-root	 - it is home directory for root user*

15.	*proc -- proc means process*
	
		eg	-- in Linux multiple process are running, for every process there is unique id, for every process a separate directory is created to hold process related information, That directory is created under "proc" directory.

16.	*boot -- files which are required to boot the Linux OS are stored inside the boot directory*.


# ls
=====

  List information about the FILEs (the current directory by default).  Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.

       Mandatory arguments to long options are mandatory for short options too.

       -a, --all
              do not ignore entries starting with .

       -A, --almost-all
              do not list implied . and ..

       --author
              with -l, print the author of each file

       -b, --escape
              print C-style escapes for nongraphic characters

       --block-size=SIZE
              with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below

       -B, --ignore-backups
              do not list implied entries ending with ~

       -c     with -lt: sort by, and show, ctime (time of last change of file status information); with -l: show ctime and sort by name; otherwise: sort by ctime, newest first

       -C     list entries by columns

       --color[=WHEN]
              color the output WHEN; more info below

       -d, --directory
              list directories themselves, not their contents

       -D, --dired
              generate output designed for Emacs' dired mode

       -f     list all entries in directory order

       -F, --classify[=WHEN]
              append indicator (one of */=>@|) to entries WHEN

       --file-type
              likewise, except do not append '*'

       --format=WORD
              across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C

       --full-time
              like -l --time-style=full-iso

       -g     like -l, but do not list owner
 --group-directories-first
              group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping

       -G, --no-group
              in a long listing, don't print group names

       -h, --human-readable
              with -l and -s, print sizes like 1K 234M 2G etc.

       --si   likewise, but use powers of 1000 not 1024

       -H, --dereference-command-line
              follow symbolic links listed on the command line

       --dereference-command-line-symlink-to-dir
              follow each command line symbolic link that points to a directory

       --hide=PATTERN
              do not list implied entries matching shell PATTERN (overridden by -a or -A)

       --hyperlink[=WHEN]
              hyperlink file names WHEN

       --indicator-style=WORD
              append indicator with style WORD to entry names: none (default), slash (-p), file-type (--file-type), classify (-F)

       -i, --inode
              print the index number of each file

       -I, --ignore=PATTERN
              do not list implied entries matching shell PATTERN

       -k, --kibibytes
              default to 1024-byte blocks for file system usage; used only with -s and per directory totals

       -l     use a long listing format

       -L, --dereference
              when showing file information for a symbolic link, show information for the file the link references rather than for the link itself

       -m     fill width with a comma separated list of entries

       -n, --numeric-uid-gid
              like -l, but list numeric user and group IDs

       -N, --literal
              print entry names without quoting

       -o     like -l, but do not list group information

       -p, --indicator-style=slash
              append / indicator to directories
 -q, --hide-control-chars
              print ? instead of nongraphic characters

       --show-control-chars
              show nongraphic characters as-is (the default, unless program is 'ls' and output is a terminal)

       -Q, --quote-name
              enclose entry names in double quotes

       --quoting-style=WORD
              use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-always, c, escape (overrides QUOTING_STYLE environment variable)

       -r, --reverse
              reverse order while sorting

       -R, --recursive
              list subdirectories recursively

       -s, --size
              print the allocated size of each file, in blocks

       -S     sort by file size, largest first

       --sort=WORD
              sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X), width

       --time=WORD
              select  which timestamp used to display or sort; access time (-u): atime, access, use; metadata change time (-c): ctime, status; modified time (default): mtime, modification; birth time:
              birth, creation;

              with -l, WORD determines which time to show; with --sort=time, sort by WORD (newest first)

       --time-style=TIME_STYLE
              time/date format with -l; see TIME_STYLE below

       -t     sort by time, newest first; see --time

       -T, --tabsize=COLS
              assume tab stops at each COLS instead of 8

       -u     with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by access time, newest first

       -U     do not sort; list entries in directory order

       -v     natural sort of (version) numbers within text

       -w, --width=COLS
              set output width to COLS.  0 means no limit
 -x     list entries by lines instead of by columns

       -X     sort alphabetically by entry extension

       -Z, --context
              print any security context of each file

       --zero end each output line with NUL, not newline

       -1     list one file per line

       --help display this help and exit


===========================================


10 Linux Commands that you must commonly use
=================================

	1.	ls	 (-a, -l, -ltr) basically used to see the available files
	2.	cd
	3.	cat, less ,tail
	4.	grep
	5.	top, htop, p3
	6.	df-4 (du-sh)
	4.	systemctl
	8.	chmod / chown
	9.	scp / rsync
	10.	find

touch "myfile$(date +%d%m%y).log"

shortcut for date 

*date [-d|--date] [-f|--file] [-I|--iso-8601] [--resolution] [-R|--rfc-email] [--rfc-3339] [--debug] [-r|--reference] [-s|--set] [-u|--universal] [-h|--help] [-V|--version]*

	find . -name <file name first letter and star symbol combine>  = To find the file

	find . -name iname <file name first letter and star symbol combine> = To find the file here in i name "i" stands for ignore of file name (probably use this when we forgot the file name but having idea about the stating name of the file.

creating a group in Linux
=========================

	*sudo addgroup <namegroup> = It will create a new group in etc directory*

	*sudo adduser --ingroup admingroup siva  = This is adding the new user to the existing group*

	chgrp  --->	To change the group for the existing directory or file.

		sudo chgrp <groupname> <directory name / file name>  and press enter

	To switch the user ---> sudo su - (or) sudo su -i


*Types of permission in Linux*
==============================

	1.	r	--	read
	2.	w	--	wright
	3.	x	--	execute
	4	-	--	no permission
	5.	+	--	to add the permission
	6.	-	--	to remove the permission
	7	=	--	assignment

Total 9 permissions in Linux

---      ---       ---    == In this first three is for user permission,  second three permission is for group, last three permissions is for others
user   group   other



we can give permissions with the mode called as   "chmod"

chmod u+x, g+x, o+w  <filename>

Numeric format

		0	-->	000	-->	No permission
		1	-->	001	-->	Execute
		2	-->	010	-->	Write
		3	-->	011	-->	Write, Read
		4	-->	100	-->	Read
		5	-->	101	-->	Read, Execute
		6	-->	110	-->	Read, write
		7	-->	117	-->	Read, write, execute

*for i in {1..5}; do mv file$i.txt file$i.yml: done   creating multiple files with touch command and converting some of them in to different format*


		:%s/word1/word2/g - to globally replace the word1 from word2
 
		u --> to undo the last change made

		to install any package in ubuntu -->	sudo apt install <package name>

Vi editor --> shortcuts

		:wq	-->	To save the file in vi editor

		q!	-->	Unsave the work and come out of the vi editor

		:%s/<word name to replace>/<replacable name>/g

# Common Shortcuts
===================


		df -h		-->	to see the memory in the drive

		free -h 	-->	to see how much ram is used and how much is available

		top		-->	how many process is running in the system 

		gzip		-->	to zip the file 

		gunzip	-->	to un zip the file

		tar -cvf my-files.tar file1.txt file2.txt	-->	to Archive the files

		cat /etc/os-release	-->	to check the available os in the Linux system

Package manager	-->	Installing Software
===============================

Package management tools	-->	used to install, upgrade, delete, view package by using this tools

		1.	yum	-->	redhat based Linux

		2.	dnf	-->	redhat and rest of the linux

		3.	rpm	-->	redhat and rest of the linux		-- the name stands for redhat package manager

		4.	apt	-->	ubuntu based linux

how to install the package		-->	by using the following command

		eg: yum install nginx


Cron jobs
=======

Cron job automate repetitive tasks, ensuring they are scheduled times without manual intervention 

	ex: Backing up files, Running system maintenance or sending email reports.

crond	-->	is a service  which handles the cron job

crontab	-->	which consists of all the details

*****

in the top five stars each star represents each part

1st star works for minute (0 - 59)

2nd star works for hour (0 - 23)

3rd star works for day of the month (0 - 31)

4th star works for month (0 - 12)

5th star works for day of the week (o - 7) (sunday is 0 or 7)


1st star comes from the bottom



