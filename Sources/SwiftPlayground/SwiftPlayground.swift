@main
struct SwiftPlayground {
    static func main() {
        // Function with parameters
        func roomArea(length: Double, width: Double) -> Double {
            return length * width
        }

        
        func roomHeight() -> Double {
            return 2.7
        }

        let height = roomHeight()

        
        func roomArea() -> Double {
            return 6.0 * 4.5
        }

        let tiles = roomArea() / 1.5

        
        let roomLength = 6.0
        let roomWidth = 4.5

        func roomArea2() -> Double {
            return roomLength * roomWidth
        }

        func largeRoom() -> Bool {
            return true
        }

        // TASK
        //func area(length: Double, width: Double) -> Double {
          //  return length * width
        }

        //print(area(length: 6.0, width: 4.5) == 27.0)
        //print(area(length: 2.0, width: 3.0) == 6.0)

        // TASK B
        //func printArea(length: Double, width: Double) {
            //let area = length * width
            //print("The area is \(area)m^2")
        //}

        // TASK C
        func area(length: Double, width: Double) -> Double {
            return length * width
        }

    }