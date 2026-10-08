import 'package:flutter/material.dart';
import 'package:flutter_jungle_core/flutter_jungle_core.dart';

final _logger = Logger('example');

void main() {
  Logger.root.onRecord.listen((record) => debugPrint(record.toString()));
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Jungle Core',
      home: ValidationPage(),
    );
  }
}

class ValidationPage extends StatefulWidget {
  const ValidationPage({super.key});

  @override
  State<ValidationPage> createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  String _email = '';
  String _password = '';
  String _repeat = '';
  Resource<String, String> _submit = Resource.none();

  String? _emailError() {
    if (_email.isEmpty) return null;
    return EmailVos(_email).map(
      isLeft: (failure) => 'Email error: ${failure.code}',
      isRight: (_) => null,
    );
  }

  String? _passwordError() {
    if (_password.isEmpty) return null;
    return PasswordVos(_password).map(
      isLeft: (failure) => 'Password error: ${failure.code}',
      isRight: (_) => null,
    );
  }

  String? _repeatError() {
    if (_repeat.isEmpty) return null;
    return RepeatPasswordVos(password: _repeat, passToMatchWith: _password).map(
      isLeft: (failure) => 'Repeat error: ${failure.code}',
      isRight: (_) => null,
    );
  }

  Future<void> _onSubmit() async {
    final email = EmailVos(_email);
    final password = PasswordVos(_password);
    final repeat = RepeatPasswordVos(
      password: _repeat,
      passToMatchWith: _password,
    );

    if (email.isInvalid() || password.isInvalid() || repeat.isInvalid()) {
      setState(() => _submit = Resource.failure('Check the form fields'));
      return;
    }

    setState(() => _submit = Resource.loading());
    await Future<void>.delayed(const Duration(seconds: 1));
    _logger.info('Registered ${email.getOrCrash()}');
    setState(() => _submit = Resource.success(email.getOrCrash()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Jungle Core')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              errorText: _emailError(),
            ),
            onChanged: (value) => setState(() => _email = value),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              errorText: _passwordError(),
            ),
            onChanged: (value) => setState(() => _password = value),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Repeat password',
              errorText: _repeatError(),
            ),
            onChanged: (value) => setState(() => _repeat = value),
          ),
          const SizedBox(height: 16),
          FilledButton(onPressed: _onSubmit, child: const Text('Register')),
          const SizedBox(height: 16),
          _submit.map(
            isNone: () => const SizedBox.shrink(),
            isLoading: () => const Center(child: CircularProgressIndicator()),
            isSuccess: (email) => Text('Registered: $email'),
            isFailure: (error) => Text(
              error,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ],
      ),
    );
  }
}
