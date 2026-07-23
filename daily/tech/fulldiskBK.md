
## Full Disk backup (boot and files)

Pull drive you want copied 

```
sudo dd if=/dev/mac_disk of=/dev/backup_disk bs=4M status=progress conv=noerror,sync
```

## rsync to backup specific directories 

``` 
rsync -rvaiP --delete \

--exclude=.vscode --exclude=*.swp --exclude=._* --exclude=.DS_Store  \

--exclude=.metadata --exclude=.recommenders  --exclude=.git \

--exclude=.Spotlight-V100 \

/FROM/A/  /USB/BACKUP/FILES/A/

```
