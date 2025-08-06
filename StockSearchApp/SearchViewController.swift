//
//  ViewController.swift
//  StockSearchApp
//
//  Created by Huynh Huyen on 8/5/25.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {
    
    var selectedStock: Stock?

    @IBOutlet weak var searchAppLabel: UILabel!
    
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let symbol = searchBar.text?.uppercased(), !symbol.isEmpty else {
            return
        }

        fetchStockData(for: symbol)
    }

    
    func fetchStockData(for symbol: String) {
        let apiKey = "XBDvA814Zn3w8qn9rnKTyg==4av03H2GYHB0pnBa"
        let urlString = "https://api.api-ninjas.com/v1/stockprice?ticker=\(symbol)"
        
        guard let url = URL(string: urlString) else { return }

        var request = URLRequest(url: url)
        request.setValue(apiKey, forHTTPHeaderField: "X-Api-Key")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }

            guard let data = data else {
                print("No data")
                return
            }

            do {
                if let stockJSON = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    
                    let fetchedStock = Stock(
                        ticker: stockJSON["ticker"] as? String ?? symbol.uppercased(),
                        name: stockJSON["name"] as? String ?? "N/A",
                        price: String(stockJSON["price"] as? Double ?? 0.0),
                        exchange: stockJSON["exchange"] as? String ?? "N/A",
                        currency: stockJSON["currency"] as? String ?? "USD"
                    )

                    DispatchQueue.main.async {
                        self.selectedStock = fetchedStock
                        self.performSegue(withIdentifier: "showDetails", sender: self)
                    }

                } else {
                    print("Stock not found")
                    DispatchQueue.main.async {
                        self.showAlert(title: "Not Found", message: "No stock found for \(symbol)")
                    }
                }

            } catch {
                print("JSON Error: \(error)")
            }

        }

        task.resume()
    }

    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails",
           let destinationVC = segue.destination as? DetailsViewController {
            destinationVC.stock = selectedStock
        }
    }
  
   
}

