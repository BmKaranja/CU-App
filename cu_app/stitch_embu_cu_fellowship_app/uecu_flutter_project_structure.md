# UECU App - Flutter Project Structure

This structure follows Flutter best practices, organizing the app by feature and utilizing the BLoC or Provider pattern for state management, tailored for your dark spiritual theme.

```text
uecu_app/
├── assets/
│   ├── images/
│   │   └── logo_uecu.png            # Cleaned logo (IMAGE_16)
│   └── icons/                       # Custom spiritual & nav icons
├── lib/
│   ├── core/                        # Cross-cutting concerns
│   │   ├── constants/               # API endpoints, string constants
│   │   ├── theme/
│   │   │   ├── app_colors.dart      # Gold (#D4AF37) & Dark (#10141a)
│   │   │   └── app_theme.dart       # ThemeData with Noto Serif config
│   │   └── utils/                   # Helpers & validators
│   ├── shared/                      # Reusable UI components
│   │   ├── widgets/
│   │   │   ├── uecu_app_bar.dart    # Custom centered AppBar
│   │   │   ├── uecu_nav_bar.dart    # BottomNavigationBar implementation
│   │   │   └── gold_button.dart     # Themed action buttons
│   │   └── layouts/
│   │       └── mobile_shell.dart    # Scaffold wrapper with Nav
│   ├── features/                    # Domain-driven features
│   │   ├── auth/
│   │   │   ├── screens/login_screen.dart
│   │   │   └── widgets/login_form.dart
│   │   ├── home/
│   │   │   └── screens/home_screen.dart
│   │   ├── events/
│   │   │   ├── screens/events_screen.dart
│   │   │   ├── screens/registration_screen.dart
│   │   │   └── widgets/event_card.dart
│   │   ├── library/
│   │   │   ├── screens/materials_screen.dart
│   │   │   └── widgets/material_item.dart
│   │   └── bible_study/
│   │       ├── screens/study_groups_screen.dart
│   │       └── widgets/group_card.dart
│   ├── main.dart                    # App entry point
│   └── routes.dart                  # Navigation routing map
├── pubspec.yaml                     # Dependencies (google_fonts, etc.)
└── README.md
```

### Flutter Implementation Details:
- **Typography:** Uses the `google_fonts` package to implement **Noto Serif** as defined in your design system.
- **Theming:** The `app_theme.dart` file centralizes the `ColorScheme.dark` configuration, ensuring all widgets inherit the gold-on-dark aesthetic automatically.
- **Navigation:** Implements a consistent `Scaffold` with a custom `bottomNavigationBar` for the Home, Materials, Bible Study, and Profile sections.
- **Assets:** The `assets/` section in `pubspec.yaml` is pre-configured to include your high-fidelity spiritual logo.