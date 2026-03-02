part of '../dock_page.dart';

class DockInfoZone extends HookConsumerWidget {
  const DockInfoZone({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: .max,
      children: [
        Flexible(flex: 2, child: TwoStyleClocks()),
        Flexible(
          flex: 5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .end,
                children: [
                  ConnectStateContainer(),
                  const SizedBox(width: 8),
                  IconButton.filled(
                    onPressed: () => context.go(RoutePath.sendCode.path),
                    icon: Icon(Icons.exit_to_app_rounded),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(child: DockItemContainer(child: SizedBox.expand())),
            ],
          ),
        ),
      ],
    );
  }
}
