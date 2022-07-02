//
//  main.swift
//  demo
//
//  Created by Бернат Данила on 02.07.2022.
//

//Сравните два числа в двоичной системе счисления. Числа представлены последовательностью слов без пробелов, обозначающих цифры (0 — zero, 1 — one).
//3 <= s1 <= 1000
//3 <= s2 <= 1000

import Foundation

let s1 = readLine()!
let s2 = readLine()!



let number1 = stringToBinaryStr(s1)
let number2 = stringToBinaryStr(s2)

print(comparison(number1, number2))


func stringToBinaryStr(_ s: String) -> String {
    var arr = Array(s)
    var answ = ""
    while (arr.count > 0) {
        let temp = String(arr[0...2])
        if temp == "one" {
            answ += "1"
            arr.removeFirst(3)
        } else {
            answ += "0"
            arr.removeFirst(4)
        }
    }
    while answ.first == "0" {
        answ = String(answ.dropFirst())
    }
    return answ
}

func comparison (_ s1: String, _ s2: String) -> String {
    if s1.count == s2.count {
        if s1.count == 0 {
            return "="
        }
        let a1 = Array(s1)
        let a2 = Array(s2)
        for i in Range(0...a1.count - 1) {
            if a1[i] > a2[i] {
                return ">"
            } else {
                if a1[i] < a2[i] {
                    return "<"
                }
            }
        }
        return "="
    } else {
        if s1.count > s2.count {
            return ">"
        } else {
            return "<"
        }
    }
}
        
    

