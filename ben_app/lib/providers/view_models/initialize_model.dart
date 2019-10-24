import 'package:ben_app/providers/view_models/responding_model.dart';

import '../../crypto/protected_value.dart';
import '../services/init_service.dart';

class InitializeViewModel extends PageStatusNotifier {
  InitializeService initializeService;
  ProtectedValue _masterPassword;
  ProtectedValue _confirmedMasterPassword;
  String _passwordErrorMessage;
  bool _acceptUserAgreement;
  bool _enableFingerprint;

  InitializeViewModel()
      : initializeService = null,
        _masterPassword = null,
        _confirmedMasterPassword = null,
        _passwordErrorMessage = null,
        _acceptUserAgreement = false,
        _enableFingerprint = true,
        super(State.IDLE);

  ProtectedValue get confirmedMasterPassword => _confirmedMasterPassword;

  ProtectedValue get masterPassword => _masterPassword;

  String get passwordErrorMessage => _passwordErrorMessage;

  bool get acceptUserAgreement => _acceptUserAgreement;

  bool get enableFingerprint => _enableFingerprint;

  set enableFingerprint(bool value) {
    _enableFingerprint = value;
    notifyListeners();
  }

  set acceptUserAgreement(bool value) {
    _acceptUserAgreement = value;
    notifyListeners();
  }

  set passwordErrorMessage(String value) {
    _passwordErrorMessage = value;
    notifyListeners();
  }

  set masterPassword(ProtectedValue value) {
    _masterPassword = value;
    if (_masterPassword == null || _masterPassword.getText().length < 5)
      _passwordErrorMessage = "密码长度不符合要求";
    else
      _passwordErrorMessage = null;
    notifyListeners();
  }

  set confirmedMasterPassword(ProtectedValue value) {
    _confirmedMasterPassword = value;
    notifyListeners();
  }

  Future<void> initialize() async {
    state = State.BUSY;
    await initializeService.initialize(
        _masterPassword, _enableFingerprint);
    state = State.IDLE;
  }
}
