//
//  SelectGoku.swift
//  navigaton_data
//
//  Created by jose juan alcantara rincon on 25/09/21.
//

import SwiftUI

struct SelectGokuView: View {
    @Binding var rootActive: Bool
    @Binding var image : String
    @Binding var description : String
    var body: some View {
        VStack{
            Text(description)
                .padding()
                .font(.largeTitle)
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width:140 ,height: 250)
            GokuView(active: $rootActive, image: $image, description: $description, img: "goku_base", des: "Goku Base")
            GokuView(active: $rootActive, image: $image, description: $description, img: "goku_ssj", des: "Goku SSJ1")
            GokuView(active: $rootActive, image: $image, description: $description, img: "goku_ssj2", des: "Goku SSJ2")
            GokuView(active: $rootActive, image: $image, description: $description, img: "goku_ssj3", des: "Goku SSJ3")
        }
    }
}

struct SelectGokuView_Previews: PreviewProvider {
    static var previews: some View {
        SelectGokuView(rootActive: .constant(true), image: .constant("goku_base"), description: .constant("Goku Base"))
    }
}

struct GokuView: View{
    @Binding var active : Bool
    @Binding var image : String
    @Binding var description: String
    var img: String
    var des: String
    var body: some View{
        HStack{
            Spacer()
            Text(des)
                .padding(10)
                .padding(.horizontal, 30)
                .background(Color.orange)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .onTapGesture {
                    image = img
                    description = des
                    active = false
                }
            Spacer()
            Image(img)
                .resizable()
                .scaledToFit()
                .frame(width:60 ,height: 100)
            Spacer()
        }
    }
}
