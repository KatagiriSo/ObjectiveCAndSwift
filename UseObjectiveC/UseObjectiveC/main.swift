//
//  main.swift
//  UseObjectiveC
//
//  Created by 片桐奏羽 on 2016/10/18.
//  Copyright © 2016年 rodhos. All rights reserved.
//

import Foundation

let u:Util = Util("hoge", enum: .NORMAL)

let r:Bool = u.isOdd(5)

print(r) // true

let nums:[NSNumber] = [1,2,3.5]
let r2:[NSNumber] = u.addOne(nums)

print(r2) // 2,3,4

u.request { result in
    print(result) // true
}



let flag:MyFlag = u.getFlag()

print(flag.isEmpty) // false
print(flag.contains(.case1)) // false
print(flag.contains(.case2)) // true
print(flag.contains(.case3)) // true
print(flag.contains(.case4)) // false
print(MyFlag.case2.union(.case3).isSuperset(of: .case2)) // true

let list:[Any] = u.getList()

for o in list {
    switch o {
    case let x as String:
        print(x)
    case let n as Int:
        print(n)
    case let list as [Any]:
        print(list)
    default:
        print("other")
    }
}

class SomeClass: NSObject, ProtocolA {
    func addOne(_ numbers: [NSNumber]!) -> [NSNumber]! {
        return [3]
    }
}

var v1:Vector = Vector(x: 1, y: 0)
var v2:Vector = Vector(x: 0, y: 1)

let v3:Vector = add2(v1, v2)

let v4:Vector = add(&v1, &v2)

print(v1)
VectorTwice(&v1)
print(v1)





