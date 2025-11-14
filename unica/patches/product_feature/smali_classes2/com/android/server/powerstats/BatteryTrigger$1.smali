.class public final Lcom/android/server/powerstats/BatteryTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/BatteryTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/BatteryTrigger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    const-string/jumbo p1, "level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    iget v1, p2, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    if-ge p1, v1, :cond_28

    iget-object p2, p2, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_28
    iget-object p0, p0, Lcom/android/server/powerstats/BatteryTrigger$1;->this$0:Lcom/android/server/powerstats/BatteryTrigger;

    iput p1, p0, Lcom/android/server/powerstats/BatteryTrigger;->mBatteryLevel:I

    return-void
.end method
