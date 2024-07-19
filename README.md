# VS-code-setup-for-CP
This guide will help you set up a C++ development environment in Visual Studio Code using the provided 'tasks.json' and 'run.bat' files. This setup will compile and run your C++ code, redirect input from 'input.txt', compare the output with 'expected.txt', and clean up after execution.
<br>
## Ensure your workspace folder has the following structure:
1. input.txt<br>
2. expected.txt<br>
3. output.txt<br>
4. tasks.json<br>
5. run.bat<br>
6. your_cpp_file.cpp
## Steps to Implement the Setup :
#### 1. **Add the Provided Files**<br>
Copy the provided `tasks.json` and `run.bat` files into your workspace. Ensure `tasks.json` is in the `.vscode` folder.<br>
- **tasks.json Configuration**<br>
Create a `.vscode` directory in your workspace if it doesn't exist and add `tasks.json`<br>
+ **run.bat Script**<br>
Add the `run.bat` script to your workspace<br>
#### 2.**Create Input, Expected and Output Files**
Create `input.txt` , `expected.txt` and `output.txt` in your workspace. These files will be used for input redirection and output comparison.
## Build and Run Your Code :

- Open your C++ file in VS Code.
- Press `Ctrl+Shift+B` to build your C++ file.
- Press `Ctrl+Shift+P`, type `Tasks: Run Task`, and select `run` to execute your program.
