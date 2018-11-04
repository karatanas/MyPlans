//
//  Model.swift
//  ToDoList
//
//  Created by Константин Каратанас on 11/3/18.
//  Copyright © 2018 Константин Каратанас. All rights reserved.
//

import Foundation

var ToDoItems: [[String: Any]] {
    set{
        UserDefaults.standard.set(newValue, forKey: "ToDoDataKey")
        UserDefaults.standard.synchronize()
    }
    get{
        if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]]{
            return array
        }else{
            return []
        }
    }
}

func addItem(nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": false])
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
}

func moveItem(fromIndex: Int, to: Int){
    let from = ToDoItems[fromIndex]
    ToDoItems.remove(at: fromIndex)
    ToDoItems.insert(from, at: to)
    
}

func changeState(at item: Int) -> Bool{
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)    
    return ToDoItems[item]["isCompleted"] as! Bool
    
}
