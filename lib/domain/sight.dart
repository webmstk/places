import 'package:places/assets/app_strings.dart';

/// Тип достопримечательности
enum SightType {
  place(AppStrings.sightTypePlace),
  museum(AppStrings.sightTypeMuseum),
  tradingArea(AppStrings.sightTypeTradingArea),
  garden(AppStrings.sightTypeGarden);

  const SightType(this.string);
  final String string;
}

/// Достопримечательность
class Sight {
  final String name;
  final double lat;
  final double lon;
  final String url;
  final String details;
  final SightType type;
  final String? visitingHours;

  /// Конструктор достопримечательности
  const Sight({
    required this.name,
    required this.lat,
    required this.lon,
    required this.url,
    required this.details,
    required this.type,
    this.visitingHours = '',
  });
}
