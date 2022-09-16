String getTextTimer(int seconds) {
  final int minutes = (seconds / 60).floor();
  final int hours = (minutes / 60).floor();
  final int days = (hours / 24).floor();

  final int remainingSeconds = seconds % 60;
  final int remainingMinutes = minutes % 60;
  final int remainingHours = hours % 24;

  final String secondsText = remainingSeconds.toString().padLeft(2, '0');
  final String minutesText = remainingMinutes.toString().padLeft(2, '0');
  final String hoursText = remainingHours.toString().padLeft(2, '0');

  if (days > 0) {
    return '$days jours $hoursText:$minutesText:$secondsText';
  } else if (hours > 0) {
    return '$hoursText:$minutesText:$secondsText';
  } else if (minutes > 0) {
    return '$minutesText:$secondsText';
  } else {
    return secondsText;
  }
}
