# MATLAB Script: Point Coordinate Conversion
This script converts points coordinate system (mainly three) interchangeably that consist of the following:
- Rectangular Coordinate System
- Cylindrical Coordinate System
- Spherical Coordinate System

>[!NOTE]
> Author's note: This was the script that I made for my Vector Analysis class! :octocat:

## How to use
**Step 1:** Enter a row vector that contains your coordinate system.
>[!WARNING]
> Row vector must strictly contain 3 elements only. Otherwise, the script won't work.

example: 

![image](https://github.com/user-attachments/assets/052bdd3c-3e9c-4988-9203-fc8e1d2865e6)


**Step 2:** Input the following function.

```matlab
Your_New_Variable_Here = point_coord_conversion( Your_Original_Coord_System , Your_Target_Coord_System , Your_Vector_Variable)
```
Code names:
- RCS - Rectangular Coordinate System
- CCS - Cylindrical Coordinate System
- SCS - Spherical Coordinate System

example:

![image](https://github.com/user-attachments/assets/d20c0ebd-bcc2-4b60-8bf0-f5820d61b4e8)


**Step 3:** The converted coordinate system should be placed inside your new variable (or ans if you didn't put any).

example:

![image](https://github.com/user-attachments/assets/06bfec82-52aa-4568-b82b-ac859c23cb80)


## Things to keep in mind
- Make sure not to be confused on the initialization; the first condition is your original coordinate system, and the second one will be your target coordinate system.
- The script is not case-sensitive because the script ensures the string is always in uppercase.
- Make sure to put this script inside the folder where MATLAB can read it so you can use the script

## Dependencies
- MATLAB (Matrix Laboratory)

## Author
- Adrienne Hizon :shipit:
