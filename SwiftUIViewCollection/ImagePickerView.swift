//
//  ImagePickerView.swift
//  SwiftUIViewCollection
//
//  Created by Erik Dungan on 2/6/22.
//

import SwiftUI
import UIKit

struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
    var sourceType: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = self.sourceType
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
}

//struct ImagePickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImagePickerView()
//    }
//}
