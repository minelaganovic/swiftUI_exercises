//
//  ContentView.swift
//  v7
//
//  Created by MacLab10 on 19.11.24..
//

import SwiftUI


struct ContentView: View {
    @State private var stepEntries:[StepEntry]=[
        StepEntry(date: Date(), steps:5000),
        StepEntry(date: Date(), steps:8000),
        StepEntry(date: Date(), steps:13000)]
    
    @State private var newSteps:String=""
    
    var totalStep: Int {
        stepEntries.reduce(0){$0 + $1.steps}
    }
    
    var  averageStep: Int {
        stepEntries.isEmpty ? 0: totalStep/stepEntries.count
    }
    
    var body: some View {
        
        VStack {
            
            if !stepEntries.isEmpty{
                StepChart(entries: stepEntries)
                    .frame(height:250)
                    .padding()
            }
            VStack (alignment: .leading,spacing: 20){
                Text("Ukupno koraka: \(totalStep)")
                    .font(.headline)
                Text("Prosecno:\(averageStep)")
            }
            .frame(maxWidth: .infinity)
            .background(Color.blue.opacity(0.2))
            .cornerRadius(10)
            .padding(60)
            
            List{
                ForEach(stepEntries){
                    entry in
                    
                    VStack(alignment:.leading){
                        
                        Text("Koraci:\(entry.steps)")
                            .font(.headline)
                        Text(entry.date, style: .date)
                            .foregroundColor(.gray)
                            .font(.subheadline)
                                  
                     Button (action:{
                        deleteEntry( for:entry)
                    } ){
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                    }
                    }
                }
            }
            
            HStack{
                TextField("Unesi broj koraka", text: $newSteps)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Button(action: addSteps){
                    Text("Dodaj")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
     
    func addSteps(){
        
        guard let steps=Int(newSteps), steps > 0 else {return}
        let entry = StepEntry(date: Date(), steps: steps)
        stepEntries.append(entry)
        newSteps = ""
    }
    
    func deleteEntry(for entry: StepEntry){
        if let index = stepEntries.firstIndex(where: {$0.id==entry.id}){
            stepEntries.remove(at: index)
        }
       
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
