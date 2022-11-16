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
        countApplesAndOranges(s: 2, t: 3, a: 1, b: 5, apples: [2], oranges: [-2])
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

}

