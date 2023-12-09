//
//  StringCleaning.swift
//  project1
//
//  Created by Gdaalumno on 08/12/23.
//

import Foundation

extension String {
    func clean() -> String {
        let simplified = folding(options: [.diacriticInsensitive, .caseInsensitive, .widthInsensitive], locale: nil)
        return simplified.replacingOccurrences(of: " ", with: "")
    }
}
