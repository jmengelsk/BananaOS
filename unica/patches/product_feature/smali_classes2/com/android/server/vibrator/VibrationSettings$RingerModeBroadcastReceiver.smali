.class final Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    sget-object p2, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    :cond_19
    return-void
.end method
