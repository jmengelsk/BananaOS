.class public final Lcom/android/server/powerstats/BatteryTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBatteryLevel:I

.field public final mBatteryLevelReceiver:Lcom/android/server/powerstats/BatteryTrigger$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    new-instance v0, Lcom/android/server/powerstats/BatteryTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/BatteryTrigger$1;-><init>(Lcom/android/server/powerstats/BatteryTrigger;)V

    iput-object v0, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevelReceiver:Lcom/android/server/powerstats/BatteryTrigger$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_24

    const-string/jumbo v0, "level"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    :cond_24
    return-void
.end method
