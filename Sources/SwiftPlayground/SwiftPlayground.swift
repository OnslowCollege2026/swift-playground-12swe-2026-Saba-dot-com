@main
struct SwiftPlayground {
    static func main() {
        var eggsInStock = 0
        var eggsSold = 0
        var userChoice = 0

       // func menuChoice() -> Int {

        func addEggs(currentStock: Int, amount: Int) -> Int {
                return currentStock + amount
                eggsInStock = currentStock + amount
            }
        

        func sellEggs(currentStock: Int, amount: Int) -> Int? {
            if amount >= currentStock {
                return currentStock - amount
                eggsInStock = currentStock - amount
            } else {
                    print("You have an insufficiant amount of eggs.")
                    }
        }


        func updateSoldCount(currentSold: Int, amount: Int) -> Int {
            return currentSold + amount
        }

        func stockMessage(stock: Int) -> String {
        // return 
        }
func runEggShop() {
        // Asks what user would like to do
        print("==== Egg Shop ====")
        print("1. Add eggs")
        print("2. Sell eggs")
        print("3. Show current stock")
        print("4. Show total eggs sold")
        print("5. Exit")
        print("Choose an option: ")

        if let userInput = readLine(), let choice = Int(userInput) {
            let userChoice = choice
            switch userChoice{
                case 1:
                print("How many eggs would you like to add?")
                print(addEggs(currentStock: Int, amount: Int))



                default:
                print("Invalid choice.")
            }
        } else {
            print("Invalid choice.")
        }
    }
}
}