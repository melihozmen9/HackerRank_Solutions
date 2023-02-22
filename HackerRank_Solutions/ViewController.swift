//
//  ViewController.swift
//  HackerRank_Solutions
//
//  Created by Kullanici on 15.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        let x = findDigits(n: 1000)
        print(x)
     
    }
    
   
    
    
    //PLUSMİNUS QUESTİON
    func plusMinus(arr:[Int] )-> Void  {
        var countx = 0 // Positive
        var county = 0 // negative
        var countz = 0 // zero
        for i in 0 ..< arr.count {
            if arr[i] > 0 {
                countx += 1
            } else if arr[i] < 0 {
                county += 1
            } else {
                countz += 1
            }
        }
        
        let x = Double(countx)/Double(arr.count)
        let y = Double(county)/Double(arr.count)
        let z = Double(countz)/Double(arr.count)
        
        
        print(String(format : "%f", x))
        print(String(format: "%f", y))
        print(String(format: "%f", z))
        
    }
    // ARRAY DS
    func reverseArray(a:[Int]) ->[Int] {
        var newArray = [Int]()
        for i in stride(from: a.count-1, to: -1, by: -1){
            newArray.append(a[i])
        }
       return newArray
    }
    
   // Grading Students
    func gradingStudents(grades : [Int]) {

        var newGrades : [Int] = []
        for i in 0 ... grades.count-1 {
            let currentvalue = grades[i]
            if currentvalue < 38 {
                newGrades.append(currentvalue)
            continue
            }
            let diff = currentvalue % 5
            if diff > 2 {
                let newgrade = currentvalue + (5 - diff)
                newGrades.append(newgrade)
                continue
            }
            newGrades.append(currentvalue)
            
        }
        print(newGrades)
        
    }
    
    // Apples and Oranges
    func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
        // Write your code here
    var apple = 0
    var orange = 0
        for i in 0 ... apples.count-1 {
        if s <= (a + apples[i]) && (a + apples[i]) <= t {
            apple += 1
        }
    }
        for i in 0 ... oranges.count-1 {
        let distance = b + oranges[i]
        if s <= distance && distance <= t {
            orange += 1
        }
        }
    print(apple)
    print(orange)
    }
    
    // Bill Division
    
    func bonappetit(bill:[Int], k: Int , b: Int) -> Void {
        var total = bill.reduce(0,+)
        var stotal = 0
        for index in 0 ... bill.count-1 {
            if index != k {
                stotal += bill[index]
            }
        }
        
        var annaCost = stotal/2
       // var brianCost = stotal/2 + (total - stotal)
         if b == annaCost {
             print("Bon Appetit")
         } else {
             print(b - annaCost)
         }
    }
    
    
    // Sales By Match
    var pair = 0
    func sockMerchant (n : Int, ar : [Int]) {
        var array = ar
        for i in 0 ... array.count-2 {
            for j in 1 ... array.count-1{
                if i == j {
                    pair += 1
                    array.remove(at: i)
                    array.remove(at: j)
                }
            }
        }
        print(pair)
    }
  
    
    //Insertion sort 1
    func insertionsort1(n:Int, arr:[Int]) -> Void {
        let last = arr.last!
        var newArray:[Int] = arr
        let min = newArray.min()
        if last != min {
        for i in stride(from: (n-2) , to: 0, by: -1){
            if last < newArray[i]{
                newArray[i+1] = newArray[i]
              //  print(newArray.debugDescription.replacingOccurrences(of: ", ", with: " "))
                var stringArray = newArray.map { String($0) }
                stringArray.joined(separator:" ")
                print(stringArray.joined(separator:" "))
            }
        }
        }else {
            for i in stride(from: (n-2) , to: 0, by: -1){
            if last < newArray[i]{
                newArray[i+1] = newArray[i]
              //  print(newArray.debugDescription.replacingOccurrences(of: ", ", with: " "))
                var stringArray = newArray.map { String($0) }
                stringArray.joined(separator:" ")
                print(stringArray.joined(separator:" "))
            }
                
            
        }
            newArray[1] = newArray[0]
            
            var stringSortedArray1 = newArray.map{ String ($0) }
            print(stringSortedArray1.joined(separator: " "))
             }
        var sortedArray = arr.sorted()
        var stringSortedArray = sortedArray.map{ String ($0) }
        print(stringSortedArray.joined(separator: " "))
    }
    
    // InsertionSort2
    func insertionSort2(n:Int,arr:[Int]) -> Void {
        var s = 0
        var s2 = n
        var narr = arr
        var narr2 : [Int] = []
        var a = 0
        var b = 0
        var c = 0
        for i in 1 ... n-2 {
          
            
            if narr[i+1] < narr[i] {
                c = narr[i+1]
                a = narr[i]
                b = c
                narr[i] = b
                narr[i+1] = a
                print(narr)
                print("narr yazıldı")
                
                
                if narr[i+1] < narr[i-1] {
                    s = i + 1
                    for j in 0 ... s {
                        narr2.append(narr[j])
                    }
                    narr2.sorted()
                    for k in stride(from: n-1, to: s+1, by: -1) {
                        narr2.append(narr[k])
                    }
                    print(narr2)
                    print("narr2 yazıldı")
                }
            }
            
            
            
            
        }
    }
    
    // The Cats and Mouse
    func catsAndMouse(x:Int,y:Int,z:Int) -> String {
        var distance1 = abs(z - x)
        var distance2 = abs(z-y)
        if distance1 < distance2 {
            return "Cat A"
        } else if distance2 < distance1 {
            return "Cat B"
        } else {
            return "Mouse C"
        }
    }
    
    // Breaking The Records
    
    func breakingTherecords(scores : [Int]) -> [Int] {
        var max = scores[0]
        var min = scores[0]
        var maxCount = 0
        var minCount = 0
        
        for i in 0...scores.count-1 {
            if scores[i] > max {
                max = scores[i]
                maxCount += 1
                
            }
            if scores[i] < min {
                min = scores[i]
                minCount += 1
            }
        }
       print([maxCount,minCount])
        return[maxCount,minCount]
        
    }
    
    // Divisible Sum Pairs
    func divisibleSumPairs(n:Int,k:Int,ar:[Int]){
        var pairs = 0
        var sum = 0
        for i in 0...ar.count-1 {
            for j in 0...ar.count-1 {
                if i != j {
                if (ar[i] + ar[j]) % k == 0 {
                    pairs += 1
                    print(ar[i],ar[j])
                }
                }
            }
        }
        
        print(pairs/2)
    }
    
    
    // Counting Valleys
    func countingValleys(steps:Int,path:String) -> Int {
        var array = Array(path)
        var sum = 0
        var count = 0
        for i in 0...array.count-1 {
            if sum == 0 && array[i] == "D"{
                count += 1
            }
            if array[i] == "U"{
                sum += 1
            }
            if array[i] == "D"{
                sum -= 1
            }
        }
        return count
    }
   
    
    // ElectronicShops
    
    func getmoneySpent(keyboards:[Int],drives:[Int],b:Int) -> Int{
        var sum = 0
        var max = 0
        for i in 0...keyboards.count-1{
            for j in 0...drives.count-1{
                sum = keyboards[i] + drives[j]
                if sum <= b {
                    if sum > max {
                        max = sum
                    }
                    
                }
            }
        }
        if max > 0 {
           return max
        } else {
            return -1
        }
        
    }
    
    
    //Camel Case
    
    func camelCase(s:String)  -> Int {
        var array = Array(s)
        var sum = 1
        for i in 0...array.count-1 {
            if array[i].isUppercase {
                 sum += 1
            }
        }
        return sum
    }
    func designerPdfViewer(h: [Int], word: String) -> Int {
        // Write your code here
        var height = 0
        var heightest = 0
        for i in word {
    switch i {
        case "a" :
        height = h[0]
        if height > heightest {
            heightest = height
        }
         case "b" :
        height = h[1]
          if height > heightest {
            heightest = height
        }
         case "c" :
        height = h[2]
          if height > heightest {
            heightest = height
        }
         case "d" :
        height = h[3]
          if height > heightest {
            heightest = height
        }
         case "e" :
        height = h[4]
          if height > heightest {
            heightest = height
        }
         case "f" :
        height = h[5]
        if height > heightest {
            heightest = height
        }
         case "g" :
        height = h[6]
          if height > heightest {
            heightest = height
        }
         case "h" :
        height = h[7]
         if height > heightest {
            heightest = height
        }
          case "i" :
        height = h[8]
         if height > heightest {
            heightest = height
        }
          case "j" :
        height = h[9]
         if height > heightest {
            heightest = height
        }
          case "k" :
        height = h[10]
         if height > heightest {
            heightest = height
        }
          case "l" :
        height = h[11]
         if height > heightest {
            heightest = height
        }
          case "m" :
        height = h[12]
         if height > heightest {
            heightest = height
        }
          case "n" :
        height = h[13]
         if height > heightest {
            heightest = height
        }
          case "o" :
        height = h[14]
         if height > heightest {
            heightest = height
        }
          case "p" :
        height = h[15]
         if height > heightest {
            heightest = height
        }
          case "q" :
        height = h[16]
         if height > heightest {
            heightest = height
        }
          case "r" :
        height = h[17]
         if height > heightest {
            heightest = height
        }
          case "s" :
        height = h[18]
         if height > heightest {
            heightest = height
        }
          case "t" :
        height = h[19]
         if height > heightest {
            heightest = height
        }
          case "u" :
        height = h[20]
         if height > heightest {
            heightest = height
        }
           case "v" :
        height = h[21]
         if height > heightest {
            heightest = height
        }
            case "w" :
        height = h[22]
         if height > heightest {
            heightest = height
        }
             case "x" :
        height = h[23]
         if height > heightest {
            heightest = height
        }
             case "y" :
        height = h[24]
         if height > heightest {
            heightest = height
        }
    
    default:
        height = h[25]
         if height > heightest {
            heightest = height
        }
    }
        }
        return word.count * heightest
    }

    func timeInWords(h: Int, m: Int) -> String {
        // Write your code here
        var string = ""
    let formatter = NumberFormatter()
    formatter.numberStyle = NumberFormatter.Style.spellOut

    let spellOutHour = formatter.string(for: h)!



    if m == 00 {
        string = "\(spellOutHour) o' clock"
    }else if m == 15 {
        string = "quarter past \(spellOutHour)"
    } else if m == 01 {
        let spellOutMinute = formatter.string(for: m)!
        string = "\(spellOutMinute) minute past \(spellOutHour)"
    } else if m == 30 {
        string = "half past \(spellOutHour)"
    } else if m == 45 {
        if h >= 0 && h < 11 {
       let spellOutHourNext = formatter.string(for: (h+1))!
        string = "quarter to \(spellOutHourNext)"
        } else {
                let spellOutHourNext = formatter.string(for: 0)!
                string = "quarter to \(spellOutHourNext)"
            }
    } else if m > 00 && m < 20 {
        let spellOutMinute = formatter.string(for: m)!
        string = "\(spellOutMinute) minutes past \(spellOutHour)"
    }   else if m > 19 && m < 30 {
            let spellOutMinute = formatter.string(for: m)!
        let replaced = spellOutMinute.replacingOccurrences(of: "-", with: " ")
            string = "\(replaced) minutes past \(spellOutHour)"
    }else if m > 30 && m < 41 {
        if h >= 0 && h < 11 {
       let spellOutHourNext = formatter.string(for: (h+1))!
            let n = 60 - m
            let spellOutMinute = formatter.string(for: n)!
            let replaced = spellOutMinute.replacingOccurrences(of: "-", with: " ")
            string = "\(replaced) minutes to \(spellOutHourNext)"
    } else {
        let spellOutHourNext = formatter.string(for: 0)!
        let n = 60 - m
        let spellOutMinute = formatter.string(for: n)!
        let replaced = spellOutMinute.replacingOccurrences(of: "-", with: " ")
        string = "\(replaced) minutes to \(spellOutHourNext)"
    }
       
    }else if m > 40 && m < 60 {
        if h >= 0 && h < 11 {
       let spellOutHourNext = formatter.string(for: (h+1))!
            let n = 60 - m
            let spellOutMinute = formatter.string(for: n)!
            string = "\(spellOutMinute) minutes to \(spellOutHourNext)"
    } else {
        let spellOutHourNext = formatter.string(for: 0)!
        let n = 60 - m
        let spellOutMinute = formatter.string(for: n)!
        string = "\(spellOutMinute) minutes to \(spellOutHourNext)"
    }
       
    }
    return string
    }
        func beautifulDays(i: Int, j: Int, k: Int) -> Int {
         
            var sayac = 0
            for a in i...j {
                
                var value = a
                var reverseNum = 0
                while(value != 0){
                   reverseNum = reverseNum * 10
                   reverseNum = reverseNum + value % 10
                   value = value/10
                }
                // değerin tersi bulundu.
               var sonuc = abs(Double(a) - Double(reverseNum)) / Double(k)
                if sonuc.truncatingRemainder(dividingBy: 1.0) == 0.0 {
                    sayac += 1
                }
            }
            return sayac
        }
    func findDigits(n: Int) -> Int {
        // Write your code here
        var sayac = 0
        let digits = String(n).compactMap{Int(String($0))}
        for i in 0...digits.count-1 {
            if digits[i] != 0 {
                if n % digits[i] == 0 {
                    sayac += 1
                }
            }
        }
    return sayac
    }
    
    func viralAdvertising(n: Int) -> Int {
       
    var liked = 0
    var cumulative = 0
    var shared = 5
    for i in 1...n {
        liked = Int(floor(Double(shared)/2.0))
        cumulative = cumulative + liked
        shared = liked * 3
    }
    return cumulative
    }


}

