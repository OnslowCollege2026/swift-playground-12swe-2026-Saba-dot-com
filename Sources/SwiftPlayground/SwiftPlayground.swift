@main
struct SwiftPlayground {
    static func main() {



let temperatures = [[1 , 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]

// TASK A
print(temperatures[0])
print(temperatures[1][2])
print(temperatures[2][0])

func rowTotal(in temperatures: [[Int]], row: Int) -> Int {
    guard row >= 0 && row < temperatures.count else { return 0 }
    return temperatures[row].reduce(0, +)
}
rowTotal(in temperatures: [[Int]], row: Int)


//    for temp in temperatures {
//        for value in temp {
//            var total = 0
//            total += value
//            let average = total / 4
//            print(average)
//        }
//    }




// TASK B

let table = [
    [2, 4, 6],
    [8, 10, 12],
    [14, 16, 18]
]
for row in table {
    for value in row {
        var count = 0
        print(value)
        count += value
    let total = count
    } 

}






    }
}