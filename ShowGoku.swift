//
//  ShowGoku.swift
//  navigaton_data
//
//  Created by jose juan alcantara rincon on 25/09/21.
//
import SwiftUI

struct ShowGokuView: View {
    @State var image = "goku_base"
    @State var description = "Goku Base"
    @State var active = false
    var body: some View {
        
        VStack{
            VStack{
                Button(action: {
                    active = true
                }){
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 430, height: 700)
                }
                .sheet(isPresented: $active, content: {
                    SelectGokuView(rootActive: $active ,image: $image, description: $description)
                })
            }
            
            VStack{
                Text(description)
                    .padding()
                    .font(.largeTitle)
            }
        }
    }
}

struct ShowGokuView_Previews: PreviewProvider {
    static var previews: some View {
        ShowGokuView()
    }
}
