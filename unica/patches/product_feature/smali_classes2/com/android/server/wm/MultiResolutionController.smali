.class public final Lcom/android/server/wm/MultiResolutionController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplaySizeDensityChangedReason:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpDisplaySize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mTmpDisplaySize:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getForcedDisplayDensity()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_density_forced"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_27

    if-lez v2, :cond_33

    :try_start_1e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_22} :catch_29
    .catchall {:try_start_1e .. :try_end_22} :catchall_27

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_27
    move-exception p0

    goto :goto_40

    :catch_29
    move-exception v1

    :try_start_2a
    const-string/jumbo v2, "MultiResolutionController"

    const-string/jumbo v3, "NumberFormatException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getForcedDisplaySize(Landroid/graphics/Point;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_50

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_44

    if-ne v2, v3, :cond_50

    const/4 v2, 0x0

    :try_start_2a
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_3f} :catch_46
    .catchall {:try_start_2a .. :try_end_3f} :catchall_44

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_44
    move-exception p0

    goto :goto_69

    :catch_46
    move-exception v1

    :try_start_47
    const-string/jumbo v2, "MultiResolutionController"

    const-string/jumbo v3, "NumberFormatException "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_5d

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5d
    :try_start_5d
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Point;->set(II)V

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_69
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final setForcedDisplaySizeDensityInner(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_2f

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    move-result p0

    if-ltz p0, :cond_2f

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    move-result p0

    if-ltz p0, :cond_2f

    move v6, v3

    goto :goto_30

    :catchall_2c
    move-exception v0

    move-object p0, v0

    goto :goto_6c

    :cond_2f
    move v6, v0

    :goto_30
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result p0

    if-eqz p0, :cond_3e

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    move-result p0

    if-ltz p0, :cond_3e

    move v8, v3

    goto :goto_3f

    :cond_3e
    move v8, v0

    :goto_3f
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    move-result p0

    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-gez p0, :cond_49

    move v3, v0

    goto :goto_4a

    :cond_49
    move v3, p0

    :goto_4a
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    move-result p0

    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-gez p0, :cond_54

    move v4, v0

    goto :goto_55

    :cond_54
    move v4, p0

    :goto_55
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    move-result p0

    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-gez p0, :cond_5f

    move v5, v0

    goto :goto_60

    :cond_5f
    move v5, p0

    :goto_60
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getForcedHideCutout()I

    move-result v7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZIZ)V

    :cond_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_8 .. :try_end_68} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_6c
    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    const-string p0, " ["

    invoke-static {p1, p0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final updateDisplaySizeDensityChangedReason(IIILjava/lang/String;IIZ)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ProcessName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_20
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    goto :goto_32

    :catchall_2f
    move-exception p0

    goto :goto_93

    :cond_31
    const/4 v1, 0x0

    :goto_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4c

    const-string v2, ", UserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4c
    if-eq p3, v1, :cond_58

    if-eq p5, v1, :cond_58

    const-string p2, ", Size="

    const-string/jumbo v2, "x"

    invoke-static {p3, p5, p2, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_58
    if-eq p6, v1, :cond_62

    const-string p2, ", Density="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_62
    if-eqz p7, :cond_69

    const-string p2, ", saveToSettings=true"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    if-eqz p4, :cond_73

    const-string p2, ", info="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    const-string p2, ", caller="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_89

    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    :cond_89
    const-string/jumbo p0, "MultiResolutionController"

    const-string/jumbo p1, "updateDisplaySizeDensityChangedReason: "

    invoke-static {p1, p2, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_93
    :try_start_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
