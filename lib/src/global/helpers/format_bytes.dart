import 'dart:math';

String formatBytes(BigInt bytes, {int decimals = 2}) {
  if (bytes <= BigInt.zero) return "0 B";
  
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB"];
  
  // Use double for scale calculation
  double bytesDouble = bytes.toDouble();
  int i = (log(bytesDouble) / log(1024)).floor();
  i = i.clamp(0, suffixes.length - 1);
  
  // Calculate the converted value
  double value = bytesDouble / pow(1024, i);
  
  // Clean up formatting (hide .0 if not needed)
  String formattedValue = value.toStringAsFixed(
    value.truncateToDouble() == value ? 0 : decimals
  );
  
  return "$formattedValue ${suffixes[i]}";
}
