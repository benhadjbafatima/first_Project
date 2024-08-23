import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageUpload extends StatefulWidget {
  final String label1;
  final String label2;

  const ImageUpload({
    Key? key,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  File? _imageFile;
  bool _isPickerActive = false;

  Future<void> _pickImage() async {
    if (_isPickerActive) return; // Prevent multiple invocations
    setState(() {
      _isPickerActive = true;
    });

    try {
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
      }
    } catch (e) {
      // Handle any exceptions
      print('Image picker error: $e');
    } finally {
      setState(() {
        _isPickerActive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _isPickerActive ? null : _pickImage,
          child: Text(widget.label1),
        ),
        if (_imageFile != null)
          Image.file(_imageFile!), // Display the selected image
      ],
    );
  }
}
