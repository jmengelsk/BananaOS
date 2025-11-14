.class public final Lcom/android/server/trust/TrustAgentWrapper$5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    sget v0, Lcom/android/server/trust/TrustAgentWrapper;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p2}, Landroid/service/trust/ITrustAgentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v0, p2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x4

    iget v3, p2, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object p2, p1, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Lcom/android/server/trust/TrustAgentWrapper$4;

    :try_start_0
    iget-object p1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/service/trust/ITrustAgentService;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {p1}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()V

    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean p2, p1, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    :try_start_1
    iget-object p2, p1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    iput-boolean v0, p1, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :goto_2
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iput-boolean v1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    :cond_2
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object p2, p1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {p2, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iput-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    :try_start_2
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 12

    sget v0, Lcom/android/server/trust/TrustAgentWrapper;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    iput-object v1, v0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    iget-object v2, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x3

    iget v5, v0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    invoke-virtual {v2, v3}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object p1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v0, p1, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v0, 0x100

    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "TrustManagerService"

    const-string p1, "Error locking screen when called from trust agent"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
