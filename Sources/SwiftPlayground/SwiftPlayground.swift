@main
struct SwiftPlayground {
    static func main() {
        var eggsInStock = 0
        var eggsSold = 0
        var userChoice = 0

       // func menuChoice() -> Int {

        func addEggs(currentStock: Int, amount: Int) -> Int {
                return currentStock + amount
            }
        }

        func sellEggs(currentStock: Int, amount: Int) -> Int? {
            if amount >= currentStock {
                return currentStock - amount
            } else {
                    print("You have an insufficiant amount of eggs.")
                    }
            }
        }


        func updateSoldCount(currentSold: Int, amount: Int) -> Int {
            return currentSold + amount
        }

        func stockMessage(stock: Int) -> String {
        
}

        // Asks what user would like to do
        while userChoice >= 1 && userChoice <= 5 {
        print("==== Egg Shop ====")
        print("1. Add eggs")
        print("2. Sell eggs")
        print("3. Show current stock")
        print("4. Show total eggs sold")
        print("5. Exit")
        print("Choose an option: ")

        // Makes sure user input is correct
        if let userInput = readLine(), let choice = Int(userInput) {
            userChoice = choice
        } else {
            print("Invalid choice.")
        }  
        }


        }

        } 