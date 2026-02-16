# Simple "enrollment" script in Powershell
Created this script for bulk import of devices in Microsoft Partner Center, because I'm lazy.

## Goal
Wanted to use my iPhone to scan the barcode instead of manually typing the microsoft product key for each device that needed to be enrolled. In a scenario where you need to do this in bulks; this was a must.\
**Why not use a real scanner?** The answer is simple; Unable to acquire one.

## How it works (simplified)
**import.ps1 *filename_in_excel_folder_.csv*** takes the *Microsoft Product Key* in the first header of the CSV file (containing the Product keys) and creates a new "formatted" .csv file from the template in the **csv** folder.

### "Architecture"
The **csv** folder contains the .csv template.
The **excel** folder contains the uploaded .csv file from **in my case** is the *Orca-Scan* app on IOS. Containing all the product keys on the first header.

