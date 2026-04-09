@main
struct SwiftPlayground {
    static func main() {

        let menu = [
            ["Coffee", "4"],
            ["Tea", "3"],
            ["Muffin", "6"],
            ["Sandwich", "9"]
        ]

        var order = [String]()


        func addItem(name: String, to order: inout [String]) {
            order.append(name)
            print("\(name) has been added to your order!")
        }

        func calculateTotal(order: [String], menu: [[String]]) -> Int {
            var total = 0

            for item in order {
                for menuItem in menu {
                    if menuItem[0] == item {
                        if let price = Int(menuItem[1]) {
                            total += price
                        }
                    }
                }
            }
            return total
        }

        func printOrder(order: [String]) {
            if order.isEmpty {
                print("No items added yet...")
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
            print("\nPress any key to continue")
            _ = readLine()
        }


    func menuChoice() {

        var running = true

        while running {
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("")
            print("=== Koro Cafe ===")
            print("1. Show menu")
            print("2. Add item to order")
            print("3. View order")
            print("4. Checkout")
            print("5. Quit")
            print("Enter an option: ")


            if let userInput = readLine(), let choice = Int(userInput) {
                if choice <= 5 && choice >= 1 {
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
                        printOrder(order: order)
                        pause()

                        case 4:
                        let total = calculateTotal(order: order, menu: menu)
                        print("Your total is $\(total)")
                        order.removeAll()
                        pause()

                        case 5:
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