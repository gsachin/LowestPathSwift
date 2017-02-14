//
//  ViewController.swift
//  PathofLowestCost
//
//  Created by A1 on 10/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

        @IBOutlet weak var output: UILabel!
    //        var array = Array<Array<Int>>()
    //
    //        for i in 0..<NumColumns {
    @IBOutlet weak var inputText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let arr:Array<Array<Int>> = [[3,4,1,2,8,6],[6,1,8,2,7,4],[5,9,3,9,9,5],[8,4,1,3,2,6],[3,7,2,8,6,4]]
        let x = searchOptimumPath().search(arr)
        inputText.delegate = self
        print(x)

    }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let set = NSCharacterSet(charactersIn: "0123456789\n,-")
        let inverted = set.inverted;
        
        let filtered = text.components(separatedBy: inverted).joined(separator:"")
        return filtered == text
    }
    func parse(string:String)->Array<Array<Int>>{
        var matrix: Array<Array<Int>> = []
        
        let rowStrings = string.components(separatedBy: "\n")
        for rowString in rowStrings {
            if rowString.isEmpty {
                break
            }
            let colStrings = rowString.components(separatedBy: ",")
            matrix.append(colStrings.map() { x in Int(x) ?? 0 })
        }
        return matrix
    }
    private func output(result: (Bool, Int, Array<Int>)) {
        let (success, pathSum, path) = result
        
        var message = success ? "Yes" : "No"
        message += "\n" + String(pathSum)
        message += "\n" + path.map(){x in String(x)}.joined(separator: " ")
        output.text = message
    }
    
    
    private func validate(string: String) -> Bool {
        var width: Int!
         let charSet = NSCharacterSet(charactersIn: ",\n,")
        let rows = string.trimmingCharacters(in: charSet as CharacterSet).components(separatedBy:"\n")
        for row in rows {
            let items = row.trimmingCharacters(in: charSet as CharacterSet).components(separatedBy:",")
            if width == nil {
                width = items.count
            }
            if items.count != width {
                return false
            }
            for item in items {
                if Int(item) == nil {
                    return false
                }
            }
        }
        return width != nil
    }
        @IBAction func searchOptPath(_ sender: Any) {
        if(validate(string: inputText.text)) {
            let matrix = parse(string: inputText.text)
            let find = searchOptimumPath()
            let result = find.search(matrix)
            output(result: result)
        }else {
        output.text = "Invalid Input"
        }
    }
}

