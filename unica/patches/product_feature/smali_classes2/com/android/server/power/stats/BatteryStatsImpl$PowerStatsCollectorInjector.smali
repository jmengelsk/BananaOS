.class public final Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

.field public mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

.field public mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public final getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->mDefaultPowerStatsThrottlePeriod:Ljava/lang/Long;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
