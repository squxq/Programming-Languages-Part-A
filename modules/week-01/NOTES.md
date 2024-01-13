# Introduction and Course-Wide Information

## Welcome! (And Some Course Mechanics)

Dan Grossman - the professor. This course is about an opportunity to learn the fundamental concepts of programming languages, in a way that makes me a better programmer in any programming language. The point is to learn the core ideas around which every language is built and understand precisely the different ideas that we use when we program.

Concise to-do list:

- Get familiar with all the materials on the webpage;
- Get set up using Emacs and SML;
- Optional Homework 0.

Course materials:

- Video lectures: most necessary, others labeled “optional”.
- Reading notes: some material as lectures, but more precise and complete - optional but recommended.
- Lecture code: to avoid having to re-copy from videos.
- Homework assignments: graded against test cases and peer graded.
- Examples: cover topics harder to re-enforce with “just programming” because this is not just a programming course.

Homework: one per major-course section (works a little more like an university course).

There’s something deeply artistic and elegant in the way programming languages fit together.

## What this Course is About / Initial Motivation

We are going to learn the basic concepts that underlie all or almost all programming languages and how those pieces fit together. We are going to use ML in Part A, Racket in Part B, and Ruby in Part C. When we are studying the core concepts, simplicity is a virtue. There is a big focus on functional programming, that means:

- not using mutation (assignment statements);
- using first class functions;
- and many other topics too.

Learning this material will give me a new way of thinking about software. Will make me a better programmer. It will, on top of that, give me the mental tools and experience I need for a lifetime of confidently picking up new languages and ideas and for being able to reason carefully, precisely and correctly about the software that I’m writing.

Next 4-5 weeks we will use:

- ML Language;
- Emacs editor;
- Read-eval-print-loop (REPL) for evaluating programs.

Working in strange environments is a computing life skill.

## Why Part A, Part B, Part C

The course is very large - 100-200 hours of material.

- Part A: 3 homeworks, 1 exam;
- Part B: 2 homeworks (1 more challenging);
- Part C: 2 homeworks (1 more challenging), 1 exam.

Im many senses, Programming Languages is a single course. Stopping after Part A (or Part B) is like putting down a novel in the middle - you may have had a great reading experience with interesting characters and plot, but the author intended more and you aren’t getting the full story.

## Grading Policy

Programming Languages Part A has 3 homework assignments and 1 exam. Each contributes 1/4 to the overall grade. For the homework assignments, most of the grade is assigned by an auto-grader, but some is assigned via peer assessment. You have to turn in your assignments separately for auto-grading and peer assessment, and you must do the peer assessment. Homework grading stricter than is most MOOCs. Auto-grading score must exceed 80%, but we are encouraged to continue past that. For peer assessment, participation suffices (the threshold is low enough it is basically not possible not to meet it). When submitting multiple times, your grade is the maximum across submissions.

## Very High-Level Outline

Overall: a precisely specific introduction to functional programming built up piece-by-piece. Part A:

1. Software Installation;
2. Basics, functions, recursion, scope, variables, tuples, lists, … (give extra time for section 1);
3. Datatypes, pattern-matching, tail recursion;
4. First-class functions, closures [and course motivation];
5. Type inference, modules.

Part B:

1. Quick “re-do” in a dynamically typed language; delaying evaluation;
2. Implementing languages with interpreters; static vs dynamic typing.

Part C:

1. Dynamically-typed Object-Oriented Programming;
2. OOP vs Functional decomposition; advanced OOP topics (e.g., mixins, double dispatch); generics vs subtyping.

## About the Course

This course is neither particularly theoretical nor just about programming specifics - it will give you a framework for understanding how to use language constructs effectively and how to design correct and elegant programs. By using different languages, I will learn to think more deeply than in terms of the particular syntax of one language. The emphasis on functional programming is essential for learning how to write robust, reusable, composable, and elegant programs. Indeed, many of the most important ideas in modern languages have their roots in functional programming.

Course Goals:

- Internalize an accurate understanding of what functional and object-oriented programs mean;
- Develop the skills necessary to learn new programming languages quickly;
- Master specific language concepts such that they can recognize them in strange guises;
- Learn to evaluate the power and elegance of programming languages and their constructs;
- Attain reasonable proficiency in the ML, Racket, and Ruby languages --- and, as a by-product, become more proficient in languages they already know.

Approximate list of specific course topics:

Part A:

- Syntax vs. semantics vs. idioms vs. libraries vs. tools
- ML basics (bindings, conditionals, records, functions)
- Recursive functions and recursive types
- Benefits of no mutation
- Algebraic datatypes, pattern matching
- Tail recursion
- Higher-order functions; closures
- Lexical scope
- Currying
- Syntactic sugar
- Equivalence and effects
- Parametric polymorphism and container types
- Type inference
- Abstract types and modules

Part B:

- Racket basics
- Dynamic vs. static typing
- Laziness, streams, and memoization
- Implementing languages, especially higher-order functions
- Macros
- Eval

Part C:

- Ruby basics
- Object-oriented programming is dynamic dispatch
- Pure object-orientation
- Implementing dynamic dispatch
- Multiple inheritance, interfaces, and mixins
- OOP vs. functional decomposition and extensibility
- Subtyping for records, functions, and objects
- Class-based subtyping
- Subtyping
- Subtyping vs. parametric polymorphism; bounded polymorphism

# Software Installation and Homework 0

This module contains two things: (1) The information for the [unusual] software you need to install for Programming Languages Part A. (2) An optional "fake" homework that you can turn in for auto-grading and peer assessment to get used to the mechanics of assignment turn-in that we will use throughout the course.

## Part A Software Installation and Use: SML and Emacs

For Programming Languages, Part A, we will work with the Standard ML programming language (ML), using the Standard ML of New Jersey compiler (SML/NJ). While Emacs does not have the look-and-feel or tool-integration of many modern integrated development environments (IDEs), it is a versatile tool well-known by many computer scientists and software developers.

- The cursor is a rectangular block and is referred to as the point.
- The mode line displays information about the buffer displayed in the current window. A buffer is a logical “thing” that we are working on. When we open a file, it will be loaded into a buffer, typically with the same name as the file.
- Every buffer is edited in a mode. The most basic mode is Fundamental, which provides only the most basic Emacs editing features. There are modes for many different programming languages.

The most important commands in Emacs:

- **C-x C-c**: Quit Emacs
- **C-g**: Cancel the current action
- **C-x C-f**: Open a file (whether or not it already exists)
- **C-x C-s**: Save a file
- **C-x C-w**: Write a file (probably more familiar to you as *Save as...*)

Cut, copy, paste:

- Highlight text with the mouse or by hitting **C-*Space*** to *set a mark* and then moving the cursor to highlight a region.
- **C-w**: Cut a highlighted region
- **M-w**: Copy a highlighted region
- **C-k**: Cut (*k*ill) from the cursor to the end of the line
- **C-y**: Paste (*y*ank)

Some other useful commands:

- **C-x 2**: Split the window into 2 buffers, one above the other (Use the mouse or **C-x o** to switch between them)
- **C-x 0**: Undo window-splitting so there is only 1 buffer
- **C-x b**: Switch to another buffer by entering its name
- **C-x C-b**: See a list of all current buffers

Getting help within Emacs: In addition to the help button/menu on the right...

- **C-h**: Hitting this will display a short message in the minibuffer: C-h (Type ? for further options)C-h (Type ? for further options).
- **C-h b**: Key *b*indings. This lists all key bindings that are valid for the current mode. Note that key bindings change from mode to mode.
- **C-h a**: Command *a*propos. After typing C-h a type a symbol and a buffer will appear that lists all symbols and functions that match that phrase.
- Change the colors of syntax highlighting. In version 24 of Emacs, M-x customize-themes is a good place to start.
- General customization interface: Open the Options menu and choose the first item under Customize Emacs. This will let you customize Emacs through a sort-of-graphical interface. It saves all the settings in a file that sits in "home" directory, ~/.emacs.
- Much, much, much more: Emacs calls itself an extensible editor for a reason.

SML Mode is an extension to Emacs that is not Emacs itself or SML/NJ itself. It displays SML code nicely with syntax coloring and clean indentation, and provides a way to run SML from within Emacs. Using the SML/NJ REPL (Read-Eval-Print Loop) in Emacs:

- Edit a file with extension **.sml** - be in SML-mode, using Tab to indent the code.
- To create the ***sml*** buffer (which holds the REPL), type C-c C-s (and then *Return/Enter*) in the buffer with the .sml file.
- To end and restart a REPL session, type C-d (to end it) and C-c C-s (and then *Return/Enter*) (to restart it).
- By ending and restarting a session, the new session has an empty environment. Your earlier interactions are still in the *sml* buffer, so you can save them, cut-paste them, etc., but they have no effect on the evaluation in the restarted REPL session.
- Evaluation can go into an infinite loop.
- If you forget to end your binding with a ";" character, the REPL will print an "=" character on the next line, which is just its way of saying, "you are not done -- continue your binding," so type a ";" and hit *Return/Enter*.
- The REPL has a limit on how many characters it prints, which is good since you might make a large value, such as a list with tens of thousands of elements.
- Two keyboard commands are particularly useful in the REPL: M-p will print the previous line you used in the REPL, which you can then run again or edit before running. The p stands for *previous*. M-n (repeatedly) does the same thing in the opposite direction, with the n standing for *next*.

In each REPL session, follow this pattern:

- First type use "foo.sml"; for any SML files you want to use.
- Then use the REPL manually as long as you wish.
- After using the REPL to test something, do *not* use use to load (or reload) any more files.
- When tempted to violate the previous point, end and restart your REPL session before continuing.

If you find yourself typing the same non-trivial things repeatedly in the REPL, stop wasting your time.

- Move the repeated parts to a second file, e.g., test.sml.
- Then, when you restart your session, begin with use "foo.sml"; use "test.sml";;.
- In fact, there is an even faster way:
1. Begin test.sml with the expression use "foo.sml";
2. Then begin your session with use "test.sml";

If you develop some emotional attachment to the transcript of your *sml* buffer, you can save it to a file just like any other buffer. But after you do, it is not an *sml* buffer anymore, so you will have to create a new *sml* buffer from a buffer in SML Mode via C-c C-s.

## Homework 0

[hw0.pdf](https://github.com/squxq/Programming-Languages-Part-A/blob/week-01/homework/homework-00/hw0.pdf)

[hw0provided.sml](https://github.com/squxq/Programming-Languages-Part-A/blob/week-01/homework/homework-00/hw0provided.sml)

[hw0test.sml](https://github.com/squxq/Programming-Languages-Part-A/blob/week-01/homework/homework-00/hw0test.sml)

> The provided function f uses addition where it should use multiplication. In the line defining the
function f, replace the + with * to fix this bug.
> 

```ocaml
(* Dan Grossman, Coursera PL, HW0 Provided Code *)

(* The line below is wrong -- replacing the addition, +, with
multiplication, *, will fix it *)
fun f(x,y) = x * y

(* Do not change these: They should be correct after fixing the code above *)

fun double x = f(x,2)

fun triple x = f(3,x)
```

```ocaml
(* Homework0 Simple Test *)

(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)

val test1 = double 17 = 34

val test2 = double 0 = 0

val test3 = triple ~4 = ~12

val test4 = triple 0 = 0

val test5 = f(12,27) = 324

(* You can add more tests here, for example you can uncomment the line below
by deleting the first two character and last two characters on the line *)

(* val test6 = triple ~1 = ~3 *)
```