//
//  BarMarkColorView.swift
//  Charts Demo
//
//  Created by Sushil  on 11/06/22.
//

import SwiftUI
import Charts



struct BarMarkColorView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("LineMark Chart Demo")
                .font(.title2.bold())
                .padding()
            Chart {
                ForEach(data) { shape in
                    BarMark(
                        x: .value("Shape Type", shape.type),
                        y: .value("Total Count", shape.count)
                    )
                    .foregroundStyle(by: .value("Shape Color", shape.color))
                }
            }
            .frame(height: 500)
        }
    }
}

struct BarMarkColorView_Previews: PreviewProvider {
    static var previews: some View {
        BarMarkColorView()
    }
}
