import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  final String title;

  const ImagePickerPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _ImagePickerPage();
}

class _ImagePickerPage extends State<ImagePickerPage> {
  File? _cameraImage;
  File? _galleryImage;
  List<File> _multiImage = []; // for Multiple Image

  // short for Image Picker
  final ImagePicker picker = ImagePicker();

  Future<void> _pickImageCamera() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1080,
      maxHeight: 1080,
      imageQuality: 100,
      preferredCameraDevice: CameraDevice.front,
    );
    if (pickedFile != null && pickedFile != _cameraImage) {
      setState(() {
        _cameraImage = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickImageGallery() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 800,
      maxHeight: 800,
      imageQuality: 80,
    );
    if (pickedFile != null && pickedFile != _galleryImage) {
      setState(() {
        _galleryImage = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickMultipleImage() async {
    final List<XFile> pickedFile = await picker.pickMultiImage(
      maxHeight: 800,
      maxWidth: 800,
      imageQuality: 85,
    );
    if (pickedFile.isNotEmpty) {
      setState(() {
        _multiImage = pickedFile.map((xfile) => File(xfile.path)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            //Image Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Gallery Image Container
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,

                  child: _galleryImage != null
                      ? Image.file(_galleryImage!, fit: BoxFit.cover)
                      : Center(child: Text("Gallery")),
                ),

                SizedBox(width: 16),

                // Camera Image
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: _cameraImage != null
                      ? Image.file(_cameraImage!, fit: BoxFit.cover)
                      : Center(child: Text("Camera")),
                ),
              ],
            ),

            SizedBox(height: 30),
            // button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _pickImageGallery,
                  child: Text("Select from Gallery"),
                ),
                SizedBox(width: 18),
                ElevatedButton(
                  onPressed: _pickImageCamera,
                  child: Text("Select from Camera"),
                ),
              ],
            ),

            SizedBox(height: 30),

            //Multiple Image Section
            Text(
              "Mulitple Image Select",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 12),

            // Container for Multiple Images
            Container(

              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: _multiImage.isEmpty
                  ? Center(child: Text("No Images Selected"))
                  : Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: _multiImage
                          .map(
                            (file) => ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(
                                file,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                          .toList(),
                    ),
            ),

            SizedBox(height: 20),

            // Multiple Image Button
            ElevatedButton(
              onPressed: _pickMultipleImage,
              child: Text("Select Multiple Images"),
            ),
          ],
        ),
      ),
    );
  }
}
