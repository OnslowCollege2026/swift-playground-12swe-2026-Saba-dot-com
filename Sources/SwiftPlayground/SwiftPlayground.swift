@main

struct SwiftPlayground {
    static func main() {
        var eggsInStock = 0
        var eggsSold = 0
        var userChoice = 0


        func menuChoice() -> Int {

func addEggs(currentStock: Int, amount: Int) -> Int {
    print("How many Eggs would you like to add? ")
    if let input = readLine(), let amount = Int(input) {
        eggsInStock = addEggs(currentStock: eggsInStock, amount: amount)
        print("You have \(eggsInStock) eggs left in stock.")
    }
}

func sellEggs(currentStock: Int, amount: Int) -> Int? {
    if eggsInStock >= 1 {
        print("How many eggs would you like to sell? ")
        if let input = readLine(), let amount = Int(input) {
            if amount <= eggsInStock {
                eggsInStock -= amount
                print("You have \(eggsInStock) eggs left in stock.")
            } else {
                print("You have an insufficiant amount of eggs.")
            }
        }
    } else {
        print("You do not have enough eggs - You have zero eggs")
    }
}
func updateSoldCount(currentSold: Int, amount: Int) -> Int {

}
func stockMessage(stock: Int) -> String {
    
}

// Asks what user would like to do
while userChoice < 1 || userChoice > 5 {
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
    return
}  
}

}
}