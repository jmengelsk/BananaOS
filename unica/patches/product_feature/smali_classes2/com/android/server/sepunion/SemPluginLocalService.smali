.class public Lcom/android/server/sepunion/SemPluginLocalService;
.super Lcom/samsung/android/sepunion/SemPluginManagerLocal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/SemPluginLocalService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemPluginManagerLocal;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final addLedNotification(Landroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "CoverManager_CoverManagerServiceImpl"

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo p0, "addLedNotification : caller is invalid"

    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    const-string/jumbo v0, "addLedNotification"

    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_41

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->addLedNotification(Landroid/os/Bundle;)V

    :cond_41
    return-void
.end method

.method public final disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_36

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "disableCoverManager : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3b
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result p2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_81

    if-eqz p2, :cond_80

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-boolean p2, p2, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_50

    move v0, v2

    goto :goto_51

    :cond_50
    move v0, v1

    :goto_51
    if-nez p2, :cond_55

    if-eqz v0, :cond_56

    :cond_55
    move v1, v2

    :cond_56
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iput-boolean v0, p2, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    const-string p2, "CoverManager_"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disable CoverManager : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", pkg : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance p2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;

    invoke-direct {p2, p0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_80
    return-void

    :catchall_81
    move-exception p0

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public final disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p4, :cond_1c

    const-string/jumbo v0, "cover"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1c

    iget-object p4, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez p4, :cond_15

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_15
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public final enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
    .registers 1

    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/SemPluginManagerService;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0
.end method

.method public final getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo v0, "deprecated getCoverStateForExternal"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCoverSwitchState()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_37

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo v0, "getCoverSwitchState : caller is invalid"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_37
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    if-eqz v1, :cond_40

    iget-boolean p0, v0, Lcom/android/server/sepunion/cover/CoverDisabler;->mRealCoverSwitchState:Z

    return p0

    :cond_40
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    return p0
.end method

.method public final getVersion()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x10c0000

    return p0
.end method

.method public final isCoverManagerDisabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_20

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mCoverManagerDisabled:Z

    return p0

    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCoverAppCovered(Z)I
    .registers 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_b
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_d4

    const-string v1, "CoverManager_CoverManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCoverAppCovered : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mIsCoverAppCovered:Z

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSleepTokenAcquirer:Lcom/android/server/sepunion/cover/SleepTokenAcquirer;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v2, v1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSwitchState:Z

    iput-boolean p1, v1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mIsCoverAppCovered:Z

    iget-object v2, v1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSleepTokenTask:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4b
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_56

    move v1, v0

    goto :goto_57

    :cond_56
    move v1, v3

    :goto_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_d1

    if-eqz v1, :cond_92

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5f
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6b

    monitor-exit v1

    return v3

    :catchall_69
    move-exception p0

    goto :goto_90

    :cond_6b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_72
    if-ge v4, v2, :cond_8e

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/2addr v4, v0

    check-cast v5, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    sget-object v6, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    iget-object v7, v5, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-virtual {v5, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I

    move-result v3

    goto :goto_72

    :cond_8a
    invoke-virtual {v5, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I

    goto :goto_72

    :cond_8e
    monitor-exit v1

    return v3

    :goto_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_5f .. :try_end_91} :catchall_69

    throw p0

    :cond_92
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_97
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :cond_9e
    :goto_9e
    if-ge v4, v2, :cond_cd

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/2addr v4, v0

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    iget-object v6, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const-string v7, "CoverManager_StateNotifier"

    if-nez v6, :cond_b4

    const-string/jumbo v5, "onCoverAppStateChanged : token is null"

    invoke-static {v7, v5}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :cond_b4
    iget v5, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I
    :try_end_b6
    .catchall {:try_start_97 .. :try_end_b6} :catchall_cb

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_9e

    :try_start_ba
    invoke-static {v6}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;

    move-result-object v5

    if-eqz v5, :cond_9e

    invoke-interface {v5, p1}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;->onCoverAppCovered(Z)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_c3} :catch_c4
    .catchall {:try_start_ba .. :try_end_c3} :catchall_cb

    goto :goto_9e

    :catch_c4
    move-exception v5

    :try_start_c5
    const-string v6, "Failed onCoverAppCovered callback"

    invoke-static {v7, v6, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9e

    :catchall_cb
    move-exception p0

    goto :goto_cf

    :cond_cd
    monitor-exit v1

    return v3

    :goto_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_cb

    throw p0

    :catchall_d1
    move-exception p0

    :try_start_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw p0

    :cond_d4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public final registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public final registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "deprecated registerListenerCallbackForExternal "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverManager_CoverManagerServiceImpl"

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final removeLedNotification(Landroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "CoverManager_CoverManagerServiceImpl"

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo p0, "removeLedNotification : caller is invalid"

    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    const-string/jumbo v0, "removeLedNotification"

    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_41

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->removeLedNotification(Landroid/os/Bundle;)V

    :cond_41
    return-void
.end method

.method public final requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final sendDataToCover(I[B)V
    .registers 6

    iget-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    const-string v0, "CoverManager_CoverManagerServiceImpl"

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    if-eq p1, p2, :cond_34

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result p1

    if-nez p1, :cond_34

    const-string/jumbo p0, "sendDataToCover : caller is invalid"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "com.android.systemui"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_50

    const-string/jumbo p0, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void
.end method

.method public final sendDataToNfcLedCover(I[B)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "CoverManager_CoverManagerServiceImpl"

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo p0, "sendStateDataToCover : caller is invalid"

    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo p0, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_51
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_8d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    return-void

    :cond_5f
    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_75

    if-ne p1, v0, :cond_66

    goto :goto_75

    :cond_66
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_6d

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_6d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_8d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    return-void

    :cond_75
    :goto_75
    const/4 p2, 0x1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    if-ne p1, v1, :cond_7f

    const/4 p1, 0x7

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_86

    :cond_7f
    if-ne p1, v0, :cond_86

    const/16 p1, 0xe

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_86
    :goto_86
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-nez p1, :cond_8d

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    :cond_8d
    return-void
.end method

.method public final sendPowerKeyToCover()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_58

    const-string v0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo v1, "sendPowerKeyToCover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendPowerKeyToCover()V

    :cond_2a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p0, :cond_57

    const-string v0, "CoverManager_GenericCoverServiceController"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_39
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_4a

    :catch_43
    move-exception v1

    const-string/jumbo v4, "Shouldn\'t happen"

    invoke-static {v0, v4, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_57
    return-void

    :cond_58
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sendSystemEvent(Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_34

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "sendSystemEvent : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz p0, :cond_3b

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    :cond_3b
    return-void
.end method

.method public final setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final unregisterCallback(Landroid/os/IBinder;)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_32
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :cond_39
    const/4 v5, 0x0

    if-ge v4, v3, :cond_4f

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v6, :cond_39

    iget-object v7, v6, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v7}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    goto :goto_50

    :cond_4f
    move-object v6, v5

    :goto_50
    const/4 v1, 0x1

    if-eqz v6, :cond_68

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5e
    invoke-interface {p1, v6, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return v1

    :catchall_66
    move-exception p0

    goto :goto_a3

    :cond_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_32 .. :try_end_69} :catchall_66

    iget-object v3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_6c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v2

    :cond_73
    if-ge v6, v4, :cond_88

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v7, :cond_73

    iget-object v8, v7, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v8}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    move-object v5, v7

    :cond_88
    if-eqz v5, :cond_9f

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_95
    invoke-interface {p1, v5, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v3

    return v1

    :catchall_9d
    move-exception p0

    goto :goto_a1

    :cond_9f
    monitor-exit v3

    return v2

    :goto_a1
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_6c .. :try_end_a2} :catchall_9d

    throw p0

    :goto_a3
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_66

    throw p0
.end method

.method public final unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .registers 3

    iget-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "deprecated unregisterCallbackForExternal "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverManager_CoverManagerServiceImpl"

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginLocalService;->getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginLocalService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverManagerAllowLists:Lcom/android/server/sepunion/cover/CoverManagerAllowLists;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_35

    const-string p0, "CoverManager_CoverManagerServiceImpl"

    const-string/jumbo p1, "unregisterNfcTouchListenerCallback : caller is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_35
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_3e

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    goto :goto_3f

    :cond_3e
    move v0, v2

    :goto_3f
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    const/4 v1, 0x1

    if-eqz p0, :cond_c0

    const-string v3, "CoverManager_GenericCoverServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_73
    iget-object v4, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_7a
    if-ge v6, v5, :cond_b4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz v7, :cond_7a

    iget-object v8, v7, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v8}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    const-string v4, "CoverManager_GenericCoverServiceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v7, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v3

    move p0, v1

    goto :goto_c1

    :catchall_b2
    move-exception p0

    goto :goto_be

    :cond_b4
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_73 .. :try_end_b5} :catchall_b2

    const-string p0, "CoverManager_GenericCoverServiceController"

    const-string/jumbo p1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :goto_be
    :try_start_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_b2

    throw p0

    :cond_c0
    :goto_c0
    move p0, v2

    :goto_c1
    if-nez v0, :cond_c7

    if-eqz p0, :cond_c6

    goto :goto_c7

    :cond_c6
    return v2

    :cond_c7
    :goto_c7
    return v1
.end method
