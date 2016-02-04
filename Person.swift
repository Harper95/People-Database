//
//  Person.swift
//  PeopleDatabase
//
//  Created by Clayton Harper on 1/31/16.
//  Copyright © 2016 Clayton Harper. All rights reserved.
//

import Foundation

class Person {
    
    var firstName: String!
    var lastName: String!
    var age: Int!
    
    func input() -> String {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
        if let string = rawString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    
    func changeFirstName(name: String) {
        firstName = name
    }
    
    func enterInfo() {
        print("Enter your first name")
        firstName = input()
        print("Enter your last name")
        lastName = input()
        print("Enter your age")
        age = Int(input())
    }
    
    func printInfo() {
        print("First name: \(firstName)")
        print("Last name: \(lastName)")
        print("Age: \(age)")
    }
}
