class CryptoCoin {
  final String name;
  final num priceInUSD;
  final String imageUrl;

  CryptoCoin({
    required this.priceInUSD,
    required this.imageUrl,
    required this.name,
  });
}

class CryptoCoinDetal {
  final String name;
  final num priceInUSD;
  final String imageUrl;
  final String toSymbol;
  final DateTime lastUpdate;
  final String high24Hours;
  final String min24Hours;

  CryptoCoinDetal(
      {required this.name,
      required this.priceInUSD,
      required this.imageUrl,
      required this.toSymbol,
      required this.lastUpdate,
      required this.high24Hours,
      required this.min24Hours});
}
