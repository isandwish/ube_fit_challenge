import 'package:flutter/material.dart';

// import 'dart:io';
// import 'package:image_picker/image_picker.dart';

class TextBox extends StatefulWidget {
  final String boxname;
  final TextEditingController? controller;

  const TextBox({super.key, required this.boxname, this.controller});

  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  late TextEditingController _controller;
  bool _isEmpty = true;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(() {
      setState(() {
        _isEmpty = _controller.text.isEmpty;
      });
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  String get text => _controller.text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 0.5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFFC5C5C5),
          width: 5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: _isEmpty ? widget.boxname : '',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Color(0xFFDBDBDB),
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFDBDBDB),
          ),
        ),
      ),
    );
  }
}

class PasswordBox extends TextBox {
  const PasswordBox({super.key, super.controller}) : super(boxname: 'password');

  @override
  _PasswordBoxState createState() => _PasswordBoxState();
}

class _PasswordBoxState extends _TextBoxState {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 0.5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFFC5C5C5),
          width: 5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: TextField(
          controller: _controller,
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: _isEmpty ? widget.boxname : '',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Color(0xFFDBDBDB),
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFDBDBDB),
          ),
        ),
      ),
    );
  }
}

class NotWorkButton extends TextBox {
  const NotWorkButton({super.key, required super.boxname, super.controller});

  @override
  _NotWorkButtonState createState() => _NotWorkButtonState();
}

class _NotWorkButtonState extends _TextBoxState {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 0.184),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFFC5C5C5),
          width: 5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: TextField(
          controller: _controller,
          enabled: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: _isEmpty ? widget.boxname : '',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Color(0xFFDBDBDB),
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFDBDBDB),
          ),
        ),
      ),
    );
  }
}

class ChoiceButton extends TextBox {
  final List<String> choices;

  const ChoiceButton(
      {super.key,
      required super.boxname,
      required this.choices,
      super.controller});

  @override
  _ChoiceButtonState createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends _TextBoxState {
  String? _selectedChoice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 0.5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFFC5C5C5),
          width: 5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Row(
          children: [
            Expanded(
              child: DropdownButton<String>(
                value: _selectedChoice,
                hint: Text(
                  _isEmpty ? widget.boxname : '',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFDBDBDB),
                  ),
                ),
                iconSize: 40,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.5),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedChoice = newValue;
                    _controller.text = newValue!;
                    _isEmpty = false;
                  });
                },
                items: (widget as ChoiceButton)
                    .choices
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateBox extends TextBox {
  const DateBox({
    super.key,
    required super.boxname,
    super.controller,
  });

  @override
  _DateBoxState createState() => _DateBoxState();
}

class _DateBoxState extends _TextBoxState {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text = "${picked.toLocal()}".split(' ')[0];
        _isEmpty = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: AbsorbPointer(
        child: Container(
          width: 300,
          height: 60,
          decoration: BoxDecoration(
            color: Color.fromRGBO(217, 217, 217, 0.5),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color(0xFFC5C5C5),
              width: 5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: _isEmpty ? widget.boxname : '',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFDBDBDB),
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFDBDBDB),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class PhotoBox extends TextBox {
//   const PhotoBox({super.key, required super.boxname, super.controller});

//   @override
//   _PhotoBoxState createState() => _PhotoBoxState();
// }

// class _PhotoBoxState extends _TextBoxState {
//   XFile? _image;

//   Future<void> _pickImage(ImageSource source) async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? pickedImage = await _picker.pickImage(source: source);
//     if (pickedImage != null) {
//       setState(() {
//         _image = pickedImage;
//         _controller.text = pickedImage.path;
//         _isEmpty = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _showPicker(context),
//       child: Container(
//         width: 300,
//         height: 60,
//         decoration: BoxDecoration(
//           color: Color.fromRGBO(217, 217, 217, 0.5),
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(
//             color: Color(0xFFC5C5C5),
//             width: 5,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.5),
//               spreadRadius: 1,
//               blurRadius: 10,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 16.0),
//           child: Row(
//             children: [
//               _image == null
//                   ? Text(
//                       _isEmpty ? widget.boxname : '',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color(0xFFDBDBDB),
//                       ),
//                     )
//                   : Image.file(
//                       File(_image!.path),
//                       width: 50,
//                       height: 50,
//                       fit: BoxFit.cover,
//                     ),
//               SizedBox(width: 10),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _showPicker(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext bc) {
//         return SafeArea(
//           child: Wrap(
//             children: <Widget>[
//               ListTile(
//                 leading: Icon(Icons.photo_library),
//                 title: Text('Photo Library'),
//                 onTap: () {
//                   _pickImage(ImageSource.gallery);
//                   Navigator.of(context).pop();
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.photo_camera),
//                 title: Text('Camera'),
//                 onTap: () {
//                   _pickImage(ImageSource.camera);
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
