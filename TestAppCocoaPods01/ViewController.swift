//  ViewController.swift
//  TestAppCocoaPods01

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initDataInsert()
        readData()

        if let category: Categories = Categories.by("name", equalTo: "foo").find().firstObject() as? Categories {
            println("edit ------------")
            category.beginWriting()
            category.name = "fooはフーになります"
            category.endWriting()
            category.save()
            println("------------")
        }
        
        readData()
    }

    // データーの取得
    func readData() {
        
        var items = Categories.all().find()
        println("readData ------------")
        println(items.count)
        
        for(var i = 0; i < items.count; i++) {
            var categories = items[i] as! Categories
            println(categories.name_plus())
        }
        
        println("------------")
    }
    
    // データーの登録
    func initDataInsert() {
        let category_names: [String] = ["日記", "写真", "技術", "映画", "foo", "bar"]
        for category_name in category_names {
            println("------------")
            println(category_name)
            var categories:Categories = Categories.create() as! Categories
            categories.beginWriting()
            categories.name = category_name
            var saved:Bool  = categories.save()
            categories.endWriting()
            println(saved)
            println("------------")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

