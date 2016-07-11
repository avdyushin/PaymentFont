//
//  ViewController.swift
//  PaymentFontExample
//
//  Created by Grigory Avdyushin on 11.07.16.
//  Copyright © 2016 Grigory Avdyushin. All rights reserved.
//

import UIKit
import PaymentFont

class ViewController: UITableViewController {
    
    let model = [
        PaymentFont.Symbols.eur,
        PaymentFont.Symbols.visa,
        PaymentFont.Symbols.creditCard,
        PaymentFont.Symbols.unionpay,
        PaymentFont.Symbols.bankTransfer,
        PaymentFont.Symbols.amazon,
        PaymentFont.Symbols.atm
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PaymentFont.preloadFont()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("IconCell", forIndexPath: indexPath) as! IconCell
        cell.iconLabel.text = model[indexPath.row].rawValue
        PaymentFont.icon(.creditCard)
        return cell
    }
    
}
