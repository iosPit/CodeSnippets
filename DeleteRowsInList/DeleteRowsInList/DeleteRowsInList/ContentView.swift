//
//  ContentView.swift
//  DeleteRowsInList
//
//  Created by Pitambar Dayal on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                
                Button("Add Row") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
                
            }
            .navigationTitle("Deleting Rows")
            .toolbar { EditButton () }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
