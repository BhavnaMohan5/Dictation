//
//  DetailInterfaceController.swift
//  Dictation WatchKit Extension
//
//  Created by Bhavna Mohan on 02/02/18.
//  Copyright © 2018 Bhavna Mohan. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {

    @IBOutlet var textLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if let contextDictionary  = context as? [String : String]{
        textLabel.setText(contextDictionary["note"] ?? "1")
        
        let index = contextDictionary["index"] ?? "1"
            setTitle("Note \(index)")
            
            print(contextDictionary)
        }
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
