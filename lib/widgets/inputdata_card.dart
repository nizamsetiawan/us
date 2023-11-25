import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:us_mobile/constant/colors.dart';

class PermissionViewModel {
  final String title;
  final String hintText;
  final bool isTextField;
  final String subTitle;
  String? filePath;

  PermissionViewModel({
    required this.title,
    required this.hintText,
    required this.isTextField,
    required this.subTitle,
    this.filePath,
  });
}

class PermissionWidget extends StatefulWidget {
  final PermissionViewModel viewModel;
  final Function(String title, String filePath) onFilePicked;

  const PermissionWidget({
    Key? key,
    required this.viewModel,
    required this.onFilePicked,
  }) : super(key: key);

  @override
  _PermissionWidgetState createState() => _PermissionWidgetState();
}

class _PermissionWidgetState extends State<PermissionWidget> {
  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        widget.viewModel.filePath = result.files.single.path!;
      });
    } else {
      // User membatalkan pemilihan
    }
  }

  Future<void> _uploadDataToApi() async {
    // Pastikan filePath tidak null dan ada callback onFilePicked
    if (widget.viewModel.filePath != null) {
      widget.onFilePicked(widget.viewModel.title, widget.viewModel.filePath!);
    }
  }

  Widget _buildTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 36,
          width: 256,
          decoration: BoxDecoration(
            color: appwhite,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: widget.viewModel.hintText,
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(bottom: 15),
              ),
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFileUpload() {
    return GestureDetector(
      onTap: () {
        _pickFile();
        _uploadDataToApi();
      },
      child: Container(
        height: 36,
        width: 256,
        decoration: BoxDecoration(
          color: appwhite,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Pilih File',
              style: TextStyle(fontSize: 10, color: appneutral500),
            ),
            VerticalDivider(
              color: appneutral300,
              thickness: 2,
            ),
            widget.viewModel.filePath != null
                ? Text(
                    '${widget.viewModel.filePath!.split('/').last}',
                    style: TextStyle(fontSize: 10, color: appneutral500),
                  )
                : Text(
                    'Belum ada file yang dipilih',
                    style: TextStyle(fontSize: 10, color: appneutral500),
                  ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.viewModel.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: appneutral800,
            ),
          ),
          Text(
            widget.viewModel.subTitle,
            style: TextStyle(fontSize: 10, color: appneutral500),
          ),
          SizedBox(height: 10),
          widget.viewModel.isTextField ? _buildTextField() : _buildFileUpload(),
        ],
      ),
    );
  }
}
