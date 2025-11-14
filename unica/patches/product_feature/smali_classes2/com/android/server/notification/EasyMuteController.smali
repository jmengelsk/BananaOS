.class public final Lcom/android/server/notification/EasyMuteController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field public mIsRegister:Z

.field public mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field public mMotionListener:Lcom/android/server/notification/EasyMuteController$1;

.field public mMotionOn:Z

.field public mNotificationPlayerBinder:Landroid/os/IBinder;

.field public mOverTurnOn:Z


# virtual methods
.method public final unregisterListener()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string v1, "EasyMuteController"

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/android/server/notification/EasyMuteController$1;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string/jumbo p0, "UnReg. OverTurn"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    const-string/jumbo p0, "UnRegister failed. mEasyMuteMotionManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const-string/jumbo p0, "UnRegister failed. no registered"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
