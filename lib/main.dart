import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/firebase_options.dart';
import 'package:speakup_final/repository/auth/auth_repository.dart';
import 'package:speakup_final/theme/app_theme.dart';
import 'package:speakup_final/view/screens/auth/sign_in_page.dart';
import 'package:speakup_final/view/screens/onboarding/english_mastery_picker_page.dart';
import 'package:speakup_final/view/screens/onboarding/goal_picker_page.dart';
import 'package:speakup_final/view/screens/onboarding/native_language_picker_page.dart';
import 'package:speakup_final/view/screens/wrapper/wrapper_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthRepository())..getCurrentUser(),
      child: MaterialApp(
        title: 'SpeakUp Final',
        theme: AppTheme.lightTheme(),
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          FlutterI18nDelegate(
            translationLoader: FileTranslationLoader(
              fallbackFile: 'en',
              basePath: 'assets/i18n',
              useCountryCode: false,
            ),
            missingTranslationHandler: (key, locale) {
              Logger().e('Missing translation: $key for locale: $locale');
            },
          ),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en')],
        home: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state.maybeWhen(
              authenticated: (user) {
                if(user.nativeLanguage == null) {
                  return const NativeLanguagePickerPage();
                } else if (user.englishMastery == null) {
                  return const EnglishMasteryPickerPage();
                } else if (user.goal == null) {
                  return const GoalPickerPage();
                } else {
                  return const WrapperPage();
                }
              },
              orElse: () => const SignInPage(),
            );
          },
        ),
      ),
    );
  }
}
