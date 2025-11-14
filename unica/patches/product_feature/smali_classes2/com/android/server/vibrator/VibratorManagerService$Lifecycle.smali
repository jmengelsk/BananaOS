.class public Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mService:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_a

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->systemReady()V

    return-void

    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3e

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/vibrator/VirtualVibSoundHelper;

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p1, v0, v1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/vibrator/VibratorController;->mSupportFoldState:Z

    if-nez p1, :cond_31

    goto :goto_3e

    :cond_31
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$3;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final onStart()V
    .registers 4

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$Injector;

    invoke-direct {v2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    const-string/jumbo v1, "vibrator_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
