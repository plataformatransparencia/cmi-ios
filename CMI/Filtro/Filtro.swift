import SwiftUI

struct Filtro: View {
    @State var mod : String
    @State var isPresented = false
    @State var token : String
    @EnvironmentObject var filtroViewModel : FiltroViewModel
    
    var body: some View {
        VStack{
            HStack{
                Text("Aplica un filtro a tu consulta")
                    .font(.title3.bold())
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    self.isPresented.toggle()
                    
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                        .font(.title3.bold())
                    
                })
            }.foregroundColor(Color("gris_2"))
        }.padding([.top, .horizontal, .bottom])
            .sheet(isPresented: $isPresented, content: {
                VStack{
                    HStack{
                        Button(action: {
                            self.isPresented.toggle()
                        }, label: {
                            Image(systemName: "xmark.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 50 : 30, height: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 40 : 25)
                                .padding(.trailing, -25)
                        })
                        Spacer()
                        Text("Todos los Filtros")
                            .font(.title3.bold())
                        Spacer()
                    }.foregroundColor(Color("gris_2"))
                        .padding(.horizontal)
                        .padding(.top, 15)
                    Divider().background(Color("gris_2"))
                    ScrollView(showsIndicators: true){
                        VStack{
                            VStack(alignment: .leading){
                                if mod == "Módulo I" {
                                    DropDownPeriodos()
                                }
                                
                                if mod == "Módulo III" {
                                    DropDownEjercicioFiscal()
                                    DropDownEntidadFederativa()
                                    DropDownSubsistema()
                                    DropDownInstitucion()
                                }
                                
                            }.padding(.top, 30)
                        }.padding(.bottom, (UIApplication
                            .shared
                            .connectedScenes
                            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                            .first { $0.isKeyWindow }?.safeAreaInsets.bottom)! + 5)
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(25)
                        .edgesIgnoringSafeArea(.bottom)
                    }.foregroundColor(Color("gris_2"))
                    
                    Button(action: {
                        self.isPresented.toggle()
                        self.filtroViewModel.cambio.toggle()
                    }, label: {
                        Text("Aplicar")
                            .font(.title3)
                            .frame(width: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 500 : 350, height: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 80 : 50, alignment: .center)
                            .background(Color("verdeHeader"))
                            .foregroundColor(.white)
                            .padding()
                    })
                }
            })
    }
}
