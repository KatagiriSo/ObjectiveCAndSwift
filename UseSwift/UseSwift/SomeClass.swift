//
//  SomeClass.swift
//  UseSwift
//
//  Created by 片桐奏羽 on 2016/10/19.
//  Copyright © 2016年 rodhos. All rights reserved.
//

import Foundation

//protocol MyProtocol:NSObjectProtocol {
//    func add(x:Int)
//}

enum MyEnum {
    case case0,case1,case2
}

struct Vector {
    let x:Int
    let y:Int
    
}

func fucA()->() {
    print("funcA")
}

let v = 3
var f = 2
let g:(Int) -> Int = { x in x + 1}


class SomeClass : NSObject {
    static func hello() {
        print("hello")
    }
    
    static func addOne(x:Int) -> Int {
        return x + 1
    }
    
    static func addC(x:Int) -> (Int) -> Int {
        return {y in x + y}
    }
    
    func request(num:MyEnum) -> MyEnum {
        return num
    }
    
    func request(i:Int) -> Int {
        return i
    }
    
    func request(_ i:Int) -> Int {
        return i
    }

}

