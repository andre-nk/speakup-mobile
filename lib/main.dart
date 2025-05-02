import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/firebase_options.dart';
import 'package:speakup_final/model/session/session.dart';
import 'package:speakup_final/repository/auth/auth_repository.dart';
import 'package:speakup_final/theme/app_theme.dart';
import 'package:speakup_final/view/screens/auth/sign_in_page.dart';
import 'package:speakup_final/view/screens/onboarding/english_mastery_picker_page.dart';
import 'package:speakup_final/view/screens/onboarding/goal_picker_page.dart';
import 'package:speakup_final/view/screens/onboarding/native_language_picker_page.dart';
import 'package:speakup_final/view/screens/onboarding_session/onboarding_session_page.dart';
import 'package:speakup_final/view/screens/session_result/session_result_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Gemini.init(apiKey: 'AIzaSyCbfpX1QtbZ_cr5x_kqt12Xj4IOoar0yso');

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
                // final session = Session(
                //   transcript: "I grabbed my coat and sold my car yesterday.",
                //   id: DateTime.now().millisecondsSinceEpoch.toString(),
                //   timestamp: "2025-05-02T16:54:42.080Z",
                //   exerciseID: "",
                //   audioURL: "", // This wasn't provided in the JSON
                //   filler: FillerResult(
                //     chunks: [
                //       FillerChunk(text: "It's", timestamp: [0, 0.32]),
                //       FillerChunk(text: "time", timestamp: [0.4, 0.55]),
                //       FillerChunk(text: "to", timestamp: [0.55, 0.89]),
                //       FillerChunk(text: "dance", timestamp: [0.89, 1.03]),
                //       FillerChunk(text: "on", timestamp: [1.03, 1.41]),
                //       FillerChunk(text: "stage", timestamp: [1.41, 1.63]),
                //     ],
                //   ),
                //   grammar: GrammarResult(
                //     sentencePairs: [
                //       SentencePair(
                //         corrected: "I grabbed my coat and sold my car yesterday.",
                //         distance: 1,
                //         original: " I grabbed my coat and sell my car yesterday.",
                //       ),
                //     ],
                //     stats: GrammarStats(
                //       averageDistance: 1,
                //       sentencesCorrected: 1,
                //       totalSentences: 1,
                //     ),
                //   ),
                //   pitchResult: PitchResult(
                //     pitchAnalysis: PitchAnalysis(
                //       fluctuationScore: 0.8220514779596471,
                //       isMonotone: false,
                //       pitchRange: 121.26409912109375,
                //     ),
                //     pitchFluctuation: [
                //       PitchEntry(pitch: 284.39239501953125, timestamp: 0),
                //       PitchEntry(pitch: 184.39239501953125, timestamp: 20),
                //       PitchEntry(pitch: 284.39239501953125, timestamp: 40),
                //       PitchEntry(pitch: 184.39239501953125, timestamp: 60),
                //       PitchEntry(pitch: 284.39239501953125, timestamp: 120),
                //     ],
                //     silentRatio: 0.1759656652360515,
                //   ),
                //   formality: FormalityResult(
                //     formalityScore: 0.142,
                //     formalPercent: 10,
                //     informalPercent: 90,
                //     classification: "Your speech is 10% formal and 90% informal.",
                //   ),
                // );

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
              orElse: () => const SignInPage(),
            );
          },
        ),
      ),
    );
  }
}
