# Conways Game of Life

## Task
We want a component that takes in a representation of a "generation" in
Conway's game of life (https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life),
and gives us the next generation.

### Rules:
- Any live cell with fewer than two live neighbours dies, as if by underpopulation.
- Any live cell with two or three live neighbours lives on to the next generation.
- Any live cell with more than three live neighbours dies, as if by overpopulation.
- Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

## This project:
We started a fork of an already started project and attempted to complete it using ATDD methods.

### First stages:
* Checking the files and work already completed
* All files are currently in `spec/` folder
* Current failing test:
**viewing the next generation in conway's game of life should return a non-empty grid when we implement a viable first generation**
