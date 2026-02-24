


func print(board: [[String]]) {
    print("--+---+--")
    board.forEach { line in
        print("\(line[0]) | \(line[1]) | \(line[2])")
        print("--+---+--")
        
    }
    print(" ")
}
func askForPosition(board: [[String]]) -> [Int] {
    while true {    
        print("Please enter the row number 1-3: ")
        let userInput = readLine()!
        let rowNumber = Int(userInput)! - 1

        print("Please enter the column number 1-3: ")
        let userInput2 = readLine()!
        let columnNumber = Int(userInput2)! - 1


        if board[rowNumber][columnNumber] == "." {
            return [rowNumber, columnNumber]
        }
    }
}

@main
struct SwiftPlayground {
    static func main() {
        var player = "O"

        var board = [
            [".", ".", "."], // Row 0
            [".", ".", "."], // Row 1
            [".", ".", "."]   // Row 2
        ]

        print(board: board)

    while true {
            let position = askForPosition(board: board)
            board[position[0]] [position[1]] = player

            if player == "O" {
                player = "X"
            } else {
                player = "O"
            }
                        print(board: board)
        } 

        
        // First move: 0 in middle.
        board[1][1] = "O"
        print(board: board)

        // Second move: Top left corner
        board[0][0] = "X"
        print(board: board)

        // Third move: Top right corner
        board[0][2] = "O"
        print(board: board)

        // Fourth move: Bottom left corner
        board[2][0] = "X"
        print(board: board)

         // Fifth move: Middle left 
        board[1][0] = "O"
        print(board: board)

         // Sixth move: Middle right 
        board[1][2] = "O"
        print(board: board)

         // Seventh move: Middle right 
        board[1][2] = "X"
        print(board: board)

         // Eighth move: Middle bottom 
        board[2][1] = "O"
        print(board: board)

        // Ninth move: Middle bottom 
        board[0][1] = "X"
        print(board: board)
    }
}