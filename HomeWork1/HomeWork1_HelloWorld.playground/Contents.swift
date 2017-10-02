//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func trim(from: String, delete: String)
{
    var kek = from.components(separatedBy: delete)
    var sos: String = ""
    for i in kek {
        sos += String(i)
    }
    print(sos)
    
}

// test
trim(from: "hello world", delete: "l")
