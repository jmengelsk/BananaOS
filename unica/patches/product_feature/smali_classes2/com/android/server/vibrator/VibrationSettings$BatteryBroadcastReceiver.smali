.class final Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    sget-object p1, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    const-string/jumbo p1, "plugged"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_20

    const/4 v0, 0x1

    :cond_20
    :try_start_20
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    monitor-exit p2

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    return-void
.end method
