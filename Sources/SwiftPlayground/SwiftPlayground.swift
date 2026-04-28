@main
struct SwiftPlayground {
    static func main() {

        /// Allows owner to add kumara
        /// If the amount the owner wants to add is more than 50kg (the max the bin can hold)
        /// Then the owner will be told and will need to enter a smaller amount
        /// The owner can only enter 
        /// If the owner enters an invalid amount (negative, a word ect), an error will show
        func addKumara(currentStock: Double, amount: Double, totalStock: Double) -> Double {
            while true {
                print("How many Kumara would you like to add?")
                if let userInput = readLine(), let amount = Double(userInput), amount >= 1, amount <= 50 {
                    let totalStock = currentStock + amount
                    var currentStock = totalStock
                    print("\(amount) kumara have been added to the stock")
                    return totalStock
                    } else if amount + currentStock > 50 {
                        print("The bin will overflow. Please add a smaller amount of Kumara.")
                    } else {
                        print("Please add a valid number")
                    }
                }

            }
        /// Checks if the current stock is more than 0.0kg
        /// If the current stock is 0, then the user will be told
        /// Otherwise the current stock of Kumara will be shown
        func viewCurrentStock(currentStock: Double) -> Double {
            if currentStock == 0 {
                print("There are no kumara in Stock")
                return currentStock
            } else {
                print("You currently have: ")
                return currentStock
            }
        }

        func addBag(kumaraWeight: Double) {
            //var bagAmount = kumaraWeight / 3
        }
        //var bagAmount = addBag(kumaraWeight:)

        func checkKumaraWeigth(kumaraWeight: Double) {
            if 
          //  if let kumaraWeight >= 0.1 && kumaraWeight <= 50.0 && kumaraWeight <= currentStock {
            //    return "The weight of your kumara is \(kumaraWeight)"
            //} 
        }

        func recordKumaraWeight(kumaraWeight: Double) {
            
        }

        func calculateTotal(total: Double, kumaraWeight: Double) -> Double {
            //var kumaraCost = kumaraWeight * 3
            //var bagCost = bagAmount * 0.2
            //var total = kumaraCost + bagCost
            return total
        }

        /// Asks the customer how much Kumara they want to buy
        /// If the customer wants to buy more than in stock or less than 0.1 kg, they will be told
        /// If they enter a negative amount or a string, they will also be told to try again
        /// Otherwise, if the customer enters a valid amount of Kumara then they continue back to the menu.
        func buyKumara(kumaraWeight: Double, currentStock: Double) -> Double? {

            while true {
                print("How much Kumara would you like to buy (Kg)? ")

                if let userInput = readLine(), let kumaraWeight = Double(userInput) {
                    if kumaraWeight <= currentStock && kumaraWeight >= 0.1 {
                        let newStock = currentStock - kumaraWeight
                        print("You have bought \(kumaraWeight) kgs of Kumara")
                        var currentStock = newStock
                    } else if kumaraWeight < 0.1 {
                        print("You cannot buy \(kumaraWeight) kgs of Kumara")
                    }
                } else if kumaraWeight > currentStock {
                    print("There aren't enough kumara. Please try again")
                } else {
                    print("Please enter a number: 0.100 or greater.")
                }
            }
        }

        func stallHistory(kumaraWeight: Double, bagAmount: Int) {
            
        }

        /// Prints the menu for the owner
        /// Requires the user to enter the number allocted to the action they want to take
        /// If an invalid choice is inputted, then they will be asked to try again.
        /// The options the customer can choose from are: Add kumara to stock, view the current stock, view the previous sales records, show summary or to quit
        func printOwnerMenu() {
            print("Enter the number: ")
            print("1. Add Kumara to stock")
            print("2. View current stock")
            print("3. View previous sales records")
            print("4. Show Summary information")
            print("5. To quit")

            if let userInput = readLine(), let choice = Int(userInput) {
                if choice <= 5 && choice >= 1 {
                    let userChoice = choice
                    switch userChoice {
                        //case 1:
                            //addKumara(currentStock: Double, amount: amount)
                        //case 2:
                            //viewCurrentStock(currentStock: currentStock)
                        //case 3:
                        default: 
                            print("Invalid answer. Try again.")
                            
                    }
                }
            }
        }


    var isRunning = true

    while isRunning {

        func runKumaraStall() {
            print("Welcome to the Kumara Stall")
            print("Enter 1 if you are a customer: ")
            print("Enter 2 if you are the owner: ")
            print("Enter 3 to quit.")

            if let userInput = readLine(), let choice = Int(userInput) {
                if choice <= 3 && choice >= 1 {
                    let userChoice = choice
                    
                    switch userChoice {
                    case 1: 
                        printUserMenu()
                    case 2:
                        printOwnerMenu()
                    case 3:
                        isRunning = false
                    default:
                        print("Invalid choice, try again")
                    }
                } else {
                    print("Please select a nnumber between 1 and 3.")
                }
            }

            func printUserMenu() {
                
                print("")
                print("Enter the number")
                print("1. Buy Kumara")
                print("2. Print reciept")
                print("3. To quit")
                
                if let userInput = readLine(), let choice = Int(userInput) {
                    if choice <= 4 && choice >= 1 {
                        let userChoice = choice
                        switch userChoice {
                            case 1:
                                buyKumara(kumaraWeight: 0, currentStock: 0)!

                            case 2:
                                print("Case 2 selected")
                                calculateTotal(total: Double, kumaraWeight: Double)
                            default:
                                print("Error")
                        }
                    }
                }
            }
        }
        runKumaraStall()
    }
}
}
