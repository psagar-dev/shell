### Automated Backup Script - Step-by-Step Explanation
This script automates the backup process for the `/var/www/html` directory by creating a compressed `.tar.gz` file inside a `backup` directory.

#### Step 1: Define Variables
```sh
BACKUP_DIR="backup"
TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"
SOURCE_DIR="/var/www/html"
```
**Explanation**
- `BACKUP_DIR="backup"` → Defines the directory where backups will be stored.
- `TIMESTAMP=$(date +%Y%m%d%H%M%S)` → Generates a timestamp in the format `YYYYMMDDHHMMSS` (e.g., `20250216120000`)
- `BACKUP_FILE="backup_$TIMESTAMP.tar.gz"` → Creates a unique filename for the backup.
- `BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"` → Defines the full path where the backup will be saved.
- `SOURCE_DIR="/var/www/html"` → Specifies the directory to back up.

#### Step 2: Create the Backup Directory
```sh
mkdir -p "$BACKUP_DIR" || { echo "Error: Failed to create backup directory $BACKUP_DIR"; exit 1; }
echo "Backup Directory $BACKUP_DIR"
```
**Explanation**
- `mkdir -p "$BACKUP_DIR"` → Creates the backup directory if it doesn’t already exist.
- `|| { echo "Error: Failed to create backup directory $BACKUP_DIR"; exit 1; }`
    - If the `mkdir` command fails, an error message is displayed, and the script exits.
- echo `"Backup Directory $BACKUP_DIR"` → Confirms that the directory exists.

#### Step 3: Check If the Source Directory Exists

```sh
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source Directory $SOURCE_DIR does not exist. Backup aborted."
    exit 1
fi
```
**Explanation**

- `[ ! -d "$SOURCE_DIR" ]` → Checks if the directory `/var/www/html` exists.
- echo `"Error: Source Directory $SOURCE_DIR does not exist. Backup aborted."` → Displays an error if the directory is missing.
- `exit 1` → Stops the script execution if the directory does not exist.

#### Step 4: Proceed with Backup
```sh
echo "Source directory $SOURCE_DIR exists. Proceeding with backup..."
```
**Explanation**
- If the source directory exists, a confirmation message is printed before starting the backup.

Step 5: Create a Compressed Backup File
```sh
tar -czf $BACKUP_PATH $SOURCE_DIR --absolute-names . && echo "Backup successfully: $BACKUP_PATH" || { echo "Backup failed"; exit 1; }
```
**Explanation**
- `tar -czf $BACKUP_PATH $SOURCE_DIR --absolute-names`
    - **tar** → Archive command.
    - **-c** → Create a new archive.
    - **-z** → Compress using gzip.
    - **-f $BACKUP_PATH** → Save the compressed archive to the backup path.
    - **$SOURCE_DIR** → Specifies the directory to back up.
    - **--absolute-names** → Ensures absolute file paths are preserved.
- `&& echo "Backup successful: $BACKUP_PATH"`
    - If the backup succeeds, it prints the success message along with the backup file path.
- `|| { echo "Backup failed"; exit 1; }`
    - If the `tar` command fails, an error message is displayed, and the script exits.