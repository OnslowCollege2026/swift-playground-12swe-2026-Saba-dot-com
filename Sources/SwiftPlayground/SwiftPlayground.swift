// The Swift Programming Language
// https://docs.swift.org/swift-book


@main
struct SwiftPlayground {
    static func main() {
            func roomArea(length: Double, width: Double) -> Double {
        return length * width
    }

    let area = roomArea(length: 6.0, width: 4.5)

func roomHeight() -> Double {
    return 2.7
}

let height = roomHeight()

func roomArea() -> Double {
    return 6.0 * 4.5
}

let tiles = roomArea() / 1.5

    }
}