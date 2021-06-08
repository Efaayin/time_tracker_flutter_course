import 'package:flutter/material.dart';

class AddJobPage extends StatefulWidget {
  // const AddJobPage({ Key? key }) : super(key: key);

  static Future<void> show(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddJobPage(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  _AddJobPageState createState() => _AddJobPageState();
}

class _AddJobPageState extends State<AddJobPage> {

  final _formKey = GlobalKey<FormState>();

  bool _valiadteAndSaveForm() {
    final form = _formKey.currentState;

    if(form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void _submit() {
    if (_valiadteAndSaveForm()) {
      print('Form Saved');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Text('New Job'),
        actions: <Widget>[
          TextButton(
            child: Text(
              'Save',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onPressed: _submit,
          ),
        ],
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildForm(),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _buildFormChildren(),
      ),
    );
  }

  List<Widget> _buildFormChildren() {
    return [
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Job Name',
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Rate per Hour',
        ),
        keyboardType: TextInputType.numberWithOptions(
          signed: false,
          decimal: false,
        ),
      ),
    ];
  }
}
