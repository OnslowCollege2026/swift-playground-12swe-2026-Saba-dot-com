func columnTotal(in table2: [[Int]], column: Int) -> Int? {
    var total = 0

    for row in table2 {
        if column < row.count {
            total += row[column]
        }
    }
    if total > 0 {
        print("The sum for this column is \(total)")
    } else {
        return nil
    }
    return nil
}


func maxValue(in readings: [[Double]]) -> Double? {
    var largestValue = 0.0
    for row in readings {
        for value in row {
            if value > largestValue {
            largestValue = value
            }
        }
    }
    print("The largest value is \(largestValue)")
    return nil
}


@main
struct SwiftPlayground {
    static func main() {



let temperatures = [
    [1 , 2, 3, 4], 
    [5, 6, 7, 8], 
    [9, 10, 11, 12]]

// TASK A
print(temperatures[0])
print(temperatures[1][2])
print(temperatures[2][0])

let secondRow = temperatures[1]

let secondRowAverage = (secondRow[0] + secondRow[1] + secondRow[2] + secondRow[3]) / 4
print("The average temperature of row two is \(secondRowAverage)")




// TASK B

let table = [
        [2, 4, 6],
        [8, 10, 12],
        [14, 16, 18]
    ]


var numOfNumbers = 0
for row in table {
    for value in row {
        print(value)
        numOfNumbers += 1
    }
}
print(numOfNumbers)



// TASK C

let table2 = [
    [3, 5, 7, 9],
    [2, 4],
    [8, 6, 1],
    [10]
]


columnTotal(in: table2, column: 1)






// TASK D


let readings = [    
    [1.5, 3.2, 2.8],
    [7.1],
    [4.4, 6.0],
    [5.9, 8.3, 0.7, 2.2]]

maxValue(in: readings)
    }
}
