import SwiftUI

struct Login: View {
    @State var username: String = ""
    @State var password: String = ""

    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Text("Inicia Sesión")
                .font(.title2.bold())
                .foregroundColor(Color("gris_2"))
        
            VStack(alignment: .leading, spacing: 20){
                Text("Usuario o email")
                    .font(.headline)
                    .foregroundColor(Color("gris_2"))
                
               TextField("Usuario o email", text: $username)
                    .font(.subheadline)
                    .padding()
                    .background(Color("colorDarkAparence"))
                    .border(Color("gris_2.1"))
                    
                Text("Contraseña")
                    .font(.headline)
                    .foregroundColor(Color("gris_2"))
                
                SecureField("Contraseña", text: $password)
                     .font(.subheadline)
                     .padding()
                     .background(Color("colorDarkAparence"))
                     .border(Color("gris_2.1"))
                Button(action: {
                    
                    print("Usuario: \(username)\nContraseña: \(password)")
                    username = ""
                    password = ""
                }, label: {
                        Text("Iniciar Sesión")
                            .font(.headline.bold())
                            .foregroundColor(username == "" || password == "" ? Color("rosita") : Color.white )
                            .padding()
                            .frame(width: 400, height: 60)
                            .background(username == "" || password == "" ?   Color("colorDarkAparence") : Color("rosita"))
                            .border(Color("rosita"))
                    
                }).disabled(username == "" || password == "")
            }.padding()
        }
    }
}
