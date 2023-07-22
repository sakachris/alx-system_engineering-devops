# Command line for the win

## Steps followed to upload the files using SFTP:

### 1. Connected to SFTP using username and hostname
       ```
       sftp <Username>@<Host>
       ```

### 1. Asked: Are you sure you want to continue connecting (yes/no/[fingerprint])?
       ```
       yes
       ```

### 1. Prompted for the password:
       ```
       <Password>
       ```

### 1. sftp> prompt appeared then check current working directory
       ```
       pwd
       ```

### 1. Changed directory to the command_line_for_the_win directory
       ```
       cd root/alx-system_engineering-devops/command_line_for_the_win
       ```

### 1. Checked the local working directory using:
       ```
       lpwd
       ```

### 1. Changed directory to where the files are stored
       ```
       cd Desktop/commandline
       ```

### 1. Confirmed the files are present using:
       ```
       lls
       ```

### 1. Used put to upload the files as follows:
       ```
       put 0-first_9_tasks.jpg
       put 0-first_9_tasks.png
       put 1-next_9_tasks.jpg
       put 1-next_9_tasks.png
       put 2-next_9_tasks.jpg
       put 2-next_9_tasks.png
       ```

### 1. Checked the sandbox directory to see if the files are uploaded then pushed them to Github
