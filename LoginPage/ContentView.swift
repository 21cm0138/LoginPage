//
//  ContentView.swift
//  LoginPage
//
//  Created by cmStudent on 2022/05/02.
//

import SwiftUI

struct ContentView: View {
    @State var mainSide:CGFloat = 0.0
    
    var body: some View {
        GeometryReader{ geometry in
            
            let mainWidth:CGFloat = geometry.frame(in: .global).width
            let mainHeight:CGFloat = geometry.frame(in: .global).height
            
            RoundedRectangle(cornerRadius: 0.0)
                //.fill(Color.blue)
                
                .overlay(ZStack{
                    VStack{
                        Image("background")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                    }
                    VStack{
                        
                        loginWindow(color: Color.gray)
                        
                    }.frame(width: getSideLength(width: mainWidth,height: mainHeight), height: getSideLength(width: mainWidth,height: mainHeight))
                }

                )
            
            
        }
    }
}

struct loginWindow:View{
    var color:Color
    var body: some View{
        
        GeometryReader{ geometry in
            RoundedRectangle(cornerRadius: 20.0)
                //.fill(self.color)
                .opacity(0.2)
                .overlay(ZStack{
                    
                    VStack{
                    }
                    
                    .frame(width: geometry.frame(in: .local).width, height: geometry.frame(in: .local).width)
                    .background(Color.white)
                    .cornerRadius(20)
                    .opacity(0.3)

                        VStack{
                            
                            Image("default")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: geometry.frame(in: .local).width * 0.3, height:geometry.frame(in: .local).width * 0.3 )
                            
                            TextField("Username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                .frame(width: geometry.frame(in: .local).width * 0.6, height: (geometry.frame(in: .local).width * 0.12))
                                .background(Color.white)
                                .cornerRadius(5)
                                .multilineTextAlignment(.center)
                            
                            SecureField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                .frame(width: geometry.frame(in: .local).width * 0.6, height: (geometry.frame(in: .local).width * 0.12))
                                .background(Color.white)
                                .cornerRadius(5)
                                .multilineTextAlignment(.center)
                                //.opacity(0.8)
                            
                            
                            Button(action: {
                                
                            }) {
                                Text("ログイン")
                                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.white)
                                    .frame(width: geometry.frame(in: .local).width * 0.6, height: (geometry.frame(in: .local).width * 0.12))
                                    .background(Color.blue)
                                    .cornerRadius(8)
                                    //.opacity(0.8)
                                
                            }
                            
                            Button(action: {
                                
                            }) {
                                Text("新規登録")
                                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.white)
                                    .frame(width: geometry.frame(in: .local).width * 0.6, height: (geometry.frame(in: .local).width * 0.12))
                                    .background(Color.red)
                                    .cornerRadius(8)
                                    .opacity(0.8)
                                
                            }
                            
                            Button(action: {
                                
                            }) {
                                Text("パスワードを忘れた場合")
                            }
                        }
                        
                    
                         
                }
                    
                )
        }
    }
    
}
func getSideLength(width:CGFloat,height:CGFloat) -> CGFloat{
    var length:CGFloat = 0.0
    
    if(width < height){
        length = width
    }else{
        length = height
    }
    
    if(length > 600){
        length = 600
    }
    return length
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
