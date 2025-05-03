import 'package:sanity_client/client.dart';
import 'package:sanity_client/config.dart';

final client = SanityClient(
  SanityConfig(
    projectId: 't5jntz0c',
    dataset: 'production',
    token: '',
    apiVersion: 'v2024-02-16',
    useCdn: true,
  ),
);
