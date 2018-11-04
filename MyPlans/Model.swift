//
//  Model.swift
//  ToDoList
//
//  Created by Константин Каратанас on 11/3/18.
//  Copyright © 2018 Константин Каратанас. All rights reserved.
//

import Foundation

var ToDoItems: [[String: Any]] = [["Name": "Позвонить маме", "isCompleted": true], ["Name": "Дописать приложение", "isCompleted": false], ["Name": "Отметить", "isCompleted": false]]

func addItem(nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": false])
    saveData()
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
    saveData()
}

func changeState(at item: Int) -> Bool{
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    
    saveData()
    
    
    return ToDoItems[item]["isCompleted"] as! Bool
    
}
func saveData(){
    print("Save data")
}

func loadData(){
    
}
