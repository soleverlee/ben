import 'package:ben_app/mobx/item_list_store.dart';
import 'package:ben_app/providers/services/item_list_service.dart';
import 'package:ben_app/providers/view_models/add_note_model.dart';
import 'package:ben_app/ui/theme/icons.dart';
import 'package:ben_app/ui/widgets/tool_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'note_model.dart';

class AddNotePage extends StatelessWidget {
  final NoteStore _noteStore;
  final TextEditingController _textEditingController = TextEditingController();

  AddNotePage(this._noteStore, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("创建新记事"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _textEditingController,
                expands: true,
                autofocus: false,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration.collapsed(hintText: '在这里输入文字'),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: _createToolbar(context),
          ),
        ],
      ),
    );
  }

  Widget _createToolButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ToolButton(
          label: "手写",
          icon: FontIcon.handWrite,
          onTap: () {},
        ),
        ToolButton(
          label: "图片",
          icon: FontIcon.image,
          onTap: () {},
        ),
        ToolButton(
          label: "视频",
          icon: FontIcon.video,
          onTap: () {},
        ),
        ToolButton(
          label: "录音",
          icon: FontIcon.audio,
          onTap: () {},
        ),
        ToolButton(
          label: "Markdown",
          icon: FontIcon.markdown,
          onTap: () {},
        ),
      ],
    );
  }

  Widget _createToolbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: _createToolButtons(),
        ),
        Container(
          height: 20,
          child: VerticalDivider(
            color: Colors.red,
          ),
        ),
        ChangeNotifierProxyProvider<ItemListService, AddNoteViewModel>(
          builder: (_, service, viewModel) => AddNoteViewModel(service),
          child: FlatButton(
            onPressed: () => _onSave(context),
            textColor: Colors.blue,
            child: Text(
              "保存",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  void _onSave(BuildContext context) async {
    _noteStore
        .save(NoteModel(title: "hello", content: _textEditingController.text));
    Navigator.of(context).pop(
        NoteModel(title: "Hello world", content: _textEditingController.text));
  }
}
