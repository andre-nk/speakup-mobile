import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

/// A collapsible widget for displaying curriculum sections.
///
/// This widget provides a custom expansion tile for curriculum sections with a
/// numbered title, subtitle, and customizable content inside when expanded.
class CustomCollapsible extends StatelessWidget {
  /// The number of the section (e.g., "1", "2").
  final String sectionNumber;

  /// The title of the section.
  final String title;

  /// The descriptive subtitle of the section.
  final String? subtitle;

  /// The list of widgets to display when the section is expanded.
  final List<Widget> children;

  /// Padding around the children when expanded.
  final EdgeInsetsGeometry childrenPadding;

  /// Whether the section is initially expanded.
  final bool initiallyExpanded;

  /// Callback when the expansion state changes.
  final Function(bool)? onExpansionChanged;

  /// Creates a collapsible section widget.
  const CustomCollapsible({
    super.key,
    required this.sectionNumber,
    required this.title,
    this.subtitle,
    required this.children,
    this.childrenPadding = const EdgeInsets.symmetric(vertical: 16.0),
    this.initiallyExpanded = false,
    this.onExpansionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    left: 8.5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      height: 200,
                      width: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    ),
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ExpansionTile(
                    showTrailingIcon: false,
                    tilePadding: const EdgeInsets.symmetric(vertical: 12.0),
                    initiallyExpanded: initiallyExpanded,
                    onExpansionChanged: onExpansionChanged,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child:
                              title.length > 25
                                  ? ShaderMask(
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.white.withOpacity(0),
                                          title.length > 25
                                              ? Colors.white
                                              : Colors.transparent,
                                          Colors.white,
                                          Colors.white.withOpacity(0),
                                        ],
                                        stops: const [0.0, 0.1, 0.85, 1.0],
                                      ).createShader(bounds);
                                    },
                                    blendMode: BlendMode.dstIn,
                                    child: SizedBox(
                                      height: 28,
                                      child: Marquee(
                                        text: title,
                                        style: Theme.of(context).textTheme.titleLarge,
                                        scrollAxis: Axis.horizontal,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        blankSpace: 20.0,
                                        velocity: 35.0,
                                        pauseAfterRound: const Duration(seconds: 2),
                                        startPadding: 10.0,
                                        accelerationDuration: const Duration(seconds: 1),
                                        accelerationCurve: Curves.linear,
                                        decelerationDuration: const Duration(
                                          milliseconds: 500,
                                        ),
                                        decelerationCurve: Curves.easeOut,
                                      ),
                                    ),
                                  )
                                  : Text(
                                    title,
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Theme.of(context).colorScheme.primary,
                          size: 36,
                        ),
                      ],
                    ),
                    subtitle:
                        subtitle != null
                            ? Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(subtitle!),
                            )
                            : null,
                    childrenPadding: childrenPadding,
                    children: children,
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
