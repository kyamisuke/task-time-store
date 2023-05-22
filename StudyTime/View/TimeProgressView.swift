//
//  TimeView.swift
//  StudyTime
//
//  Created by 村上航輔 on 2023/05/20.
//

import SwiftUI
import Combine

struct TimeProgressView: View {
    @EnvironmentObject var listeningModel: ListeningModel
    
    var body: some View {
        GeometryReader { geometry in
            Circle()
                .trim(from: 0, to: listeningModel.archiveRate)
                .stroke(style: StrokeStyle(lineWidth: geometry.frame(in: .global).width * 0.2, lineCap: .round))
                .fill(AngularGradient(
                    gradient: Gradient(colors: [.blue, .green, .green, .red, .blue]),
                    center: .center
                ))
                .rotationEffect(Angle(degrees: -90))
        }
    }
}

struct TimeProgressView_Previews: PreviewProvider {
    static var previews: some View {
        TimeProgressView()
            .environmentObject(ListeningModel())
    }
}
