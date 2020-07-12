import 'package:ben_app/backend/mobx/initialize_store.dart';
import 'package:ben_app/generated/l10n.dart';
import 'package:ben_app/ui/widgets/setting_option.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter/material.dart';

class SystemSettingsPage extends StatelessWidget {
  final InitializeStore _store;
  final Function onPrevious;
  final Function onNext;

  const SystemSettingsPage(this._store, {Key key, @required this.onPrevious, @required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          PasswordSetting(
            S.of(context).master_password_description,
            (value) => _store.setMasterPassword(value),
            (value) => _store.confirmPassword(value),
            () => _store.errorMessage != null,
            () => _store.errorMessage,
          ),
          SwitchOption(
            S.of(context).enable_fingerprint,
            S.of(context).enable_fingerprint_description,
            (_) => Switch(value: _store.enableFingerPrint, onChanged: (value) => _store.setEnableFingerPrint(value)),
          ),
          SwitchOption(
            S.of(context).enable_password_options_auto_detect,
            S.of(context).enable_password_options_auto_detect_description,
            (_) => Switch(
                value: _store.autoDetectEncryptOptions,
                onChanged: (value) => _store.setAutoDetectEncryptOptions(value)),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                key: Key("previousButton"),
                onPressed: this.onPrevious,
                child: Text(S.of(context).previous),
              ),
              Observer(
                builder: (_) => FlatButton(
                  key: Key("nextButton"),
                  onPressed: _store.isSettingsCompleted ? this.onNext : null,
                  child: Text(S.of(context).next),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
