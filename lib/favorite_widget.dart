// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutter_application_1/favorite_change_notifier.dart';
import 'package:provider/provider.dart';

class FavoriteIconWidget extends StatefulWidget {
  const FavoriteIconWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteIconWidgetState createState() => _FavoriteIconWidgetState();
}

class _FavoriteIconWidgetState extends State<FavoriteIconWidget> {
  late bool _isFavorited;

  // ignore: unused_element, no_leading_underscores_for_local_identifiers
  void _toggleFavorite(FavoriteChangeNotifier _notifier) {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
      _notifier.isFavorited = _isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    FavoriteChangeNotifier _notifier =
        Provider.of<FavoriteChangeNotifier>(context);
    _isFavorited = _notifier.isFavorited;
    return IconButton(
      onPressed: () => _toggleFavorite(_notifier),
      icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
      color: Colors.red,
    );
  }
}

class FavoriteTextWidget extends StatefulWidget {
  const FavoriteTextWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteTextWidgetState createState() => _FavoriteTextWidgetState();
}

class _FavoriteTextWidgetState extends State<FavoriteTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteChangeNotifier>(
        builder: (context, notifier, _) =>
            Text(notifier.favoriteCount.toString()));
  }
}
