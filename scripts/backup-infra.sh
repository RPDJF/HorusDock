#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root. Exiting..."
  exit 1
fi

# configurations
#   infrastructure rootdir
homedir=/home/ruipa
#   logfile
log_dir=/var/log/backup-infra
logs=$log_dir/logs.txt
#   ssh configurations (you need to authorize your client public key on ssh server)
ssh_user=admin
ssh_host=nas01
ssh_port=22
#   infrastructure directory to backup
infradir=$homedir/infrastructure # 
#   data directory to backup
datadir=/data
#   remote backup on ssh server
backupdir=/volume1/backup/rsync/pizzabox
#   remote backup filename on ssh server
backup=$backupdir/snapshot

echo "Creating $log_dir..."
mkdir -p $log_dir

echo "Snapshot rotation.."
ssh -p $ssh_port $ssh_user@$ssh_host "rm -rf $backup'3' > /dev/null 2>&1; mv $backup'2' $backup'3' > /dev/null 2>&1; mv $backup'1' $backup'2' > /dev/null 2>&1 ; mv $backup'0' $backup'1' > /dev/null 2>&1"

echo "Backup start"
preargs="$args -p $ssh_port -a -e ssh --delete --link-dest=$backup""1 --log-file=$logs"
destargs="$ssh_user@$ssh_host:"$backup"0"
echo "Backup infrastructure..."
rsync $preargs $infradir $destargs > /dev/null 2>&1
echo "Backup data..."
rsync $preargs $datadir $destargs \
    --exclude "plexus/config/transcodes" \
    --exclude "plexus/config/data/subtitles" \
    --exclude "plexus/config/metadata" \
    --exclude "*/cache" \
    --exclude "*/logs" \
    --exclude "*/log" \
    --exclude "*.log" \
    --exclude "*/Backups" \
    > /dev/null 2>&1
