import Foundation
@main
struct SwiftPlayground {
    static func main() {

        var sales = [(kumaraAmountSold: Double, kumaraCost: Double, bagAmount: Int, bagCost: Double, totalCost: Double)]()

        var kumaraInStock = 0.0



        /// Allows owner to add kumara
        /// If the amount the owner wants to add is more than 50kg (the max the bin can hold)
        /// Then the owner will be told and will need to enter a smaller amount
        /// The owner can only enter 
        /// If the owner enters an invalid amount (negative, a word ect), an error will show
        func addKumara(currentStock: Double, amount: Double) -> Double {
            if kumaraInStock == 50.0 {
                print("Max amount of kumara in stock.")
                return kumaraInStock
            } else {
                while true {
                print("How many Kumara would you like to add?")
                    if let userInput = readLine(), let amount = Double(userInput) {
                        if amount >= 1.0, currentStock + amount <= 50.0 {
                        
                            // Adds the desired amount to the current stock, updating it
                            let currentStock = currentStock + amount
                            
                            print("\(amount)kg of kumara have been added to the stock")
                            return currentStock

                        } else {
                        print("Please enter a valid number")
                        }
                    
                    }
                }
            }
            return kumaraInStock
        }

        /// Checks if the current stock is more than 0.0kg
        /// If the current stock is 0, then the user will be told
        /// Otherwise the current stock of Kumara will be shown
        func viewCurrentStock(currentStock: Double) -> Double {

            // Checks if current stock is not empty
            // If it is empty, then it will tell the user
            // Otherwise, outputs/prints the amount of kumara in stock
            if currentStock == 0 {
                print("There are no kumara in Stock")
                return currentStock
            } else {
                print("Kumara in stock: \(currentStock) ")
                return currentStock
            }
        }

        /// Asks the customer how much Kumara they want to buy
        /// If the customer wants to buy more than in stock or less than 0.1 kg, they will be told
        /// If they enter a negative amount or a string, they will also be told to try again
        /// Otherwise, if the customer enters a valid amount of Kumara then they continue back to the menu.
        /// Checks whether there is any remaining kumara/ more than 5.0kg
        /// If so, then it adds another bag and checks again if there is any remaining kumara
        func buyKumara(kumaraWeight: Double, currentStock: Double, to sales: inout [(kumaraAmountSold: Double, kumaraCost: Double, bagAmount: Int, bagCost: Double, totalCost: Double)]) -> Double? {

            while true {
                // Checks if there is any kumara in stock, if not then the customer is taken back to main menu to add kumara first
                if currentStock == 0.0 {
                    print("You have 0kg of kumara in stock. Consider adding some first.")
                    return currentStock
                } else {
                    print("How much Kumara would you like to buy (Kg)? ")

                    if let userInput = readLine(), let kumaraWeight = Double(userInput) {

                        // Makes sure that the amount of kumara the customer wants to buy is in stock
                        if kumaraWeight <= currentStock && kumaraWeight >= 0.1 {
                            let maxBagHold = 5.0
                            let pricePerKG = 3.0
                            let bagCost = 0.2

                            var remainingKumara = kumaraWeight
                            var newStock = currentStock
                            var bagAmount = 0
                            var totalPrice = 0.0

                            let kumaraPrice = pricePerKG * maxBagHold

                            // If the amount of kumara being bought is exactly 5 kg or a multipule of 5, then add another bag
                            while remainingKumara >= maxBagHold {
                                remainingKumara -= kumaraWeight
                                newStock -= maxBagHold
                                bagAmount += 1

                                let price = (maxBagHold * pricePerKG) + bagCost
                                totalPrice += price

                                print("\(kumaraWeight)kg of Kumara sold for $\(price) in \(bagAmount) bag(s)")

                            }
                            
                            // If the customer requires more than 1 bag, then add give them another bag.
                            if remainingKumara > 0.0 {
                                newStock -= remainingKumara
                                bagAmount += 1

                                let price = remainingKumara * pricePerKG

                                print("\(remainingKumara)kg of kumara has been sold for $\(price) in \(bagAmount) bags")
                            }

                            sales.append((kumaraAmountSold: kumaraWeight, kumaraCost: kumaraPrice, bagAmount: bagAmount, bagCost: bagCost, totalCost: totalPrice))
                            
                            print("\(kumaraWeight)kg of kumara sold for $\(totalPrice) in \(bagAmount) bag(s)")

                            kumaraInStock = newStock
                            return newStock
                            


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
        }

        func viewSales(sales: [(kumaraAmountSold: Double, kumaraCost: Double, bagAmount: Int, bagCost: Double, totalCost: Double)]) -> Double? {
            let running = 0.0


            if sales.isEmpty {
                print("No sales")
                return running
            }


            print("SALES:   ")
            print("")
            print(" KUMARA  |  BAGS  |  COST OF KUMARA  |  COST OF BAGS  |  TOTAL COST ")


                for sale in sales {
                print(" \(sale.kumaraAmountSold)    \(sale.bagAmount)      $\(sale.kumaraCost)      $\(sale.bagCost)       $\(sale.totalCost)")
                }
            print("")
            return running
        }


        func calculateAveCostPerBag(sales: [(kumaraAmountSold: Double, kumaraCost: Double, bagAmount: Int, bagCost: Double, totalCost: Double)]) -> Double? {
            var total = 0.0

            if sales.isEmpty {
                print("No sales yet...")
                return total
            }

            for sale in sales {
                total += sale.totalCost
            }

            let average = Double(total) / Double(sales.count)
            print("Average price of eggs sold: $\(average)")
            return average
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
                        kumaraInStock = buyKumara(kumaraWeight: kumaraInStock, currentStock: 0, to: &sales)!
                        

                        case 2:
                        
                        kumaraInStock = addKumara(currentStock: kumaraInStock, amount: 0)
                                
                        case 3:
                        // Show kumara in stock
                        viewCurrentStock(currentStock: kumaraInStock)

                        case 4:
                        viewSales(sales: sales)

                        case 5:
                        calculateAveCostPerBag(sales: sales)

                        case 6:
                        running = false

                        default:
                        print("Please enter a number (1 - 6).")
                    }
                } else {
                    print("Please enter a number (1 - 6).")
                }
            } else {
                print("Please enter a number")
            }
    }

}
}
