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

}

