import Foundation
@main
struct SwiftPlayground {
    static func main() {
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



        printBoard(guesses)

        

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

/// Parameters:
/// - row: The row index for the guess.
/// - col: The column index for the guess.
/// - ocean: The hidden ships grid.
/// - guesses: The player's current guesses grid.
///
/// Returns: The updated guesses grid after the guess is applied.

func processGuess(row: Int, col: Int, ocean: [[String]], guesses: [[String]]) -> [[String]] {
    // Checks if the row and column guessed exist. If not then return guesses
    guard row >= 1, row <= ocean.count, col >= 1, col <= ocean[0].count else {
        print("Your guess is invalid. Please try again.")
        return guesses
    }

    // Check if user has already guesses the position
    guard guesses[row - 1][col - 1] != "0" || guesses[row - 1][col - 1] != "X" else {
        print("You have already guessed this position. Please try again.")
        return guesses
    }
}