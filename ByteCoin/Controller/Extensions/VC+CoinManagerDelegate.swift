//
//  VC+CoinManagerDelegate.swift
//  ByteCoin
//
//  Created by Vika on 13.10.24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

//MARK: - CoinManagerDelegate

extension ViewController: CoinManagerDelegate {
    
    func didUpdatePrice(price: String, currency: String) {
        
        DispatchQueue.main.async {
            self.bitcoinLabel.text = price
            self.currencyLabel.text = currency
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}
