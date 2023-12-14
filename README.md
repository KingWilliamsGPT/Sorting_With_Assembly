# x86 Assembly Sorting Algorithms

This repository contains implementations of sorting algorithms written in x86 assembly language using NASM. These sorting algorithms are designed to run on the Linux platform.

## Folder Structure

The repository is organized as follows:
```
├── sort_algorithms/
│ ├── bubble_sort.asm
│ ├── insertion_sort.asm
│ ├── selection_sort.asm
│ └── ... (other sorting algorithm files)
├── README.md
└── LICENSE
```


- `sort_algorithms/`: Directory containing individual assembly files for different sorting algorithms.
- `README.md`: This file, providing an overview of the repository and instructions.
- `LICENSE`: License file detailing the permissions and limitations for using the code.

## Sorting Algorithms

Currently implemented sorting algorithms in this repository:

- **Bubble Sort**: `bubble_sort.asm`
- **Insertion Sort**: `insertion_sort.asm`
- **Selection Sort**: `selection_sort.asm`
- *(List other implemented sorting algorithms here)*

## Usage

### Prerequisites

- **Linux Environment**: Ensure you have a Linux-based system to assemble and execute the assembly code.
- **NASM**: Make sure NASM (The Netwide Assembler) is installed on your machine. You can install it via package managers like `apt`, `yum`, or by downloading it from the official NASM website.

### Running the Code

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/x86-assembly-sorting.git
   ```

2. Navigate the directory:
    ```bash
    cd x86-assembly-sorting/sort_algorithms/
    ```

3. Choose a sorting algorithm file to assemble and run. For example, to use **bubble_sort.asm**:
    ```bash
    nasm -f elf64 -o bubble_sort.o bubble_sort.asm
    ld bubble_sort.o -o bubble_sort
    ./bubble_sort
    ```
    Replace bubble_sort.asm and bubble_sort with the appropriate file names for other algorithms.

4. Follow a similar process for other sorting algorithms present in the repository.


# License
This project is licensed under the MIT License. 🤗