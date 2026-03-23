import Foundation
@main
struct SwiftPlayground {
    static func main() {

        // Max number of guesses
        let maxiumumGuesses = 5

        // The width and length of the ocean
        let size = 6

        // The ocean
        var ocean = Array(repeating: Array(repeating: "~", count: size), count: size) 

        // Record of guesses
        var guesses = Array(repeating: Array(repeating: "~", count: size), count: size)

        // Placing the ship
        ocean[0][0] = "S"
        ocean[1][3] = "S"
        ocean[4][5] = "S"
        ocean[5][1] = "S"



        

            // Limiting the number of guesses
            var progress = 1
            while progress < maxiumumGuesses {
            printBoard(guesses)

            // Ask for user input
            print("\(progress): Please enter a row number, press Enter, then a column number: ")

            // Take user valid input (Int) otherwise ask user to repeat 
            guard let userInput = readLine(), let row = Int(userInput), let userInput2 = readLine(), let col = Int(userInput2) else {
                print("Your guess is invalid, plese try again.")
                continue
            }

            let pastGuesses = guesses



            }
        

        }
}

// Printing grid for the player

/// Parameter:
/// - board: The 2D grid to display.        
func printBoard(_ board: [[String]]) {
    var columnLabels = "   "
    for i in 1...board.count {
        columnLabels = columnLabels + "\(i)  "
    }   
    print(columnLabels)

    for (index, row) in board.enumerated() {
        var rowString = "\(index + 1)  "
        for cell in row {
            rowString = rowString + cell + "  "

        }
        print(rowString)
    
}

}


// Asks user for input

print("Enter a ")

/// Parameters:
/// - row: The row index for the guess.
/// - col: The column index for the guess.
/// - ocean: The hidden ships grid.
/// - guesses: The player's current guesses grid.
///
/// Returns: The updated guesses grid after the guess is applied.

func processGuess(row: Int, col: Int, ocean: [[String]], guesses: [[String]]) -> [[String]] {
    var updated = guesses
    // Checks if the row and column guessed exist. If not then return guesses
    guard row >= 1, row <= ocean.count, col >= 1, col <= ocean[0].count else {
        print("Your guess is invalid. Please try again.")
        return updated
    }

    // Check if user has already guesses the position
    guard guesses[row - 1][col - 1] != "O" && guesses[row - 1][col - 1] != "X" else {
        print("You have already guessed this position. Please try again.")
        return updated 
    }

    // Make sure that user didn't miss the battleship
    // If not, then return updated guess table including miss.
    
    guard ocean[row - 1][col - 1] == "S" else {
    print("YOU MISSED!")
    var newGuesses = guesses
    newGuesses[row-1][col-1] = "O"
    return newGuesses
    }

    // By now, the player has hit the battleship

    print("You've sunk my battleship!")
    var newGuesses = guesses
    return newGuesses
}

/// Parameters:
/// - ocean: The hidden ships grid.
/// - guesses: The player's current guesses grid.
/// 
/// Returns: How many ships remain unhit.
func remainingShips(in ocean: [[String]], guesses: [[String]]) -> Int {
    var shipCount = 0
    for row in 0...ocean.count {
        for col in 0...row {
            if ocean[row][col] == "S" {
                shipCount = shipCount + 1
            }
        }
    }

    var missCount = 0
    for row in 0...ocean.count {
        for col in 0...row {
            if ocean[row][col] == "X" {
                missCount = missCount + 1
            }
        }
    }

    return shipCount
}

