//
//  Food.swift
//  foodDelivery
//
//  Created by Memo Figueredo on 20/5/22.
//

import SwiftUI

struct Food: Identifiable {
    
    let id = UUID()
    let title: String
    let price: Double
    let category: Categories
}
