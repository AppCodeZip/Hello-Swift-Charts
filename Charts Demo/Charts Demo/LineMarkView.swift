//
//  LineMarkView.swift
//  Charts Demo
//
//  Created by Sushil  on 11/06/22.
//

import SwiftUI
import Charts



func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}
struct Series: Identifiable {
    let city: String
    let sales: [(weekday: Date, sales: Int)]
    var id = UUID()
}

 let last30Days: [Series] = [
    .init(city: "Haryana", sales: [
        (weekday: date(year: 2022, month: 5, day: 2), sales: 54),
        (weekday: date(year: 2022, month: 5, day: 3), sales: 42),
        (weekday: date(year: 2022, month: 5, day: 4), sales: 88),
        (weekday: date(year: 2022, month: 5, day: 5), sales: 49),
        (weekday: date(year: 2022, month: 5, day: 6), sales: 42),
        (weekday: date(year: 2022, month: 5, day: 7), sales: 25),
        (weekday: date(year: 2022, month: 5, day: 8), sales: 67)

    ]),
    .init(city: "Delhi", sales: [
        (weekday: date(year: 2022, month: 5, day: 2), sales: 81),
        (weekday: date(year: 2022, month: 5, day: 3), sales: 90),
        (weekday: date(year: 2022, month: 5, day: 4), sales: 80),
        (weekday: date(year: 2022, month: 5, day: 5), sales: 72),
        (weekday: date(year: 2022, month: 5, day: 6), sales: 84),
        (weekday: date(year: 2022, month: 5, day: 7), sales: 84),
        (weekday: date(year: 2022, month: 5, day: 8), sales: 37)
    ])
]
struct LineMarkView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("LineMark Chart Demo")
                .font(.title2.bold())
                .padding()
            
            
            Chart(last30Days ) { series in
                ForEach(series.sales, id: \.weekday) { element in
                    LineMark(
                        x: .value("Day", element.weekday, unit: .day),
                        y: .value("Sales", element.sales)
                    )
                }
                .foregroundStyle(by: .value("City", series.city))
                .symbol(by: .value("City", series.city))
                .interpolationMethod(.catmullRom)
            }
            .chartForegroundStyleScale([
                "Haryana": .purple,
                "Delhi": .green
            ])
            .chartXAxis {
                AxisMarks(values: .stride(by: .day)) { _ in
                    AxisTick()
                    AxisGridLine()
                    AxisValueLabel(format: .dateTime.weekday(.abbreviated), centered: true)
                }
            }
            .chartLegend(position: .bottom)
        }
        
    }
    
}

struct LineMarkView_Previews: PreviewProvider {
    static var previews: some View {
        LineMarkView()
    }
}



