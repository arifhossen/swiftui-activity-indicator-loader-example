//
//  ContentView.swift
//  swiftui-activity-indicator-loader-example
//
//  Created by Arif Hossen on 24/5/20.
//  Copyright © 2020 Arif Hossen. All rights reserved.
//

import SwiftUI

struct ActivityIndicatorUIView: UIViewRepresentable {
    @Binding var showIndicatorLoader: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView,
                      context: Context) {
        if self.showIndicatorLoader {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}

struct DeveloperBottomView:View {
    
    var body: some View{
        
        VStack(alignment:.center){
            Text("Developed by Arif Hossen").fontWeight(.bold).foregroundColor(.green)
            Text("Senior iOS Developer at Graaho").foregroundColor(.blue)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
    }
}

struct ContentView: View {
    @State private var showIndicatorLoader = false
    
    var body: some View {
       
        VStack {
            
            Image("swiftui-logo")
            
            Text("Activity Indicator Loader Show/Hide")
                .foregroundColor(.green)
                .font(.system(size: 20))
            
            Spacer().frame(height:100)
            
            ActivityIndicatorUIView(showIndicatorLoader: self.$showIndicatorLoader)
            
            Button(action: {
                
                self.showIndicatorLoader = !self.showIndicatorLoader
                
            }, label: {
                Text("Show/Hide")
                    .foregroundColor(Color.black)
                    .padding()
            })
                .background(Color.yellow)
                .cornerRadius(5)
            
            Spacer()
            DeveloperBottomView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
