## README: Running Hello World Assembly Program with Shell Script

This script automates compiling and running a simple "Hello, World!" program written in x86-64 assembly language. 

**Requirements:**

* Linux or macOS system
* NASM (Netwide Assembler) installed

**Instructions:**

1. **Prerequisites:** 
   Ensure you have NASM installed on your system. It's typically available through your package manager (e.g., `apt-get install nasm` on Ubuntu/Debian).

2. **Script Location:**
   Save the script as `run_hello.sh` (or any preferred name with `.sh` extension) in the same directory containing your `hello.asm` assembly file.

3. **Running the Script:**
   Open a terminal window and navigate to the directory where you saved the script and `hello.asm`. 

   * Make the script executable (optional but recommended for convenience):
     ```
     chmod +x run_hello.sh
     ```

   * Run the script by typing its name:
     ```
     ./run_hello.sh
     ```

**Explanation:**

The script performs the following steps:

* Uses `nasm` with the `-felf64` flag to assemble your `hello.asm` file into a 64-bit ELF object file named `hello.o`.
* Uses the linker `ld` to link the object file with system libraries, creating an executable file named `hello`.
* Finally, it executes the generated `hello` program.

**Output:**

If successful, the script will compile your assembly code and run the program, printing "Hello, World!" to the console.

**Additional Notes:**

* This script provides a basic example. For complex projects, consider using a build system or a more robust workflow.
* The script assumes the `hello.asm` file exists in the same directory.

This readme provides clear instructions on how to use the script and explains the steps involved in the compilation and execution process.
