class Bep53 {
  static List<String> composeRange(List<int> range) {
    return range.asMap().entries.fold<List<List<int>>>([], (acc, cur) {
      if (cur.key == 0 || cur.value != range[cur.key - 1] + 1) acc.add([]);
      acc[acc.length - 1].add(cur.value);
      return acc;
    }).map((cur) {
      return cur.length > 1 ? '${cur[0]}-${cur[cur.length - 1]}' : '${cur[0]}';
    }).toList();
  }

  static List<int> parseRange(List<String> range) {
    List<int> generateRange(int start, [int? end]) => List.generate(
          (end ?? start) - start + 1,
          (idx) => idx + start,
        );

    return range.fold<List<int>>([], (acc, cur) {
      final r = cur.split('-').map((cur) => int.parse(cur));
      return [...acc, ...generateRange(r.first, r.last)];
    });
  }
}
