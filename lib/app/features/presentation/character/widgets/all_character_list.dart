import 'package:daynex_demo/app/common/models/character_model.dart';
import 'package:daynex_demo/core/extension/padding_extension.dart';
import 'package:daynex_demo/core/extension/radius_extension.dart';
import 'package:flutter/material.dart';

class AllCharacterList extends StatelessWidget {
  final List<CharacterModel> characters;

  const AllCharacterList({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: characters.length,
      separatorBuilder: (_, __) => const Divider(height: 16),
      itemBuilder: (context, index) {
        final character = characters[index];

        return ListTile(
          leading: character.image != null && character.image!.isNotEmpty
              ? ClipRRect(
                  child: Image.network(
                    character.image!,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                )
              : const Icon(Icons.person_outline),
          title: Text(
            character.name,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          subtitle: Text(
            character.house ?? 'Unknown',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        );
      },
    ).allPadding(16).circularRadius(8);
  }
}
