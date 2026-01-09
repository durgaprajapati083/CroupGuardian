import 'package:flutter/material.dart';

class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFFAF5),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 20),
            _buildUploadCard(),
            const SizedBox(height: 16),
            _buildDescriptionField(),
            const SizedBox(height: 16),
            _buildLanguageSelector(),
            const SizedBox(height: 16),
            _buildDiagnoseButton(),
            const SizedBox(height: 32),
            _buildDiagnosisResults(),
            const SizedBox(height: 32),
            _buildDiagnosisHistory(),
            const SizedBox(height: 40),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  // ---------------- APP BAR ----------------
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF0E7C66),
      title: const Text('CropGuardian'),
      // actions: const [
      //   Padding(
      //     padding: EdgeInsets.only(right: 12),
      //     child: Icon(Icons.menu),
      //   )
      // ],
    );
  }

  // ---------------- HEADER ----------------
  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'AI Crop Diagnosis',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          'एआई फसल निदान\nUpload a photo of your crop for instant AI-powered analysis',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  // ---------------- UPLOAD CARD ----------------
  Widget _buildUploadCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Upload Crop Image',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            height: 160,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                style: BorderStyle.solid,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.upload, size: 40, color: Colors.green),
                  SizedBox(height: 8),
                  Text('Click to upload or drag and drop'),
                  SizedBox(height: 4),
                  Text(
                    'PNG, JPG up to 5MB',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- DESCRIPTION FIELD ----------------
  Widget _buildDescriptionField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Additional Description (Optional)'),
        const SizedBox(height: 8),
        TextField(
          maxLines: 3,
          decoration: InputDecoration(
            hintText:
            'Describe symptoms, location, weather conditions...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  // ---------------- LANGUAGE SELECTOR ----------------
  Widget _buildLanguageSelector() {
    return Row(
      children: [
        _languageButton('English', true),
        const SizedBox(width: 12),
        _languageButton('हिंदी', false),
      ],
    );
  }

  Widget _languageButton(String text, bool selected) {
    return Expanded(
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: selected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.green),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selected ? Colors.white : Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  // ---------------- DIAGNOSE BUTTON ----------------
  Widget _buildDiagnoseButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Diagnose Crop / निदान करें',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  // ---------------- DIAGNOSIS RESULTS ----------------
  Widget _buildDiagnosisResults() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Diagnosis Results',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Center(
          child: Column(
            children: [
              Icon(Icons.bug_report, size: 50, color: Colors.grey),
              SizedBox(height: 8),
              Text('Upload an image to see diagnosis results'),
            ],
          ),
        ),
      ],
    );
  }

  // ---------------- DIAGNOSIS HISTORY ----------------
  Widget _buildDiagnosisHistory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Diagnosis History / निदान इतिहास',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Center(
          child: Text(
            'No diagnosis history yet\nअभी तक कोई निदान इतिहास नहीं',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  // ---------------- FOOTER ----------------
  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0E7C66),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CropGuardian',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Empowering small-scale farmers with AI-powered crop protection.',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 16),
          Text(
            'Contact Us\n+91 9513065382\nsupport@cropguardian.com',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
