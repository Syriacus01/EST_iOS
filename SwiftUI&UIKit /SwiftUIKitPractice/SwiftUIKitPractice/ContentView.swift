//
//  ContentView.swift
//  SwiftUIKitPractice
//
//  Created by 조수원 on 3/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    
    var body: some View {
        VStack {
            if let selectedImage = selectedImage {
                Image(uiImage: selectedImage)
            } else {
                Text("선택된 이미지가 없습니다.")
            }
            Button("이미지 선택") {
                self.showImagePicker.toggle()
                print(self.showImagePicker)
            }
            .padding()
        }
        .sheet(isPresented: $showImagePicker) {
            //ImagePicker(selectedImage: self.$selectedImage)
        }
        
        
        .padding()
    }
}
#Preview {
    ContentView()
}
