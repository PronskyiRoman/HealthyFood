//
//  TypeOfProduct.swift
//  HealthyFood (iOS)
//
//  Created by Роман on 26.03.2022.
//

import Foundation

struct Amount {
    var weight: Double
    let teaSpoon: Double
    
    init (weight: Double = 0.0,
          teaSpoon: Double = 0.0) {
        self.teaSpoon = teaSpoon
        self.weight = teaSpoon
    }
}

enum TypeOfProduct: Identifiable, CaseIterable {
    
    static var allCases: [TypeOfProduct] {
        return [.carrot(amount: Amount(weight: 0.0)),
                .onion(amount: Amount()),
                potato(amount: Amount()),
                pepper(amount: Amount()),
                water(amount: Amount()),
                salt(amount: Amount())]
    }
    
    internal var id: UUID { uuid }
    private var uuid: UUID {
        UUID()
    }
    case potato(amount: Amount)
    case onion(amount: Amount)
    case carrot(amount: Amount)
    case water(amount: Amount)
    case salt(amount: Amount)
    case pepper(amount: Amount)
    
    var weight: Double {
        switch self {
        case .potato(let amount), .onion(let amount), .carrot(let amount), .water(let amount), .salt(let amount), .pepper(let amount):
            return amount.weight
        }
    }
    
    var titleList: String {
        switch self {
        case .potato:
            return "🥔 Potato - \(weight)"
        case .onion:
            return "🧅 Onion - \(weight)"
        case .carrot:
            return "🥕 Carrot - \(weight)"
        case .water:
            return "💧 Water - \(weight)"
        case .salt:
            return "🧂 Salt - \(weight)"
        case .pepper:
            return "🫑 Pepper - \(weight)"
        }
    }
    
    var titleScreen: String {
        switch self {
        case .potato(_):
            return "🥔 Potato"
        case .onion(_):
            return "🧅 Onion"
        case .carrot(_):
            return "🥕 Carrot"
        case .water(_):
            return "💧 Water"
        case .salt(_):
            return "🧂 Salt"
        case .pepper(_):
            return "🫑 Pepper"
        }
    }
}
