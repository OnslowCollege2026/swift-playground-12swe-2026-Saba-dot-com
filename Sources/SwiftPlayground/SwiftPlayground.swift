// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let maximumItemVolume = 2.0

        // Storing Length, Width, Height
        print("Enter the room Length: ")
        if let userInput = readLine(), let roomLength = Double(userInput) {
            print("Enter the room Width: ")
            if let userInput = readLine(), let roomWidth=Double(userInput) {
        print("Enter the room Height: ")

        // Calculate area and volume of the room
        if let userInput = readLine(), let roomHeight=Double(userInput) {
                                  let area = roomLength * roomWidth
                                  let roomVolume = area * roomHeight
        
        // Print Area and Volume
        print("The area is \(area) m².")
        print("The volume is \(roomVolume) m³.")
    
        // Calculating furniture
            let furnitureVolumes = [1.2, 0.8, 2.5, 0.6, 1.0]
        var totalFurnitureVolume = 0.0
        furnitureVolumes.enumerated().forEach { index, volume in
        print("Item \(index + 1): \(volume)m³")
        if volume > maximumItemVolume {
            print("Oversized item detected")
        }
    totalFurnitureVolume = totalFurnitureVolume + volume
        }
        let usableVolume = roomVolume - totalFurnitureVolume
        print("Usuable volume: \(usableVolume) m³ ")
        }
        }
        }
    }
}

// -------------------------------------------
// NEXT: Part 8: Input validation (while loop)
// -------------------------------------------