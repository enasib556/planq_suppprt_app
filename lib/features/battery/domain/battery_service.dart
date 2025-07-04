/// واجهة موحّدة لخدمة البطارية
abstract class BatteryService {
  /// يولّد التقرير ويُعيد مسار الملف (أو null عند الخطأ)
  Future<String?> generateReport();
}
