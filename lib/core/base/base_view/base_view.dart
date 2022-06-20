import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  final T? viewModel;
  final Widget Function(BuildContext context, T value)? onPageBuilder;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;

  const BaseView({
    Key? key,
    required this.viewModel,
    required this.onPageBuilder,
    this.onModelReady,
    this.onDispose,
  }) : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> with WidgetsBindingObserver {
  dynamic subscription;
  dynamic internetStatus;

  // * LIFECYCLE CHANGE CONTROL
  @override
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    subscription = Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) {
        setState(
          () {
            // debugPrint(result.toString());
            internetStatus = result;
          },
        );
      },
    );
    if (widget.onModelReady != null) widget.onModelReady!(widget.viewModel);
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder!(context, widget.viewModel);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
    if (widget.onDispose != null) widget.onDispose!();
  }
}
