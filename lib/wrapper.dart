import 'package:atv_flutter_01/application/repositories/memory_contact_repository.dart';
import 'package:atv_flutter_01/ui/pages/contact_page.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  final contactRepository = MemoryContactRepository();

  bool showForm = true;

  void togglePages() {
    setState(() => showForm = !showForm);
  }

  @override
  Widget build(BuildContext context) {
    final contactList =
        contactRepository.getAll().map((e) => Text(e.name)).toList();

    if (showForm) {
      return ContactPage(
        contactRepository: contactRepository,
        togglePages: togglePages,
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: const Text('Lista de Contatos'),
        leading: BackButton(color: Colors.white, onPressed: togglePages),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
        child: Column(
          children: contactList,
        ),
      ),
    );
  }
}
