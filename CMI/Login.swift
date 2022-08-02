import SwiftUI

struct Login: View {
    @State var username: String = ""
    @State var password: String = ""
    @StateObject var viewRouter: ViewRouter
    @State var isLoginError : Bool = false
    @State var loginError = "Usuario o contraseña incorrectos."
    var disableForm: Bool {!isValidEmail(username) || !isPasswordValid(password)}
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            HStack{
                Text("Inicia Sesión")
                    .font(.title2.bold())
                    .foregroundColor(Color("gris_2"))
            }.padding(.bottom)
            VStack(alignment: .leading, spacing: 20){
                Text("Usuario o email")
                    .font(.headline)
                    .foregroundColor(Color("gris_2"))
                
                TextField("Usuario o email", text: $username)
                    .font(.subheadline)
                    .padding()
                    .background(Color("colorDarkAparence"))
                    .border(Color("gris_2.1"))
                    .frame(width: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 500 : 370, height: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 80 : 50, alignment: .center)
                
                if self.isLoginError == true {
                    Text("\(self.loginError)")
                        .font(.headline)
                        .foregroundColor(.red)
                }
                
                Text("Contraseña")
                    .font(.headline)
                    .foregroundColor(Color("gris_2"))
                
                SecureField("Contraseña", text: $password)
                    .font(.subheadline)
                    .padding()
                    .background(Color("colorDarkAparence"))
                    .border(Color("gris_2.1"))
                    .frame(width: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 500 : 370, height: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 80 : 50, alignment: .center)
            }
            
            Button(action: {
                print("Usuario: \(self.username)\nContraseña: \(self.password)")
                if username == "Jose.esquivel" && password == "Password1."{
                    withAnimation{
                        viewRouter.currentPage = .inicio
                    }
                    self.username = ""
                    self.password = ""
                }else{
                    isLoginError = true
                    self.username = self.username
                    self.password = ""
                }
                
                
            }, label: {
                
                Text("Iniciar Sesión")
                    .font(.headline.bold())
                    .foregroundColor(disableForm ? Color("rosita") : Color.white )
                    .padding()
                    .frame(width: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 500 : 370, height: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 80 : 50, alignment: .center)
                    .background(disableForm ?   Color("colorDarkAparence") : Color("rosita"))
                    .border(Color("rosita"))
                
            })
            .disabled(disableForm)
            
        }
        
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailPred = NSPredicate(format:"SELF MATCHES %@", "^(?=[a-zA-Z0-9._]{8,}$)(?!.*[_.]{2})[^_.].*[^_.]$")
        return emailPred.evaluate(with: email)
    }
    
    private func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z])(?=.*[a-z])(?=.*?[0-9])(?=.*[$.@$#!%*?&])[A-Za-z0-9$.@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
}
