## Installing packages 


If you have `git` installed on your Termux, `clone` the repository and run EsTermux 👇

```
git clone https://github.com/esfelurm/Termux
cd Termux
bash EsTermux.sh
```

#### If you don't have git installed, use the following method: 

- <a href="https://github.com/esfelurm/Termux/archive/refs/heads/main.zip"> Download Repository 

- Go to the downloads folder and then unzip the Termux file 

- Enter the command ```cd /sdcard/Download``` in Termux

- Type the `mv Termux-main $HOME` command

- Type the `cd` command 

- Type the `cd Termux-main` command

- Type the `cd Termux-main` command

- Type the `bash EsTermux. sh` command

-------------------------------

### Fixed the error of not installing packages in Termux 


Do you encounter the following error while installing the package? 

```
Ign:2 https://dl.bintray.com/grimler/game-packages-24 games InRelease
Ign:3 https://dl.bintray.com/grimler/science-packages-24 science InRelease
Err:4 https://dl.bintray.com/grimler/game-packages-24 games Release
  403  Forbidden
Err:5 https://dl.bintray.com/grimler/science-packages-24 science Release
  403  Forbidden
Get:1 https://grimler.se/termux-packages-24 stable InRelease [13.1 kB]
Get:6 https://grimler.se/termux-packages-24 stable/main all Packages [21.6 kB]
Get:7 https://grimler.se/termux-packages-24 stable/main aarch64 Packages [269 kB]
Reading package lists... Done
E: The repository 'https://dl.bintray.com/grimler/game-packages-24 games Release' does not have a Release file.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible cause: repository is under maintenance or down (wrong sources.list URL?).
E: The repository 'https://dl.bintray.com/grimler/science-packages-24 science Release' does not have a Release file.
N: Metadata integrity can't be verified, repository is disabled now.
N: Possible cause: repository is under maintenance or down (wrong sources.list URL?).
```

Follow the steps below 👇


- In the first step, allow Termux to access the memory with the `termux-setup-storage` command 

- Now, to change the repo, enter the `termux-change-repo` command to enter a page 

- As in the image below, select the `Main repository` option and then press enter

<img src="https://github.com/esfelurm/Termux/assets/104654028/5dbb2071-6de0-447e-926f-150e52c01ebc"> 


- Now select `Mirrors by BFSU` option as shown below and press enter 

<img src="https://github.com/esfelurm/Termux/assets/104654028/43068374-6234-408b-b793-045ca79860f1"> 

- Update now: pkg update && pkg upgrade

If it asks any question, enter `Y` 
