# My Life

Flutter project using feature-based structure and reusable clean code.

## Feature Folder Pattern

Create each page as one feature:

```text
lib/
  core/
    utility/
      appcolor/appcolor.dart
      imagepath/imagepath.dart
      icon_path/iconpath.dart
      logger/logger.dart
  feature/
    page_name/
      controller/
        page_name_controller.dart
      res/
        data_model/
          page_name_model.dart
        page_name_res.dart
      screen/
        page_name_screen.dart
      widgets/
        page_name_header.dart
        page_name_card.dart
```

## Clean Code Rules

- Use reusable widgets for repeated UI blocks.
- Keep one file between `220` and `300` lines. If it grows, split into `widgets/`.
- Keep business logic in `controller/`.
- Keep screen files focused on layout + widget composition.
- Keep feature-specific models/constants in `res/`.
- Use `appcolor.dart` for all colors (no hardcoded colors in screens/widgets).
- Use `imagepath.dart` and `iconpath.dart` for all asset paths.

## Naming Rules

- Folder name: `snake_case` (example: `bottom_navbar`)
- Screen file: `<page_name>_screen.dart`
- Controller file: `<page_name>_controller.dart`
- Widget files: small and purpose-based (`profile_card.dart`, `stats_tile.dart`)

## Goal

Build maintainable Flutter modules where UI, logic, and resources are separated clearly and easy to scale.
# my_life_app
