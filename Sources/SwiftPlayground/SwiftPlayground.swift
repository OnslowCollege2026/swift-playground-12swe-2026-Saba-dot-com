@main
struct SwiftPlayground {
    static func main() {

        /// Allows owner to add kumara
        func addKumara(currentStock: Double, amount: Double) -> Double {
            print("How many Kumara would you like to add? ")

            if let userInput = readLine(), let amount = Double(userInput) {
                if amount <= 50.0 && amount >= 0.1 {
                    if amount + currentStock <= currentStock {
                        var kumaraInStock = currentStock + amount
                        var currentStock = kumaraInStock
                        return kumaraInStock
                    } else {
                        print("The container cannot hold that much. Enter another amount.")
                    }
                } else if amount >= 50 {
                    print("The bin will overflow. Enter a valid amount.")
                    addKumara(currentStock: currentStock, amount: amount)
                } else {
                    print("Invalid amount. Try again")
                    addKumara(currentStock: currentStock, amount: amount)
                }
            }
        }

        func viewCurrentStock(currentStock: Double) -> Double {
            if currentStock <= 0 {
                return currentStock
                print("There are no kumara in Stock")
            } else {
            return currentStock
            }
        }

        func addBag(kumaraWeight: Double) {
            var bagAmount = kumaraWeight / 3
        }
        var bagAmount = addBag(kumaraWeight:)

        //func checkKumaraWeigth(kumaraWeight: Double) -> String {
          //  if let kumaraWeight >= 0.1 && kumaraWeight <= 50.0 && kumaraWeight <= currentStock {
            //    return "The weight of your kumara is \(kumaraWeight)"
            //} 
        //}

        func calculateTotal(total: Double, kumaraWeight: Double) {
            var kumaraCost = kumaraWeight * 3
            var bagCost = bagAmount * 0.2
            var total = kumaraCost + bagCost
        }

        func buyKumara(kumaraWeight: Double) {
            var kumaraCost = kumaraWeight * 3
        }

        func stallHistory(kumaraWeight: Double, bagAmount: Int) {
            
        }

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
                        case 1:
                            addKumara(currentStock: Double, amount: amount)
                        case 2:
                            viewCurrentStock(currentStock: currentStock)
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
                if choice <= 2 && choice >= 1 {
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
                }
            }

            func printUserMenu() {
            
                print("Enter the number")
                print("1. Buy Kumara")
                print("2. Print reciept")
                print("3. To quit")
                
                if let userInput = readLine(), let choice = Int(userInput) {
                    if choice <= 5 && choice >= 1 {
                        let userChoice = choice
                        switch userChoice {
                            case 1:
                                buyKumara(kumaraWeight: Double)
                            case 2:
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