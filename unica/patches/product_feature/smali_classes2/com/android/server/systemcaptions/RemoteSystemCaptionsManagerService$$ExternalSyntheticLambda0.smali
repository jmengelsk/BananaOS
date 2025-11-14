.class public final synthetic Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 11

    iget p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    packed-switch p0, :pswitch_data_b8

    iget-boolean p0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz p0, :cond_14

    const-string/jumbo p0, "RemoteSystemCaptionsManagerService"

    const-string/jumbo v0, "handleDestroy()"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object p0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_17
    iget-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    if-eqz v0, :cond_2e

    iget-boolean p1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz p1, :cond_2c

    const-string/jumbo p1, "RemoteSystemCaptionsManagerService"

    const-string/jumbo v0, "handleDestroy(): Already destroyed"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :catchall_29
    move-exception v0

    move-object p1, v0

    goto :goto_56

    :cond_2c
    :goto_2c
    monitor-exit p0

    goto :goto_55

    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    iget-object v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_3a

    iget-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    if-nez v0, :cond_3a

    goto :goto_54

    :cond_3a
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    iget-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "RemoteSystemCaptionsManagerService"

    const-string/jumbo v1, "ensureUnbound(): unbinding"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    iget-object v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_54
    monitor-exit p0

    :goto_55
    return-void

    :goto_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_17 .. :try_end_57} :catchall_29

    throw p1

    :pswitch_58  #0x0
    const-string p0, " with flags 67112961"

    const-string v0, "Could not bind to "

    iget-object v1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5f
    iget-object v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    if-nez v2, :cond_b3

    iget-boolean v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    if-eqz v2, :cond_68

    goto :goto_b3

    :cond_68
    iget-boolean v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v2, :cond_79

    const-string/jumbo v2, "RemoteSystemCaptionsManagerService"

    const-string/jumbo v3, "handleEnsureBound(): binding"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catchall_76
    move-exception v0

    move-object p0, v0

    goto :goto_b5

    :cond_79
    :goto_79
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    iget-object v3, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    iget-object v7, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/os/UserHandle;

    iget v2, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mUserId:I

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    const v6, 0x4001001

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_b1

    const-string/jumbo v2, "RemoteSystemCaptionsManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    :cond_b1
    monitor-exit v1

    goto :goto_b4

    :cond_b3
    :goto_b3
    monitor-exit v1

    :goto_b4
    return-void

    :goto_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_5f .. :try_end_b6} :catchall_76

    throw p0

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_58  #00000000
    .end packed-switch
.end method
