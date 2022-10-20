//
//  main.swift
//  Baekjoon
//
//  Created by 방선우 on 2022/10/19.
//

import Foundation

//MARK: 에디터 초반 풀이법
//var str = readLine()!
//let cursor = " "
//let result = str.appending(cursor)
//var location = 0
//
//
//if readLine()! == "L" {
//    location += 1
//
//    if let a = str.firstIndex(of: " ") {
//        let index = str.index(a, offsetBy: (location))
//        location <= str.count ?
//        str.pop
//        str.insert(contentsOf: cursor, at: index) : str.insert(contentsOf: cursor, at: str.startIndex)
//
//    }
//} else if readLine()! == "D" {
//    location -= 1
//    if let a = str.firstIndex(of: " ") {
//        let index = str.index(a, offsetBy: (-location))
//        location <= str.count ? str.insert(contentsOf: cursor, at: index) : str.insert(contentsOf: cursor, at: str.endIndex)
//    }
//} else if readLine()! == "B" {
//    if let a = str.firstIndex(of: " ") {
//        let index = str.index(a, offsetBy: -1)
//        str.remove(at: index)
//    }
//} else if readLine()!.contains("P"){
//    if let a = str.firstIndex(of: " ") {
//        let index = str.index(before: a)
//        str.insert(contentsOf: readLine()!, at: index)
//    }
//}
//
//print(str)

//MARK: 에디터

var left = readLine()!
var right = [Character]()
var count = Int(readLine()!)!

for _ in 0..<count {
    let edit = readLine()!
    switch edit {
    case "L":
        if !left.isEmpty {
            // right에는 마지막 문자열이 삭제되고 남은게 append됨
            right.append(left.removeLast())
        }
    case "D":
        if !right.isEmpty {
            left.append(right.removeLast())
        }
    case "B":
        if !left.isEmpty {
            left.removeLast()
        }
    default:
        left.append(edit.last!)
    }
}

print([left + right.reversed()].joined())
