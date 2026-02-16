@main
struct SwiftPlayground {
    static func main() {
        // TASK A

        /// Calculates room Area
        /// - Parameters:
        ///     - length: The length of the room
        ///     - width: The width of the room
        /// - Returns: The area in square metres.
        func roomArea(length: Double, width: Double) -> Double {
            return length * width
        }

        // TASK B

        /// Calculates the volume of the room
        /// - Parameters:
        ///     - length: The length of the room
        ///     - width: The width of the room
        ///     - height: The height of the room
        /// - Returns: The volume in metres cube.

        func roomVolume(length: Double, width: Double, height: Double) -> Double {
            return length * width * height
        }

        //  TASK C

        /// Checks whether the room is small
        /// - Parameters:
        ///     - volume: The volume of the room
        /// - Return: "Bool" returns 'True' if volume is less than 60, and 'False' if volume is greater than 60.
        func isRoomSmall(volume: Double) -> Bool {
            return volume < 60
        }

        // TASK D


        /// Calculates reduced height
        /// - Parameters:
        ///     - orignal: The original height of an item
        ///     - reductionPercent: The percentage which the item will be reduced by
        /// - Return: Reduced height in metres.
        func reducedHeight(original: Double, reductionPercent: Double) -> Double {
            let multiplier = (100.0 - reductionPercent) / 100.0
            return original * multiplier
        }
    }
}