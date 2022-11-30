# Starsector 

A tool to assist in fixing starsector mod case sensitivity issues on linux.

## Usage

It is assumed your game is crashing when loading, the first thing you need to do is locate your `starsector.log`, which is at the root of your starsector game folder. 

1. Create an empty text file in the same directory as the script named `patches.txt`.
2. Start your game, if it crashes then continue
3. Near or at the bottom of your `starsector.log` there will exist a stack trace describing the error that caused the crash. Inside the error text will be the missing `filename`.
4. Append the `filename` to `patches.txt`. *NOTE*: Each subsequent filename needs to be on a new line.
    - At the time of writing this the `Mayasuran Navy` mod throws an error with the filename `A_S-F_spellbind_turret_base.png`
5. Execute the script, if successful the output will contain the file that has been corrected. 
6. Repeat from step 2 until your game loads successfully.
