//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise2: View {
    @State var money = ""
    var body: some View {
        
        ZStack {
            VStack{
                Spacer()
                Image("currency")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .offset(y: 60.0)
            }
            ZStack {
                VStack {
                    Text("محول العملات العجيب!")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("العمله بالدينار", text: $money)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)

                    VStack(spacing: 30){
                        HStack(spacing: 40){
                            Image("us")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            Text("\(3.28 * (Double(money) ?? 0)  )")
                        }
                        HStack(spacing: 40){
                            Image("uk")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            Text("\(2.46 * (Double(money) ?? 0)  )")
                        }
                        HStack(spacing: 40){
                            Image("eu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            Text("\(2.7 * (Double(money) ?? 0)  )")
                        }
                    }.padding(.top, 50)
                    Spacer()
                }
            }.padding()
        }
    }
}

struct Exercise2_Previews: PreviewProvider {
    static var previews: some View {
        Exercise2()
    }
}
