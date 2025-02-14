##### 📌 1. Declaring and Using Variables(`declaring-variables.sh`)
You can find the code at this location: `declaring-variables.sh`
```sh
#!/bin/bash
name="Sagar"
echo "Hello $name!"
```
##### 📖 Understanding the code
- `#!/bin/bash` → This is called a `shebang` and tells the system to execute the script using  the Bash shell.
- `name="Sagar"` → Declares a variable `name` and assigns it the value `"Sagar"`.
- `echo "Hello $name"` → Prints `Hello, Sagar!` by substituting `$name` with its assigned value.
##### 📤 Example Output:
```sh
Hello, Sagar!
```

##### 📌 2. System Variables
 **2.1 : `$HOME` - Path to the User's Home Directory**
 You can find the code at this location: `/variables/home-variables.sh`
 - Represents the home directory of the currently logged-in user.
```sh
#!/bin/bash
echo $HOME
```
📤 **Example Output:** (**for user** `sagar`)
```sh
/home/sagar
```
**2.2: `$USER` - Current Logged-in Username**
You can find the code at this location: `/variables/user-variables.sh`
- Displays the username of the currently logged-in user.
```sh
#!/bin/bash
echo $USER
```
📤 **Example Output:**
```sh
sagar
```
**2.3: `$PATH` - Directories Where Executable Files are searched**
You can find the code at this location: `/variables/path-variables.sh`
- Lists directories where the system searches for executables.
```sh
#!/bin/bash
echo $PATH
```
📤 **Example Output:**
```sh
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```
- This means when you run a command like `ls` or `cat` the system looks for it in these directories.

**2.4: `$SHELL` - The Shell Being Used**
You can find the code at this location: `/variables/shell-variables.sh`
- Shows the default shell for the user.
```sh
#!/bin/bash
echo $SHELL
```
📤 **Example Output:**
```sh
/bin/bash
```
**2.5: `$PWD` - The Current Working Directory**
You can find the code at this location: `/variables/pwd-variables.sh`
- Displays the directory in which you are currently working.

📤 **Example Output:**
```sh
/home/sagar/projects
```
**2.6: `$OLDPWD` - The Previous Working Directory**
You can find the code at this location: `/variables/pwd-variables.sh`
- Stores the last visited directory.
```sh
#!/bin/bash
echo $OLDPWD
```
📤 **Example Output:**
```sh
/home/deeksha
```

**2.7: `$LOGNAME` - The Name of the Logged-in User**
You can find the code at this location: `/variables/logname-variables.sh`
- Similar to `$USER`, stores the login name of the user.
```sh
#!/bin/bash
echo $LOGNAME
```
📤 **Example Output:**
```sh
sagar
```

**2.8: `$LANG` - Default System Language**
You can find the code at this location: `/variables/lang-variables.sh`
- Defines the system’s language and locale settings.
```sh
#!/bin/bash
echo $LANG
```
📤 **Example Output:**
```sh
en_US.UTF-8
```

**2.9: `$TERM` - The Terminal Type Being Used**
You can find the code at this location: `/variables/term-variables.sh`
- Indicates the terminal type being used (e.g., `xterm`, `vt100`).
```sh
#!/bin/bash
echo $TERM
```
📤 **Example Output:**
```sh
xterm-256color
```

**2.10: `$EDITOR` - The Terminal Type Being Used**
You can find the code at this location: `/variables/editor-variables.sh`
- Specifies the default text editor used in CLI applications.
```sh
#!/bin/bash
echo $EDITOR
```
📤 **Example Output:**
```sh
vim
```


**2.11: `$UID` - User ID of the Current User**
You can find the code at this location: `/variables/uid-variables.sh`
- Displays the numeric user ID of the current user.
```sh
#!/bin/bash
echo $UID
```
📤 **Example Output:**
```sh
1000
```
- Root user has UID `0`.

**2.12: `$GID` - Group ID of the Current User**
You can find the code at this location: `/variables/uid-variables.sh`
- Displays the group ID of the current user.
```sh
#!/bin/bash
echo $GID
```
📤 **Example Output:**
```sh
1000
```
| Variable     | Description |
|--------------|-------------|
| `$HOME`      | Home directory of the user (`/home/sagar`) |
| `$USER`	   | Current logged-in username.|
| `$PATH`	   | Directories where executable files are searched for. |
| `$SHELL`     | The shell being used (e.g., `/bin/bash`, `/bin/zsh`). |
| `$PWD`	   | The current working directory. |
| `$OLDPWD`    | The previous working directory. |
| `$LOGNAME`   | The name of the user currently logged in. |
| `$LANG`	   | Default system language. |
| `$TERM`	   | The terminal type being used. |
| `$EDITOR`    | Default text editor (e.g., `vim`, `nano`). |
| `$HOME`	   | Home directory of the current user. |
| `$UID`	   | User ID of the current user. |
| `$GID`	   | Group ID of the current user. |

##### 📌 3. Read-Only Variables
You can find the code at this location: `readonly-variable.sh`
```sh
#!/bin/bash
company="Google"
readonly company
company="Facebook"
```
##### 📖 Understanding the code
- `company="Google"` → Assigns the string `"Google"` to the variable `company`
- `readonly company` → Marks the variable `company` as **Read-Only**, preventing further modifications.
- `company="Microsoft"` → Trying to change the value **throws an error** because the variable is now immutable.
##### 📤 Example Output:
```sh
readonly-variable.sh: line X: company: readonly variable
```

##### 📌 4. Unsetting Variables
You can find the code at this location: `unset-variables.sh`
```sh
#!/bin/bash
name="Sagar"
unset name
echo $name
```
##### 📖 Understanding the code
- `name="Sagar"` → A variable named `name` is created and assigned the value `"Sagar"`.
- `unset var` 
    - The `unset` command removes the variable `name` from the shell environment 
    - After this command, `name` no longer exists.
- `echo $name`
    - Since `name` has been unset, trying to print it results in **no output** (an empty line)

🔑**Key Points:**
- The `unset` command **only works for shell variables and functions**, not for special environment variables like `$HOME` or `$PATH`.

##### 📌 5. Reading User Input in Variables in Bash
You can find the code at this location: `read-variable.sh`
```sh
#!/bin/bash
echo "Enter your name: "
read user_name
echo "Welcome $user_name"
```
🔑**Key Concepts**
- `read` command: Used to take input from the user.
- **Variables**: user_name stores the input value.
- `echo` command: Displays text on the terminal.
- **Variable expansion**: `$user_name` is replaced with the actual user input.