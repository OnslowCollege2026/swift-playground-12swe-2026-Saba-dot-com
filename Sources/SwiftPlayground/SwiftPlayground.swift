@main
struct SwiftPlayground {
    static func main() {

        let menu = [
            ["Coffee", "4.0"],
            ["Tea", "3.0"],
            ["Muffin", "6.0"],
            ["Sandwich", "9.0"]
        ]

        var order = [String]()


        func addItem(name: String, to order: inout [String]) {
            order.append(name)
            print("\(name) has been added to your order!")
        }

        func printReciept(order: [String], menu: [[String]]) -> Double {
            var total = 0.0
            print("Your GST inclusive total for: ")

            for item in order {
                for menuItem in menu {
                    if menuItem[0] == item {
                        print("\(item) - $\(menuItem[1])")
                        if let price = Double(menuItem[1]) {
                            total += price
                        }
                    }
                }
            }

            // Calculating GST inclusive price
            let newTotal = total * 1.15
            return newTotal
        }

        func printOrder(order: [String]) {
            if order.isEmpty {
                print("No items added yet...")
                pause()
            } else {
                print("Your order: ")
                for item in order {
                    print("- \(item)")
                }
            }
        }

        func printMenu(menu: [[String]]) {
            print(" ")
            print(" ")
            print(" ")
            print("==== THE ====")
            print("==== MENU ====")
            for i in 0..<menu.count {
                let itemName = menu[i][0]
                let price = menu[i][1]
                print("\(i + 1). \(itemName) - $\(price)")
            }
        }

        func pause() {
            print("\nPress any key to return")
            _ = readLine()
        }

        func removeItem() {
            if order.isEmpty {
                print("You haven't ordered anything yet. Please add items.")
                pause()
                return
            }

            while true {
                print("\n===Your Order===")

                for i in 0..<order.count {
                    print("\(i + 1). \(order[i])")
                }

                print("\nSelect the number of the item you want to remove: ")

                if let input = readLine(), let number = Int(input) {
                    if number >= 1 && number <= order.count {
                        let removed = order.remove(at: number - 1)
                        print("\(removed) has been removed")
                        pause()
                        return
                    } else {
                        print("This number doesn't exist. Try again")
                        continue
                    }
                } else {
                    print("Invalid input. Try again.")
                }
            }
        }



    func menuChoice() {

        var running = true

        while running {
            print("")
            print("")
            print("")
            print("=== Koro Cafe ===")
            print("1. Show menu")
            print("2. Add item to order")
            print("3. Remove an item from order")
            print("4. View order")
            print("5. Checkout")
            print("6. Quit")
            print("Enter an option: ")


            if let userInput = readLine(), let choice = Int(userInput) {
                if choice <= 6 && choice >= 1 {
                    let userChoice = choice
                    
                    switch userChoice {
                        case 1:
                        printMenu(menu: menu)
                        pause()

                        case 2:
                        printMenu(menu: menu)
                        var validAnswer = false
                        while !validAnswer {

                            print("Enter the number of the item you want to add: ")
                            if let input2 = readLine(), let itemNumber = Int(input2) {
                                if itemNumber >= 1 && itemNumber <= menu.count {
                                    let itemName = menu[itemNumber - 1][0]
                                    addItem(name: itemName, to: &order)
                                    validAnswer = true
                                } else {
                                    print("Invalid item number.")
                                }
                            } else {
                                print("Please enter a valid number.")
                            }
                        }
                        pause()

                        case 3:
                        removeItem()
                        pause()

                        case 4:
                        printOrder(order: order)

                        case 5:
                        if order.isEmpty {
                            print("You don't have anything added in your cart")
                            pause()
                        } else {
                            let total = printReciept(order: order, menu: menu)
                            print("Your total (GST inclusive): $\(total)")
                            order.removeAll()
                            pause()
                        }

                        case 6:
                        running = false

                        default:
                        print("Invalid choice")

                    }
                } else {
                    print("Please enter a valid number between 1 and 5")
                }
            }
        } 
    }
    menuChoice()   
}
}