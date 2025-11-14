.class public final synthetic Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationAttentionHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    const-string v1, "EasyMuteController"

    if-eqz v0, :cond_7a

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz v0, :cond_7a

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_73

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/android/server/notification/EasyMuteController$1;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    iput-boolean v3, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string/jumbo v0, "Reg. OverTurn"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    if-nez v0, :cond_72

    new-instance v0, Lcom/android/server/notification/EasyMuteController$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EasyMuteController$2;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_32
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_72

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    new-instance v3, Lcom/android/server/notification/EasyMuteController$3;

    invoke-direct {v3, p0}, Lcom/android/server/notification/EasyMuteController$3;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_4d} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_4d} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    const-string/jumbo p0, "RemoteException"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catch_55
    const-string v0, "InvocationTargetException"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_72

    :catch_64
    const-string v0, "IllegalAccessException"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_72
    :goto_72
    return-void

    :cond_73
    const-string/jumbo p0, "Register failed. mEasyMuteMotionManager is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7a
    const-string/jumbo p0, "Register failed. already registered or setting not eanbled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
