//
//  main.swift
//  PeopleDatabase
//
//  Created by Clayton Harper on 1/31/16.
//  Copyright © 2016 Clayton Harper. All rights reserved.
//

import Foundation

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

var response: String
var people: [Person] = []

repeat {
    var newPerson = Person()
    newPerson.enterInfo()
    people.append(newPerson)
    newPerson.printInfo()
    
    print("Do you want to enter another name? (y/n)")
    response = input()
    
} while(response == "y")

print("Number of people in the database: \(people.count)")

for onePerson in people  {
    onePerson.printInfo()
}