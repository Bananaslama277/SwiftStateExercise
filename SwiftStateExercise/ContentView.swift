//
//  ContentView.swift
//  SwiftStateExercise
//
//  Created by Trace Smith on 2/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var numOne = 0
    @State var numTwo = 2
    var body: some View {
        VStack {
            Spacer()

                        HStack {
                            Text("ONE")
                            Text(String(numOne))
                            Button("ADD ONE"){
                                numOne += 1
                            }
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("TWO")
                            Text(String(numTwo))
                            Button {
                                numTwo *= numTwo
                            } label: {
                                Text("SQUARE")
                            }
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("BONUS")

                        }
                        
                        Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
