//
//  ViewController.swift
//  RamansPerfectBirthday
//
//  Created by Sam Meech-Ward on 2018-05-16.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

  @IBOutlet weak var skillTextField: UITextField!
  @IBOutlet weak var nameTextField: UITextField!
  
  var persistantContainer: NSPersistentContainer!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    persistantContainer = NSPersistentContainer(name: "BirthdayModel")
    persistantContainer.loadPersistentStores { (description, error) in
      if let error = error {
        print("Error \(error)")
        return
      }
      
      print("container setup 🤗")
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func save(_ sender: Any) {
    guard let name = nameTextField.text,
      let skill = skillTextField.text else {
        print("need tesxt")
        return
    }
    
    let entertainer = NSEntityDescription.insertNewObject(forEntityName: "Entertainer", into: persistantContainer.viewContext) as! Entertainer
    
    entertainer.name = name
    entertainer.skill = skill
    
    do {
      try persistantContainer.viewContext.save()
    } catch let erro {
      print("erro \(erro)")
    }
  }
  
  @IBAction func get(_ sender: Any) {
    
//    NSPredicate(format: "skill == transparency")
    let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Entertainer")
    
    do {
      let results = try persistantContainer.viewContext.fetch(request) as! [Entertainer]
      for entertainer in results {
        print("result: \(entertainer.name) \(entertainer.skill)")
      }
    } catch let error {
      print("ERror fetching \(error)")
    }
    
  }
  
  
}

