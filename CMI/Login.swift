import SwiftUI

struct Login: View {
    
    @EnvironmentObject var userAuth: AuthUser
    @State var username: String = ""
    @State var password: String = ""
    @State var loginError = "Usuario o contraseña incorrectos."
    var disableForm: Bool {(!isValidEmail(username) || !isValidUser(username)) && !isPasswordValid(password)}
    
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            VStack{
                HStack{
                    Spacer(minLength: 0)
                    Text("Cuadro de Mando Integral")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    Spacer(minLength: 0)
                }
                .foregroundColor(.white)
                .padding()
                .background(Color("verdeHeader"))
                
                
            }
            .contentShape(Rectangle())
            .background(Color("colorDarkAparence"))
            Spacer(minLength: 0)
            
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
                    .autocapitalization(.none)
                    .background(Color("colorDarkAparence"))
                    .border(Color("gris_2.1"))
                    .frame(width: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 500 : 370, height: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 80 : 50, alignment: .center)
                
                if self.userAuth.isLoginError {
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
                    .autocapitalization(.none)
                    .background(Color("colorDarkAparence"))
                    .border(Color("gris_2.1"))
                    .frame(width: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 500 : 370, height: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 80 : 50, alignment: .center)
            }
            
            Button(action: {
                self.userAuth.login(username: username, password: password)
                self.username = self.username
                self.password = ""
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
            Spacer()
            
        }
        
    }
    
    private func isValidUser(_ email: String) -> Bool {
        let usernamePred = NSPredicate(format:"SELF MATCHES %@", "^(?=[a-zA-Z0-9._]{2,}$)(?!.*[_.]{2})[^_.].*[^_.]$")
        return usernamePred.evaluate(with: email)
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailPred = NSPredicate(format:"SELF MATCHES %@", "^[a-zA-Z0-9_.]+@([a-zA-Z0-9_-]+.)+[a-zA-Z0-9_-]{2,4}$")
        return emailPred.evaluate(with: email)
    }
    
    private func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z])(?=.*[a-z])(?=.*?[0-9])(?=.*[$.@$#!%*?&-_])[A-Za-z0-9$.@$#!%*?&-_]{8,64}")
        return passwordTest.evaluate(with: password)
    }
    
}
