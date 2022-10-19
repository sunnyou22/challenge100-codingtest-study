//
//  main.swift
//  Baekjoon
//
//  Created by 방선우 on 2022/10/19.
//

import Foundation

//MARK: 알파벳 개수

let str = readLine()!.sorted()
let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
var result = Array(repeating: "0", count: 26)
 

    alphabet.forEach { i in
      
        if str.contains(i) {
            result[alphabet.firstIndex(of: i)!] = "\(str.filter { i == $0 }.count)"
        } else {
            result[alphabet.firstIndex(of: i)!] = "0"
        }
    }


print(result.joined(separator: " "))
