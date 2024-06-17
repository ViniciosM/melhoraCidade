import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:melhoracidade/design_system/colors/vz_colors.dart';
import 'package:melhoracidade/design_system/inputs/vz_mask.dart';
import 'package:melhoracidade/design_system/typography/vz_typography.dart';

enum VZTextFieldType { FIELD, PLACEHOLDER, BORDER }

/// Close Up custom TextField
/// [suffixIcon] Se nulo será substituído por botão que limpa valor do controller
class VZTextField extends StatefulWidget {
  const VZTextField({
    Key? key,
    this.type = VZTextFieldType.FIELD,
    this.focusNode,
    this.controller,
    this.label,
    this.text,
    this.forceText,
    this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.obscureText = false,
    this.suggestion = true,
    this.keyboardType = TextInputType.text,
    this.inputAction = TextInputAction.done,
    this.onAction,
    this.enabled = true,
    this.maxLength,
    this.counterText = true,
    this.mask,
    this.maxLines = 1,
    this.hintStyle,
    this.limitLength = -1,
    this.inputFormatters,
    this.fillColor,
    this.isObrigatorio = false,
    this.readOnly,
  }) : super(key: key);

  final VZTextFieldType type;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool suggestion;
  final String? label;
  final String? text;
  final String? forceText;
  final String? hintText;
  final String? errorText;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final ValueChanged<String>? onAction;
  final bool enabled;
  final int? maxLength;
  final bool counterText;
  final VZMask? mask;
  final int? maxLines;
  final TextStyle? hintStyle;
  final int? limitLength;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;
  final bool isObrigatorio;
  final bool? readOnly;

  @override
  State<VZTextField> createState() => _VZTextFieldState();
}

class _VZTextFieldState extends State<VZTextField> {
  late FocusNode _focusNode;
  late TextEditingController _controller;
  late bool hasFocus = false;
  late bool isDispose = true;

  @override
  void initState() {
    super.initState();
    try {
      if ((widget.focusNode != null) || (widget.controller != null)) {
        isDispose = false;
      }
      _focusNode = widget.focusNode ?? FocusNode();
      _controller = widget.controller ?? TextEditingController();

      if (widget.enabled) {
        if (widget.mask != null)
          _controller.text = widget.mask
                  ?.defaultFormat(widget.text ?? widget.forceText ?? '') ??
              widget.text ??
              widget.forceText ??
              '';
        else
          _controller.text = widget.text ?? widget.forceText ?? '';
      }

      _focusNode.addListener(() {
        setState(() {
          hasFocus = _focusNode.hasFocus;
        });
      });
    } catch (err) {
      debugPrint(err.toString());
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(() {});
    if (isDispose) {
      _focusNode.dispose();
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if ((!widget.enabled) || (widget.forceText ?? '').isNotEmpty) {
      if (widget.mask != null)
        _controller.text =
            widget.mask?.defaultFormat(widget.text ?? widget.forceText ?? '') ??
                widget.text ??
                widget.forceText ??
                '';
      else
        _controller.text = widget.text ?? widget.forceText ?? '';
    }

    final defaultInputFormatters = (widget.mask != null)
        ? [
            widget.mask!,
            LengthLimitingTextInputFormatter(widget.limitLength),
          ]
        : [LengthLimitingTextInputFormatter(widget.limitLength)];

    if (widget.inputFormatters != null) {
      widget.inputFormatters!.addAll(defaultInputFormatters);
    }

    Widget getTitleWidget(String label, bool isObrigatorio) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                text: label,
                style: VZTypography.p2_500.copyWith(
                  color: VZColors.g0,
                ),
                children: [
                  if (isObrigatorio)
                    TextSpan(
                      text: ' *',
                      style: VZTypography.p2_500.copyWith(
                        color: VZColors.colorScheme.primary,
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Label
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: RichText(
              text: TextSpan(
                text: widget.label!,
                style: widget.type == VZTextFieldType.PLACEHOLDER
                    ? VZTypography.h2_600.copyWith(color: VZColors.g0)
                    : VZTypography.p2_500.copyWith(color: VZColors.g1),
                children: [
                  if (widget.isObrigatorio)
                    TextSpan(
                      text: ' *',
                      style: VZTypography.p2_500.copyWith(
                        color: VZColors.colorScheme.primary,
                      ),
                    )
                ],
              ),
            ),
          ),

        if (widget.type == VZTextFieldType.PLACEHOLDER) ...[
          TextFormField(
            maxLength: widget.enabled ? widget.maxLength : null,
            readOnly: widget.readOnly ?? false,
            enabled: widget.enabled,
            enableSuggestions: widget.suggestion,
            autocorrect: widget.suggestion,
            focusNode: _focusNode,
            controller: _controller,
            obscureText: widget.obscureText,
            textInputAction: widget.inputAction,
            minLines: 4,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(26, 26, 26, 0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: VZColors.g5,
                ),
              ),
              focusedBorder: widget.readOnly ?? false
                  ? null
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: VZColors.colorScheme.primary,
                      )),
              fillColor: widget.fillColor ??
                  ((widget.enabled ? VZColors.g7 : VZColors.g5)),
              filled: true,
              isDense: true,
              hintText: widget.hintText,
              hintStyle: widget.hintStyle ??
                  VZTypography.p2_500.copyWith(color: VZColors.g2),
              prefixIcon: widget.prefixIcon != null
                  ? SizedBox.fromSize(
                      size: const Size(16, 16),
                      child: widget.prefixIcon,
                    )
                  : null,
              suffixIcon: widget.readOnly ?? false
                  ? null
                  : !hasFocus
                      ? null
                      : widget.suffixIcon != null
                          ? SizedBox.fromSize(
                              size: const Size(16, 16),
                              child: widget.suffixIcon,
                            )
                          : AnimatedOpacity(
                              opacity: _focusNode.hasFocus ? 1 : 0,
                              duration: kThemeChangeDuration,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: VZColors.g1,
                                  size: 16,
                                ),
                                onPressed: _focusNode.hasFocus
                                    ? () {
                                        _controller.clear();
                                        widget.onChanged?.call('');
                                      }
                                    : null,
                              ),
                            ),
            ),
            style: VZTypography.p1_500.copyWith(color: VZColors.g1),
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onAction,
            inputFormatters: (widget.mask != null) ? [widget.mask!] : null,
          ),
        ],

        if ((widget.type == VZTextFieldType.FIELD) ||
            (widget.type == VZTextFieldType.BORDER)) ...[
          TextFormField(
            readOnly: widget.readOnly ?? false,
            maxLength: widget.enabled ? widget.maxLength : null,
            enabled: widget.enabled,
            enableSuggestions: widget.suggestion,
            autocorrect: widget.suggestion,
            focusNode: _focusNode,
            controller: _controller,
            obscureText: widget.obscureText,
            textInputAction: widget.inputAction,
            keyboardType: widget.keyboardType,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              counterText: widget.counterText ? null : '',
              contentPadding: EdgeInsets.fromLTRB(13, 26, 26, 0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: (widget.type == VZTextFieldType.BORDER)
                      ? VZColors.g5
                      : VZColors.g7,
                ),
              ),
              focusedBorder: widget.readOnly ?? false
                  ? null
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: VZColors.colorScheme.primary,
                      )),
              fillColor: widget.fillColor ??
                  ((widget.type == VZTextFieldType.BORDER)
                      ? VZColors.white
                      : (widget.enabled ? VZColors.g7 : VZColors.g5)),
              filled: true,
              isDense: true,
              hintText: widget.hintText,
              hintStyle: widget.hintStyle ??
                  VZTypography.p2_500.copyWith(color: VZColors.g1),
              prefixIcon: widget.prefixIcon != null
                  ? SizedBox.fromSize(
                      size: const Size(16, 16),
                      child: widget.prefixIcon,
                    )
                  : null,
              suffixIcon: widget.readOnly ?? false
                  ? null
                  : !hasFocus
                      ? null
                      : widget.suffixIcon != null
                          ? SizedBox.fromSize(
                              size: const Size(16, 16),
                              child: widget.suffixIcon,
                            )
                          : AnimatedOpacity(
                              opacity: _focusNode.hasFocus ? 1 : 0,
                              duration: kThemeChangeDuration,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: VZColors.g1,
                                  size: 16,
                                ),
                                onPressed: _focusNode.hasFocus
                                    ? () {
                                        _controller.clear();
                                        widget.onChanged?.call('');
                                      }
                                    : null,
                              ),
                            ),
            ),
            style: VZTypography.p1_500.copyWith(color: VZColors.g1),
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onAction,
            inputFormatters: widget.inputFormatters ?? defaultInputFormatters,
          )
        ],

        // Error
        if ((widget.errorText != null) && (!_focusNode.hasFocus))
          Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.warning,
                    color: VZColors.semanticError.color,
                    size: 20,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text(widget.errorText!,
                          style:
                              VZTypography.p1_400.copyWith(color: VZColors.g3)))
                ],
              )),
      ],
    );
  }
}
