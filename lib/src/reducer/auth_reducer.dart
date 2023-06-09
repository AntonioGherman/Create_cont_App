import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

Reducer<AuthState> authReducer =
    combineReducers(<Reducer<AuthState>>[TypedReducer<AuthState, UserAction>(_userAction).call]);

AuthState _userAction(AuthState state, UserAction action) {
  return state.copyWith(user: action.user);
}
