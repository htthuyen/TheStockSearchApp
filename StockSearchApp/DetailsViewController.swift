//
//  DetailsViewController.swift
//  StockSearchApp
//
//  Created by Huynh Huyen on 8/5/25.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var stock: Stock?

    @IBOutlet weak var tickerLabel: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
    @IBOutlet weak var exchangeLabel: UILabel!
    
    
    @IBOutlet weak var currencyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let stock = stock else {
            print("No stock data received")
            return
        }

        tickerLabel.text = stock.ticker
        nameLabel.text = stock.name
        priceLabel.text = stock.price
        exchangeLabel.text = stock.exchange
        currencyLabel.text = stock.currency
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
