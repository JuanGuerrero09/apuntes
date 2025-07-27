https://www.youtube.com/watch?v=LqirVc5SlW0&list=PLrDd_kMiAuNmSb-CKWQqq9oBFN_KNMTaI
https://www.nand2tetris.org/course
# Syllabus

Textbook: Nisan and Schocken, The Elements of Computing Systems, MIT Press
(recommended, not required).

Course Plan (by week)

Aquí tienes el contenido bien **formateado** y organizado con claridad para lectura y presentación, ideal para un documento técnico o académico:

---

# Course Overview: Building a Modern Computer System from First Principles

## Part I: Hardware

We’ll build a general-purpose computer equipped with a symbolic machine language and an assembler. To provide motivation and context, we’ll begin by showcasing video games already developed for this platform — _Pong_, _Snake_, _Space Invaders_, _Life_, _Google’s Dino_, and more.

### 1. Boolean Logic

- Introduction to gate logic and Boolean algebra.
- Discussion on abstraction vs. implementation.
- Proof that all logic circuits can be built using only NAND gates.
- Introduction to a simple Hardware Description Language (HDL).
- **Project 1:** Use HDL to implement basic gates (AND, OR, NOT, MUX...) from NAND.

### 2. Boolean Arithmetic

- Bitwise representation of signed numbers.
- Implementing arithmetic operations with logic gates.
- Building a family of adders, culminating in an **Arithmetic-Logic Unit (ALU)**.
- **Project 2:** Build the ALU using the gates from Project 1.

### 3. Memory

- Introduction to sequential logic, clocks, and flip-flops.
- Explanation of how memory units are constructed and maintained.
- Brief history of the transistor.
- **Project 3:** Construct a memory hierarchy (bit → register → RAM).

### 4. Machine Language
- Introduction to the software-hardware interface.
- Understanding the instruction set and abstract computer architecture.
- I/O management via memory-mapped screens and keyboards.
- **Project 4:** Write and run assembly programs using a CPU emulator.

### 5. Computer Architecture

- Explore the _stored program_ concept and fetch-execute cycle.
- Integrate chips built in Projects 1–3 into a functioning computer.
- **Project 5:** Build the _Hack_ computer and run assembly programs from Project 4.

### 6. Assembler

- From symbolic to binary: the motivation from Ada Lovelace to modern computing.
- Learn parsing, code generation, and symbol resolution.
- **Project 6:** Build an _assembler_ using a high-level programming language.

---

## Part II: Software

Using the computer built in Part I, we will build a multi-tier software stack: a virtual machine, a compiler for a high-level language (_Jack_), and a basic operating system.

### 7. Virtual Machine I

- Theory: pushdown automata and stack-based processing.
- Introduction to a VM language inspired by the JVM.
- **Project 7:** Build a JRE-like program that translates VM commands to Hack assembly.

### 8. Virtual Machine II

- Implement advanced abstractions: branching, subroutines, function calls.
- **Project 8:** Extend your VM translator to support full function call semantics.

### 9. High-Level Language (Jack)

- Introduction to _Jack_, an object-based, Java-like language.
- **Project 9:** Design and implement a game in _Jack_ using the compiled environment.

### 10. Compiler I

- Study of context-free grammars and recursive descent parsing.
- **Project 10:** Build a syntax analyzer (tokenizer + parser) for _Jack_.

### 11. Compiler II

- Translate high-level abstractions into VM code.
- **Project 11:** Extend your syntax analyzer into a full _Jack_ compiler.

### 12. Operating System

- Learn key OS concepts: memory management, math libraries, graphics rendering, string handling.
- Bootstrapping an OS using high-level _Jack_ code.
- **Project 12:** Build a simple OS in _Jack_, similar in spirit to early _Unix in C_.

---

## Bonus: Further Exploration

- Implementing additional features: file systems, shell interfaces, networking.
- Building your computer in silicon using FPGA technology.
- What will **you** build next?

---


# Hardware
## Boolean logic
## Boolean arithmetic
## Memory
## Machine Language
## Computer Architecture
## Assembler
# Software
## Virtual Machine
## High Level Language
## Compiler
## Operating system
## More fun to go






https://www.nand2tetris.org/
https://drive.google.com/file/d/1EWCOVIcg0-dX0XtL3KwNyra6jzMogXLL/view

# Zig

https://pedropark99.github.io/zig-book/