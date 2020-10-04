class StockBrain{

    StockBrain({this.netRevenue, this.costOfRevenue});

    final int netRevenue;
    final int costOfRevenue;

    double _gpm;

    String hitungGPM(){
      _gpm = (netRevenue - costOfRevenue) / netRevenue;
      return _gpm.toStringAsFixed(2);
    }

}