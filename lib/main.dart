import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/app/intl/cubit/intl_cubit_cubit.dart';
import 'package:speakup_final/firebase_options.dart';
import 'package:speakup_final/repository/auth/auth_repository.dart';
import 'package:speakup_final/theme/app_theme.dart';
import 'package:speakup_final/view/screens/auth/sign_in_page.dart';
import 'package:speakup_final/view/screens/onboarding/english_mastery_picker_page.dart';
import 'package:speakup_final/view/screens/onboarding/goal_picker_page.dart';
import 'package:speakup_final/view/screens/onboarding/native_language_picker_page.dart';
import 'package:speakup_final/view/screens/onboarding_session/onboarding_session_page.dart';
import 'package:speakup_final/view/screens/wrapper/wrapper_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Gemini.init(apiKey: '');

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit(AuthRepository())..getCurrentUser()),
        BlocProvider(create: (context) => IntlCubitCubit()),
      ],
      child: BlocBuilder<IntlCubitCubit, IntlCubitState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'SpeakUp Final',
            theme: AppTheme.lightTheme(),
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              FlutterI18nDelegate(
                translationLoader: FileTranslationLoader(
                  fallbackFile: context.watch<IntlCubitCubit>().state.maybeWhen(
                    set: (value) {
                      if(value == 'en') {
                        return 'en';
                      } else if (value == 'es') {
                        return 'es';
                      } else if (value == 'id') {
                        return 'id';
                      } else if (value == 'ja') {
                        return 'ja';
                      } else if (value == 'zh') {
                        return 'zh';
                      } else {
                        return 'en';
                      }
                    },
                    orElse: () => 'en',
                  ),
                  basePath: 'assets/i18n',
                  useCountryCode: true,
                ),
                missingTranslationHandler: (key, locale) {
                  Logger().e('Missing translation: // for locale: ');
                },
              ),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('es', 'ES'),
              Locale('id', 'ID'),
              Locale('ja', 'JP'),
              Locale('zh', 'CN'),
            ],
            home: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  authenticated: (user) {
                    if (user.nativeLanguage == null) {
                      return const NativeLanguagePickerPage();
                    } else if (user.englishMastery == null) {
                      return const EnglishMasteryPickerPage();
                    } else if (user.goal == "") {
                      return const GoalPickerPage();
                    } else {
                      return OnboardingSessionPage();
                    }
                  },
                  loading:
                      () => const Scaffold(
                        body: Center(child: CircularProgressIndicator()),
                      ),
                  orElse: () => const SignInPage(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
