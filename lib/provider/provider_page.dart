import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/user_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);

    // var user = context.read<UserModel>();
    //.read vai retornar uma instancia sem ficar escutando alterações

    // var imageAvatar = context.select<UserModel, String>((UserModel) => UserModel.imageAvatar);
    // .select extrai somente o objeto que interessa para a finalidade (bom pro changenotifier)

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.imageAvatar),
                // backgroundImage: NetworkImage(imageAvatar), usado no .select
                radius: 40,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [Text(user.name), Text('(${user.birthDay})')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
