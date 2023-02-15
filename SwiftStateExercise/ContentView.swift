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
    @State var letterIndex = 0
    

    let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
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
                            Text(String(letterIndex))
                            Text(letters[letterIndex])
                            Button {
                                letterIndex += 1
                                if (letterIndex > 25){
                                    letterIndex = 0
                                }
                            } label : {
                                Text("NEXT LETTER")
                            }

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
