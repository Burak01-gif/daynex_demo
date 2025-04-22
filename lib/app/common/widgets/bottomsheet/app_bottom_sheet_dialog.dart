import 'package:daynex_demo/app/common/constants/app_colors.dart';
import 'package:daynex_demo/app/common/get_it/get_it.dart';
import 'package:daynex_demo/app/common/router/app_router.dart';
import 'package:daynex_demo/app/common/widgets/buttons/app_button.dart';
import 'package:daynex_demo/app/common/widgets/divider/app_divider.dart';
import 'package:daynex_demo/app/common/widgets/burak/app_burak.dart';
import 'package:daynex_demo/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class AppBottomSheetDialogButtonData<T> {
  final String title;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final T? value;

  const AppBottomSheetDialogButtonData({
    required this.title,
    this.foregroundColor,
    this.backgroundColor,
    this.value,
  });
}

class AppBottomSheetDialog extends StatelessWidget {
  const AppBottomSheetDialog({
    super.key,
    this.content,
    this.positiveButtonDatas,
    required this.negativeButtonData,
  });

  final Widget? content;
  final List<AppBottomSheetDialogButtonData>? positiveButtonDatas;
  final AppBottomSheetDialogButtonData negativeButtonData;

  static Future<T?> _show<T>({
    required BuildContext context,
    required AppBottomSheetDialog dialog,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => dialog,
    );
  }

  /// This is a factory constructor that creates a [AppBottomSheetDialog] with a string content.
  /// The dialog will have a content of type [Text] with the given [content] string.
  /// The dialog will have a list of positive buttons with the given [positiveButtonDatas].
  /// The dialog will have a negative button with the given [negativeButtonData].
  static Future<T?> showWithStringContent<T>({
    required BuildContext context,
    required String content,
    required List<AppBottomSheetDialogButtonData> positiveButtonDatas,
    required AppBottomSheetDialogButtonData negativeButtonData,
    double? fontSize,
    TextAlign? alignment,
  }) {
    return _show(
      context: context,
      dialog: AppBottomSheetDialog(
        content: Text(
          content,
          textAlign: alignment,
          style: context.theme.textTheme.titleMedium?.copyWith(
            color: AppColors.arsenic.withValues(alpha: 0.6),
            fontWeight: FontWeight.w400,
            fontSize: fontSize,
          ),
        ),
        positiveButtonDatas: positiveButtonDatas,
        negativeButtonData: negativeButtonData,
      ),
    );
  }

  /// This is a factory constructor that creates a [AppBottomSheetDialog] with a delete button.
  /// The delete button will call the [AppRouter.popForced] method with a value of `true` when pressed.
  /// The cancel button will call the [AppRouter.popForced] method with a value of `false` when pressed.
  static Future<bool?> showDelete({
    required BuildContext context,
  }) {
    return showWithStringContent(
      context: context,
      content: "Are you sure you want to do this?",
      positiveButtonDatas: [
        const AppBottomSheetDialogButtonData(
          title: "Delete",
          value: true,
        )
      ],
      negativeButtonData: const AppBottomSheetDialogButtonData(
        title: "Cancel",
        value: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.cultured.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (content != null) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Center(child: content),
                    ),
                  ],
                  if (content != null && positiveButtonDatas != null) ...[
                    const AppDivider(),
                    ...positiveButtonDatas!.map(
                      (e) => GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          getIt.get<AppRouter>().popForced(e.value);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 18,
                          ),
                          child: Text(
                            e.title,
                            textAlign: TextAlign.center,
                            style: context.theme.textTheme.titleLarge?.copyWith(
                              color: e.foregroundColor ?? AppColors.hogwartsGold,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const Burak(12),
            AppButton(
              minimumSize: const Size(double.infinity, 61),
              backgroundColor:
                  negativeButtonData.backgroundColor ?? AppColors.white,
              onPressed: () {
                getIt.get<AppRouter>().popForced(negativeButtonData.value);
              },
              widget: Text(
                negativeButtonData.title,
                style: context.theme.textTheme.titleLarge?.copyWith(
                  color: negativeButtonData.foregroundColor ?? AppColors.hogwartsGold,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
