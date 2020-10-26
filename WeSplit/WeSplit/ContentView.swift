//
//  ContentView.swift
//  WeSplit
//
//  Created by Cyril Garcia on 10/26/20.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermoine", "Ron"]
    @State private var selectedStudent = 0
    
    var body: some View {
        VStack {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(students[$0])
                }
            }
            Text("You chose \(students[selectedStudent])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
