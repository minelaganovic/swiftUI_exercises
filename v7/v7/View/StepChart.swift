//
//  StepChart.swift
//  v7
//
//  Created by MacLab10 on 19.11.24..
//

import SwiftUI

struct StepChart: View {
    
    let entries: [StepEntry]
    
    var maxSteps:Int{
        entries.map{$0.steps}.max() ?? 1
    }
    var body: some View {

        GeometryReader {
            geometry in
            
            HStack(alignment:.bottom, spacing: 0){
                ForEach(entries) { entry in
                    
                    let barHeight=CGFloat(entry.steps)/CGFloat(maxSteps)*geometry.size.height
                    
                    VStack{
                        Spacer()
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height:barHeight)
                            .padding()
                        
                        Text(entry.date, style: .time)
                            .font(.caption)
                            .foregroundColor(.red)
                            .rotationEffect(.degrees(-45))
                            .frame(height:20)
                    }
                }
                
            }
        }
    }
}

struct StepChart_Previews: PreviewProvider {
    static var previews: some View {
        let sampleEntiress=[
        StepEntry(date: Date(), steps:5000),
        StepEntry(date: Date(), steps:8000),
        StepEntry(date: Date(), steps:13000)]
        
        return StepChart(entries: sampleEntiress)
            .frame(height:300)
            .padding()
    }
}
