class FeeData{
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;

  FeeData({required this.receiptNo, required this.month, required this.date, required this.paymentStatus, required this.totalAmount});
}

List<FeeData> fee = [
  FeeData(receiptNo: '90871', month: 'November', date: '8 Nov 2023', paymentStatus: 'Pending', totalAmount: '₱2,000',),
  FeeData(receiptNo: '90870', month: 'September', date: '8 Sep 2023', paymentStatus: 'Paid', totalAmount: '₱2,000'),
  FeeData(receiptNo: '908869', month: 'August', date: '8 Aug 2023', paymentStatus: 'Paid', totalAmount: '₱2,000'),
];
