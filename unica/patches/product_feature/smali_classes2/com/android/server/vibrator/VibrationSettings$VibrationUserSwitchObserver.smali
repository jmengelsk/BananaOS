.class final Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    sget-object v1, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method
