@main
struct SwiftPlayground {
    static func main() {
        // TASK A 

        if true{
            let message = "Working"
            //print(message)
        }
        // print(message)
    

        // TASK B

        let hasFurniture = true

        if hasFurniture {
            let furnitureCount = 3
            //print("The maximum number of furniture is \(furnitureCount)")
        }
        //print(hasFurniture)


        // TASK C

        func showVolume() {
            let length = 6.0
            let width = 4.5
            let height = 2.7
            let volume = length * width * height
            //print(volume)
        }
        //print(showVolume())

        // TASK D

        let isLarge = true

        if isLarge {
            let label = "This is a large room"
            print(label)
        } else {
            let label = "This is a small room"
            print(label)
        }
        /// This will NOT work:
        /// print(label) // ❌ Error: Cannot find 'label' in scope

    }
}