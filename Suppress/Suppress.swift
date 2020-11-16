//
//  Suppress.swift
//  Suppress
//
//  Created by Prabhdeep Singh on 16/11/20.
//  Copyright © 2020 Prabh. All rights reserved.
//

import Foundation

public class Suppress {
    
    public init() {
        
    }
    
    public func compress(string: String) -> String {
        let str = string
        var count = 1
        var compressedString = ""
        let charArray: [Character] = str.map { (char) in
            return char
        }
        for i in 0..<charArray.count {
            
            if i == charArray.count-1 {
                compressedString.append("\(charArray[i])\(count)")
                break
            }
            
            if charArray[i] == charArray[i+1] {
                count += 1
                continue
            }
            compressedString.append("\(charArray[i])\(count)")
            count = 1
        }
        
        return compressedString
    }
    
    public func decompress(string: String) -> String {
        let str = string
        let charArray: [Character] = str.map { (char) in
            return char
        }
        var decompressedString = ""
        for i in 0..<charArray.count-1 {
            
            if i%2 == 0 {
                let characterCount = Int(String(charArray[i+1]))!
                for _ in 0..<characterCount {
                    decompressedString.append(charArray[i])
                }
            }
        }
        return decompressedString
    }
    
}
