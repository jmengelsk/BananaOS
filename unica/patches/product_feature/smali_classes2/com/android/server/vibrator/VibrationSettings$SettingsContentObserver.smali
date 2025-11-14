.class final Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    sget-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method
