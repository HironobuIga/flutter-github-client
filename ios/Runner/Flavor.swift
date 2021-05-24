//
//  Flavor.swift
//  Runner
//
//  Created by Hironobu Iga on 2021/05/24.
//

import Foundation

enum Flavor: String, CaseIterable {
    case development, staging, production

    static let current: Flavor = {
        let value = (Bundle.main.infoDictionary?["FlutterFlavor"] as? String) ?? ""
        let flavor = Flavor(rawValue: value.lowercased())
        assert(flavor != nil, "invalid flavor value: \(value)")
        return flavor ?? .development
    }()

    // TODO: impl
    var apiUrl: String {
        return ""
    }
}
