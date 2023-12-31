// ignore_for_file: max_lines_for_file, prefer_underscore_for_unused_callback_parameters

import 'package:deps/features/features.dart';
import 'package:deps/packages/reactive_forms.dart';
import 'package:deps/packages/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../others/fab_styled_text.dart';

part '_atoms/counter.dart';

class FabReactiveTextfield extends StatelessWidget {
  const FabReactiveTextfield({
    required this.formControl,
    required this.labelText,
    this.autofocus = false,
    this.borderRadius,
    this.validationMessages,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.hasCounter = false,
    this.hintText = '',
    this.extraInfo,
    this.maxLines = 1,
    this.minLines,
    this.inputFormatters,
    this.suffixIcon,
    this.onTap,
    this.readOnly = false,
    this.staticValue,
    this.showErrors = true,
    this.reverseFocusColor = false,
    this.floatingLabelBehavior,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction,
    super.key,
  });

  final Map<String, String Function(Object messages)>? validationMessages;
  final bool autofocus;
  final BorderRadius? borderRadius;
  final String? extraInfo;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final FormControl formControl;
  final bool hasCounter;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String labelText;
  final int maxLines;
  final int? minLines;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool showErrors;
  final String? staticValue;
  final Widget? suffixIcon;
  final TextCapitalization textCapitalization;
  final ValueChanged<FormControl<Object?>>? onChanged;
  final bool reverseFocusColor;
  final ValueChanged<FormControl<Object?>>? onSubmitted;
  final TextInputAction? textInputAction;

  Map<String, String Function(Object messages)>? get _validationMessages => {
        ValidationMessage.minLength: (error) => $.tr.design.widgets.reactives.fabReactiveTextfield.minLength(
              field: labelText.capitalize(),
              count: (error as Map)['requiredLength'].toString(),
            ),
        ValidationMessage.maxLength: (error) => $.tr.design.widgets.reactives.fabReactiveTextfield.maxLength(
              field: labelText.capitalize(),
              count: (error as Map)['requiredLength'].toString(),
            ),
        ValidationMessage.required: (_) => $.tr.design.widgets.reactives.fabReactiveTextfield.required(
              field: labelText.capitalize(),
            ),
        ValidationMessage.email: (_) => $.tr.design.widgets.reactives.fabReactiveTextfield.email(
              field: labelText.capitalize(),
            ),
        if (validationMessages != null) ...validationMessages!,
      };

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context, _, __) {
        //final isValid = formControl.valid;
        //final isRequired = formControl.validators.any((v) => v is RequiredValidator);
        final minLength = formControl.validators.whereType<MinLengthValidator>().map((v) => v.minLength).firstOrNull;
        final maxLength = formControl.validators.whereType<MaxLengthValidator>().map((v) => v.maxLength).firstOrNull;

        return Column(
          children: [
            ReactiveTextField(
              onSubmitted: onSubmitted,
              textInputAction: textInputAction,
              onChanged: onChanged,
              autofocus: autofocus,
              controller: staticValue != null ? TextEditingController(text: staticValue) : null,
              readOnly: readOnly,
              onTap: (_) => onTap?.call(),
              maxLength: maxLength,
              maxLines: maxLines,
              minLines: minLines,
              keyboardType: keyboardType,
              textCapitalization: textCapitalization,
              inputFormatters: inputFormatters,
              formControl: formControl,
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
              ),
              buildCounter: (
                _, {
                required currentLength,
                required isFocused,
                maxLength,
              }) {
                return Counter(hasCounter, currentLength, minLength, maxLength);
              },
              validationMessages: _validationMessages,
              showErrors:
                  showErrors ? (control) => control.invalid && (control.touched || control.dirty) : (_) => false,
            ),
            if (extraInfo != null)
              Positioned(
                left: 0,
                bottom: 0,
                width: context.mqWidth,
                child: Row(
                  children: [
                    const Icon(Icons.info),
                    Expanded(
                      child: PaddingLeft.xs(
                        child: Text(
                          extraInfo!,
                          style: context.textTheme.titleMedium?.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
