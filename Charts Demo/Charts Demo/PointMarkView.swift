//
//  PointMarkView.swift
//  Charts Demo
//
//  Created by Sushil  on 11/06/22.
//

import SwiftUI
import Charts

struct Insect: Identifiable {
    
    var id = UUID()
    let name: String
    let family: String
    let wingLength: Double
    let wingWidth: Double
    let weight: Double
}


var pointData: [Insect] = [
    Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 61, wingWidth: 52, weight: 22),
    Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 60, wingWidth: 48, weight: 24),
    Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 53, wingWidth: 43, weight: 18),
    Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 40, wingWidth: 45, weight: 40),
    Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 21, wingWidth: 76, weight: 44),
    Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 10, wingWidth: 20, weight: 30)
    // ...
]


struct PointMarkView: View {
    
    var body: some View {
        Chart(pointData) {
            PointMark(
                x: .value("Wing Length", $0.wingLength),
                y: .value("Wing Width", $0.wingWidth)
            )
            .symbol(by: .value("Family", $0.family))
            .foregroundStyle(by: .value("Family", $0.family))
        }
    }
}


struct PointMarkView_Previews: PreviewProvider {
    static var previews: some View {
        PointMarkView()
    }
}
