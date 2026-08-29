# Turn Movement Test

Turn Movement Test is my first real Godot project focused on building a turn-based movement and combat system from the ground up.

The project started as a way to learn GDScript by actually building something instead of only reading tutorials. I am developing it alongside the GDQuest **Learn GDScript From Zero** course and using each new concept directly in the project as I learn it.

## Current Goal

The current goal is to build a simple turn-based arena where:

- The player selects movement using the mouse
- Movement happens in discrete steps instead of continuous real-time movement
- Enemies take their own action after the player acts
- The world waits for the next player action before continuing
- Characters eventually move using a grid-based system
- Combat will eventually include attack choices, hit chances, positioning, and basic AI decisions

The long-term idea is for the project to become a small turn-based fighting simulation where the player controls one character while other characters are controlled by game logic.

## What Is Working So Far

At the moment, the project includes:

- A basic Godot 2D scene
- A player and enemy using `CharacterBody2D`
- Mouse click input
- Storing clicked positions
- One-step movement toward a clicked location
- Enemy movement toward the player
- A basic player-action → enemy-action → wait loop
- Early grid coordinate detection using 64×64 cells

## What I Am Learning

This project is also being used to learn programming fundamentals, including:

- Variables
- Functions
- Function parameters
- `if` and `else` conditions
- Indentation and scope
- `Vector2`
- Mouse input events
- Positions and global positions
- Basic movement logic
- Grid math
- Git and GitHub version control

## Planned Features

Future systems I would like to experiment with include:

- `Vector2i` grid positions
- Proper grid-based movement
- A turn manager
- Multiple enemies
- Basic pathfinding
- Occupied grid cells
- Player targeting
- Attack choices
- Hit chances
- Enemy decision-making
- Health and damage
- Stamina
- Skills
- Body-part injuries
- More detailed combat simulation

## Development

This is an active learning project, so the code and structure will change as I learn better ways to build each system.

The goal is not only to finish a game, but to understand how the systems are built along the way.
