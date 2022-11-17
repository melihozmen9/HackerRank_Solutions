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
       bonappetit(bill: [3,10,2,9], k: 1, b:12)
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

}

