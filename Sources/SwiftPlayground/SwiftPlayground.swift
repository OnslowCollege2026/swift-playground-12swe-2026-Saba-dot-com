@main
struct SwiftPlayground {
    static func main() {

        func showWelcome() {
            print("Welcome to the Koro cafe!")
        }

        showWelcome()


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

        func calculateTotal(order: [String], menu: [[String]]) -> String {
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

            return "Your total is $\(total)"
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
            for i in 0...menu.count {
                let itemName = menu[i][0]
                let price = menu[i][0]
                print("\(i + 1). \(itemName) - $\(price)")
            }
        }



    func menuChoice() {

        var running = true

        while running {
            print("=== Koro Cafe ===")
            print("1. Show menu")
            print("2. Add item to order")
            print("3. View order")
            print("4. Checkout")
            print("5. Quit")

            if let userInput = readLine(), let choice = Int(userInput) {
                if choice <= 5 && choice >= 1 {
                    let userChoice = choice
                    
                    switch userChoice {
                        case 1:
                        printMenu(menu: menu)

                        case 2:

                    }
                }
            }
            

        } 



    }
        
}
}