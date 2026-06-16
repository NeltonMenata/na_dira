import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:na_dira/layers/api/supabase/connection.dart';
import 'package:na_dira/layers/presenters/components/button/button_widget.dart';
import 'package:na_dira/layers/presenters/components/space/height_widget.dart';
import 'package:na_dira/layers/presenters/components/text_field_custom/text_field_custom.dart';
//import 'package:supabase_flutter/supabase_flutter.dart';

class GuestView extends StatefulWidget {
  const GuestView({super.key});

  @override
  State<GuestView> createState() => _GuestViewState();
}

class _GuestViewState extends State<GuestView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(),
            Center(
              child: Text("Adicione um consumidor",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            const HeightWidget(16),
            const Text("Nome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const TextFieldCustom(icon: Icon(Icons.person_rounded)),
            const HeightWidget(),
            const Text(
              "Telefone",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const TextFieldCustom(icon: Icon(Icons.phone_rounded)),
            const HeightWidget(24),
            ButtonWidget(
                expanded: true,
                onPressed: () async {
                  GoogleSignIn googleSignIn = GoogleSignIn(
                    clientId: "389967150829-od0s0tv3o6hupe2nmcaqiei263p4nnlq.apps.googleusercontent.com",
                    serverClientId: "389967150829-1806rsqke3tdlju687v5uq4k79525ilg.apps.googleusercontent.com"
                  );
             
                  final userGoogle = await googleSignIn.signIn();
                  
                  if (userGoogle != null) print(userGoogle);
                  print("#############################################");
                  /*
                  final userAuthentication = await userGoogle!.authentication;

                  final userAccessToken = userAuthentication.accessToken;
                  
                  final userIdToken = userAuthentication.idToken;
                  if( userIdToken == null|| userAccessToken == null){
                    //print("UserIdToken: $userIdToken");
                    //print("UserAccessToken: $userAccessToken");
                    return;
                  }
                  final res = await supabase.auth.signInWithIdToken(provider: OAuthProvider.google, accessToken: userAccessToken, idToken: userIdToken);
                  //final user = await supabase.auth.signInWithPassword(
                    //email: "neltonmenata@gmail.com",
                    //password: "12345");
                  if(res.user != null){
                   // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${supabase.auth.currentUser?.email}")));
                   // print(supabase.auth.currentUser?.email);
                   // print(user.user?.email);
                  }
                  print(res);
                  */
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                      fontSize: 20,
                      
                      color: Colors.deepOrange,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
