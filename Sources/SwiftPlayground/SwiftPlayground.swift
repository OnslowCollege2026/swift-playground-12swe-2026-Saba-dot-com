@main
struct SwiftPlayground {
    static func main() {
        var eggsInStock = 10
        //var maximumAmount = 1000
        var eggsSold = 0
        //var userChoice = 0

    

        func addEggs(currentStock: Int, amount: Int) -> Int {
                eggsInStock = currentStock + amount
                return eggsInStock
            }
        

        func sellEggs(currentStock: Int, amount: Int) -> Int {
            if amount <= currentStock {
                let newEggStock = currentStock - amount
                eggsInStock = newEggStock
                return newEggStock
                
            } else {
                    print("You have an insufficiant amount of eggs.")
                    return eggsInStock
                }
        }


        func updateSoldCount(currentSold: Int, amount: Int) -> Int {
            eggsSold = currentSold + amount
            return eggsSold
            
        }

        func stockMessage(stock: Int) -> String {
        return "You currently have \(stock) eggs in stock"
        }

func menuChoice() -> Int {

func runEggShop() {
        // Asks what user would like to do
        print("==== Egg Shop ====")
        print("1. Add eggs")
        print("2. Sell eggs")
        print("3. Show current stock")
        print("4. Show total eggs sold")
        print("5. Exit")
        print("Choose an option: ")

// var running = true

//while running {
//    let choice = menuChoice()
//}

            if let userInput = readLine(), let choice = Int(userInput) {
                let userChoice = choice
                switch userChoice{
                    case 1:
                    print("How many eggs would you like to add?")
                    if let input = readLine(), let amount = Int(input) {
                        eggsInStock = addEggs(currentStock: eggsInStock, amount: amount)
                    }
                    

                    case 2: 
                    print("How many eggs would you like to sell?")
                    if let input = readLine(), let amount = Int(input) {
                    eggsSold = sellEggs(currentStock: eggsInStock, amount: amount) 
                    eggsSold = updateSoldCount(currentSold: eggsSold, amount: amount)
                    }
                
                    case 3:
                    print("The current stock is: \(stockMessage(stock: eggsInStock))")

                    case 4:
                    print("You have sold \(eggsSold) eggs")


                    default:
                    print("Invalid choice.")
                }
            } else {
                print("Invalid choice.")
            }
        }
        runEggShop()
        return 0
    }
menuChoice()
}
}