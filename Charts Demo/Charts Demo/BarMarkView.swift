//
//  BarMarkView.swift
//  Charts Demo
//
//  Created by Sushil  on 11/06/22.
//

import SwiftUI
import Charts

struct BikeSell: Identifiable {
    var color: String
    var type: String
    var count: Double
    var id = UUID()
}
var data: [BikeSell] = [
    .init(color: "Green", type: "Hero", count: 200),
    .init(color: "Green", type: "Suzuki", count: 80),
    .init(color: "Green", type: "Honda", count: 100),
    .init(color: "Yellow", type: "Bajaj", count: 69),
    .init(color: "Purple", type: "Hero", count: 34),
    .init(color: "Purple", type: "Suzuki", count: 65),
    .init(color: "Green", type: "Honda", count: 180),
    .init(color: "Yellow", type: "Bajaj", count: 203),
    .init(color: "Pink", type: "Hero", count: 108),
    .init(color: "Pink", type: "Suzuki", count: 205),
    .init(color: "Pink", type: "Honda", count: 300),
    .init(color: "Yellow", type: "Bajaj", count: 402),
    .init(color: "Yellow", type: "Hero", count: 190),
    .init(color: "Yellow", type: "Suzuki", count: 331),
    .init(color: "Yellow", type: "Honda", count: 245),
    .init(color: "Yellow", type: "Bajaj", count: 200)
]

struct BarMarkView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("BarMark Chart Simple")
                .font(.title2.bold())
                .padding()
        Chart {
            ForEach(data) { shape in
                BarMark(
                    x: .value("Shape Type", shape.type),
                    y: .value("Total Count", shape.count)
                )
            }
        }
            .frame(height: 500)
        }
    }
}

struct BarMarkView_Previews: PreviewProvider {
    static var previews: some View {
        BarMarkView()
    }
}
