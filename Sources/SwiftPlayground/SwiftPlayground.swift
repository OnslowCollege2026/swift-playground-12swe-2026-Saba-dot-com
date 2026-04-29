@main
struct SwiftPlayground {
    static func main() {
        let sales = [(weight: Double, price: Double)]()

        var kumaraInStock = 10.0

        /// Allows owner to add kumara
        /// If the amount the owner wants to add is more than 50kg (the max the bin can hold)
        /// Then the owner will be told and will need to enter a smaller amount
        /// The owner can only enter 
        /// If the owner enters an invalid amount (negative, a word ect), an error will show
        func addKumara(currentStock: Double, amount: Double) -> Double {
            while true {
                print("How many Kumara would you like to add?")
                if let userInput = readLine(), let amount = Double(userInput), amount >= 1, amount <= 50 {
                    let totalStock = currentStock + amount
                    var kumaraInStock = totalStock

                    print("\(amount) kumara have been added to the stock")
                    return totalStock
                    } else if amount + currentStock > 50.0 {
                        print("The bin will overflow. Please add a smaller amount of Kumara.")
                    } else {
                        print("Please enter a valid number")
                    }
                    continue
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
                print("Kumara in stock: \(currentStock) ")
                return currentStock
            }
        }

        func addBag(kumaraWeight: Double) {
            //var bagAmount = kumaraWeight / 3
        }
        //var bagAmount = addBag(kumaraWeight:)


          //  if let kumaraWeight >= 0.1 && kumaraWeight <= 50.0 && kumaraWeight <= currentStock {
            //    return "The weight of your kumara is \(kumaraWeight)"
            //} 
        

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
            // add to sales: inout (Double)

            while true {
                print("How much Kumara would you like to buy (Kg)? ")

                if let userInput = readLine(), let kumaraWeight = Double(userInput) {
                    if kumaraWeight <= currentStock && kumaraWeight >= 0.1 {
                        let kumaraCost = Double(kumaraWeight * 3.0)
                        let bagAmount = Double(kumaraWeight/5.0)
                        let bagCost = Double(bagAmount * 0.2)

                        let newStock = currentStock - kumaraWeight
                        currentStock == newStock
                        print("Your total for \(kumaraWeight) kgs of Kumara: \(kumaraCost)")
                        print("Cost of \(bagAmount) bags: \(bagCost)")
                        //sales.append((weight: kumaraWeight, price: kumaraCost))
                        
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

        func viewSales(sales: [(weight: Double, price: Double)]) {
            if sales.isEmpty {
                print("No sales yet")
            } else {
            print("======SALES======")
            print(" WEIGHT  |  PRICE ")


                for sale in sales {
                    print("\(sale.weight)  |  $\(sale.price)")
                }
            }
            print("")
        }



    var running = true

    while running {

            print("======KUMARA-STALL======")
            print("Enter the number: ")
            print("1. Buy Kumara")
            print("2. Add Kumara to stock")
            print("3. View current stock")
            print("4. View previous sales records")
            print("5. Show Summary information")
            print("6. To quit")

            if let userInput = readLine(), let choice = Int(userInput) {
                if choice <= 6 && choice >= 1 {

                        switch choice {

                            case 1:
                                buyKumara(kumaraWeight: 0, currentStock: 0)!
                                print("Case 1 has been selected")

                            case 2:
                                kumaraInStock = addKumara(currentStock: kumaraInStock, amount: 0)
                            
                            case 3:
                            viewCurrentStock(currentStock: kumaraInStock)

                            case 4:
                            viewSales(sales: sales)

                            case 5:
                            print("Case 5 selected")

                            case 6:
                            running = false

                            default:
                                print("Please try again.")
                        }
                    }
                    else {
                        print("Please enter a number")
                    }
                }
            }

    }
}