part of '../dock_page.dart';

class DockInfoZone extends HookConsumerWidget {
  const DockInfoZone({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Row(
        mainAxisSize: .max,
        children: [
          Flexible(flex: 2, child: DockItemContainer(child: TwoStyleClocks())),
          Flexible(
            flex: 5,
            child: DockItemContainer(child: Container(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
