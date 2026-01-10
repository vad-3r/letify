// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

class PasswordChangeWidget extends StatefulWidget {
  const PasswordChangeWidget({
    super.key,
    this.width,
    this.height,
    required this.onSuccess,
  });

  final double? width;
  final double? height;
  final VoidCallback onSuccess;

  @override
  State<PasswordChangeWidget> createState() => _PasswordChangeWidgetState();
}

class _PasswordChangeWidgetState extends State<PasswordChangeWidget> {
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _currentPasswordFocusNode = FocusNode();
  final _newPasswordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();

  bool _showCurrentPassword = false;
  bool _showNewPassword = false;
  bool _showConfirmPassword = false;
  bool _isLoading = false;

  String _message = '';
  bool _isSuccess = false;

  @override
  void initState() {
    super.initState();
    _currentPasswordController.addListener(() => setState(() {}));
    _newPasswordController.addListener(() => setState(() {}));
    _confirmPasswordController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    _currentPasswordFocusNode.dispose();
    _newPasswordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> get passwordRequirements => [
        {
          'text': 'At least 8 characters',
          'met': _newPasswordController.text.length >= 8,
        },
        {
          'text': 'One uppercase letter',
          'met': _newPasswordController.text.contains(RegExp(r'[A-Z]')),
        },
        {
          'text': 'One lowercase letter',
          'met': _newPasswordController.text.contains(RegExp(r'[a-z]')),
        },
        {
          'text': 'One number',
          'met': _newPasswordController.text.contains(RegExp(r'\d')),
        },
        {
          'text': 'One special character',
          'met': _newPasswordController.text
              .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')),
        },
      ];

  bool get isValidPassword =>
      passwordRequirements.every((req) => req['met'] == true);

  bool get passwordsMatch =>
      _newPasswordController.text == _confirmPasswordController.text &&
      _newPasswordController.text.isNotEmpty;

  Future<void> _changePassword() async {
    if (_isLoading) return;

    setState(() {
      _message = '';
      _isSuccess = false;
    });

    if (_currentPasswordController.text.isEmpty ||
        _newPasswordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      setState(() {
        _message = 'Please fill in all fields';
      });
      return;
    }

    if (!isValidPassword) {
      setState(() {
        _message = 'New password does not meet requirements';
      });
      return;
    }

    if (!passwordsMatch) {
      setState(() {
        _message = 'New passwords do not match';
      });
      return;
    }

    if (_currentPasswordController.text == _newPasswordController.text) {
      setState(() {
        _message = 'New password must be different from current password';
      });
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null || user.email == null) {
        throw Exception('User is not signed in');
      }

      final credential = EmailAuthProvider.credential(
        email: user.email!,
        password: _currentPasswordController.text,
      );

      await user.reauthenticateWithCredential(credential);
      await user.updatePassword(_newPasswordController.text);

      if (!mounted) return;
      setState(() {
        _message = 'Password changed successfully!';
        _isSuccess = true;
      });

      Future.delayed(const Duration(milliseconds: 1500), () {
        if (!mounted) return;
        setState(() {
          _currentPasswordController.clear();
          _newPasswordController.clear();
          _confirmPasswordController.clear();
          _isLoading = false;
        });
        widget.onSuccess();
      });
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;
      setState(() {
        _message = switch (e.code) {
          'wrong-password' => 'Current password is incorrect',
          'weak-password' => 'The new password is too weak',
          'requires-recent-login' => 'Please log out and back in first',
          'user-not-found' => 'No user found with this email',
          'too-many-requests' => 'Too many attempts. Try again later',
          'network-request-failed' => 'Check your network connection',
          _ => 'Error: ${e.message ?? 'Unknown error'}',
        };
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _message = 'Unexpected error: ${e.toString()}';
        _isLoading = false;
      });
    }
  }

  Widget _buildPasswordField({
    required String label,
    required TextEditingController controller,
    required FocusNode focusNode,
    required bool showPassword,
    required VoidCallback onToggle,
    required String hint,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: FlutterFlowTheme.of(context)
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w500)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          obscureText: !showPassword,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: FlutterFlowTheme.of(context)
                .bodyMedium
                ?.copyWith(color: Colors.grey[600]),
            prefixIcon: Icon(Icons.lock_outline,
                color: FlutterFlowTheme.of(context).secondaryText),
            suffixIcon: IconButton(
              icon: Icon(
                showPassword ? Icons.visibility_off : Icons.visibility,
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
              onPressed: onToggle,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: FlutterFlowTheme.of(context).alternate),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary, width: 2),
            ),
            filled: true,
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            contentPadding: const EdgeInsets.all(16),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: const Color(0x1A000000),
                    blurRadius: 20,
                    offset: const Offset(0, 10)),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color:
                        FlutterFlowTheme.of(context).primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Icon(Icons.lock_outline,
                      size: 32, color: FlutterFlowTheme.of(context).primary),
                ),
                const SizedBox(height: 16),
                Text('Change Password',
                    style: FlutterFlowTheme.of(context)
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text('Update your account password',
                    style: FlutterFlowTheme.of(context).bodyMedium?.copyWith(
                        color: FlutterFlowTheme.of(context).secondaryText)),
                const SizedBox(height: 32),
                if (_message.isNotEmpty)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: _isSuccess
                          ? const Color(0xFFE8F5E8)
                          : const Color(0xFFFFE8E8),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: _isSuccess
                            ? const Color(0xFF4CAF50)
                            : const Color(0xFFFF5252),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(_isSuccess ? Icons.check_circle : Icons.error,
                            color: _isSuccess
                                ? const Color(0xFF4CAF50)
                                : const Color(0xFFFF5252),
                            size: 20),
                        const SizedBox(width: 8),
                        Expanded(
                            child: Text(_message,
                                style: TextStyle(
                                    color: _isSuccess
                                        ? const Color(0xFF2E7D32)
                                        : const Color(0xFFD32F2F)))),
                      ],
                    ),
                  ),
                _buildPasswordField(
                  label: 'Current Password',
                  controller: _currentPasswordController,
                  focusNode: _currentPasswordFocusNode,
                  showPassword: _showCurrentPassword,
                  onToggle: () => setState(
                      () => _showCurrentPassword = !_showCurrentPassword),
                  hint: 'Enter your current password',
                ),
                const SizedBox(height: 16),
                _buildPasswordField(
                  label: 'New Password',
                  controller: _newPasswordController,
                  focusNode: _newPasswordFocusNode,
                  showPassword: _showNewPassword,
                  onToggle: () =>
                      setState(() => _showNewPassword = !_showNewPassword),
                  hint: 'Enter your new password',
                ),
                const SizedBox(height: 16),
                if (_newPasswordController.text.isNotEmpty)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password Requirements:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.w500)),
                        const SizedBox(height: 8),
                        ...passwordRequirements.map((req) => Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Row(
                                children: [
                                  Icon(req['met'] ? Icons.check : Icons.close,
                                      size: 16,
                                      color: req['met']
                                          ? const Color(0xFF4CAF50)
                                          : const Color(0xFFFF5252)),
                                  const SizedBox(width: 8),
                                  Expanded(
                                      child: Text(req['text'],
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: req['met']
                                                  ? const Color(0xFF2E7D32)
                                                  : const Color(0xFFD32F2F)))),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                const SizedBox(height: 16),
                _buildPasswordField(
                  label: 'Confirm New Password',
                  controller: _confirmPasswordController,
                  focusNode: _confirmPasswordFocusNode,
                  showPassword: _showConfirmPassword,
                  onToggle: () => setState(
                      () => _showConfirmPassword = !_showConfirmPassword),
                  hint: 'Confirm your new password',
                ),
                const SizedBox(height: 8),
                if (_confirmPasswordController.text.isNotEmpty &&
                    _newPasswordController.text.isNotEmpty)
                  Row(
                    children: [
                      Icon(passwordsMatch ? Icons.check : Icons.close,
                          size: 16,
                          color: passwordsMatch
                              ? const Color(0xFF4CAF50)
                              : const Color(0xFFFF5252)),
                      const SizedBox(width: 8),
                      Text(
                          passwordsMatch
                              ? 'Passwords match'
                              : 'Passwords do not match',
                          style: TextStyle(
                              fontSize: 12,
                              color: passwordsMatch
                                  ? const Color(0xFF2E7D32)
                                  : const Color(0xFFD32F2F))),
                    ],
                  ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _isLoading ||
                          !isValidPassword ||
                          !passwordsMatch ||
                          _currentPasswordController.text.isEmpty
                      ? null
                      : _changePassword,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                    backgroundColor: _isLoading
                        ? FlutterFlowTheme.of(context).secondaryText
                        : FlutterFlowTheme.of(context).primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 2,
                  ),
                  child: _isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white)),
                        )
                      : Text('Change Password',
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
