import 'package:hydrated_bloc/hydrated_bloc.dart';

enum LoginStatus { initial, loggedIn, loggedOut }

class LoginState {
  LoginState({required this.status, required this.token});

  final LoginStatus status;
  final String token;
}

LoginState loginStateFromJson(Map<String, dynamic> json) => LoginState(
      status: LoginStatus.values[int.parse(json['status'] as String)],
      token: json['token'] as String,
    );

Map<String, dynamic> loginStateToJson(LoginState instance) => <String, dynamic>{
      'status': instance.status.index,
      'token': instance.token,
    };

class LoginCubit extends HydratedCubit<LoginState> {
  LoginCubit() : super(LoginState(status: LoginStatus.initial, token: ''));

  @override
  LoginState? fromJson(Map<String, dynamic> json) {
    return loginStateFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(LoginState state) {
    return loginStateToJson(state);
  }
}
