//
//  ModelData.swift
//  SwiftUITutorial
//
//  Created by arta.zidele on 27/08/2021.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("\(filename) was not found in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("\(filename) was not load from main bundle: \n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("\(filename) was not parsed as \(T.self): \n\(error)")
    }
}
