//
//  ContentView.swift
//  StudyTime
//
//  Created by 村上航輔 on 2023/05/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject var listeningModel = ListeningModel()
    
//    init() {
//        listeningModel.startTimer()
//    }
    
    var body: some View {
        TimeProgressGroupView()
            .environmentObject(listeningModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
