import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_notifier/provider_controller.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({super.key});

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await Future.delayed(Duration(seconds: 1));
      context.read<ProviderController>().alterarDados();
    });
  }

  Widget build(BuildContext context) {
    var controller = Provider.of<ProviderController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  context.watch<ProviderController>().imageAvatar,
                ),
                // backgroundImage: NetworkImage(imageAvatar), usado no .select
                radius: 40,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(context.watch<ProviderController>().name),
                  Text('(${context.watch<ProviderController>().birthDay})'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
