//
//  CustomizeBarMarkView.swift
//  Charts Demo
//
//  Created by Sushil  on 11/06/22.
//

import SwiftUI
import Charts

struct CustomizeBarMarkView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("BarMark Chart Customize")
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
            .chartForegroundStyleScale([
                "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
            ])
        }
    }
}

struct CustomizeBarMarkView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeBarMarkView()
    }
}
