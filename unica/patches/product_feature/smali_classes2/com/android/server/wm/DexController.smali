.class public final Lcom/android/server/wm/DexController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/IController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDexDisplaySize:Landroid/graphics/Point;

.field public final mDexTransientCaptionDelayCallbacks:Landroid/os/RemoteCallbackList;

.field public mDisplayPortState:I

.field public mFontScaleForExternalDesktop:F

.field public final mGameAppsMap:Ljava/util/HashMap;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/DexController$H;

.field public mHighResolutionsForExternalDesktopEnabled:Z

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mImeTarget:Lcom/android/server/wm/WindowState;

.field public mImeWindowVisibleInDefaultDisplay:Z

.field public mInDesktopWindowing:Z

.field public mInitializedFontScaleForExternalDesktop:Z

.field public mLastImeTargetForExternalDesktop:Lcom/android/server/wm/WindowState;

.field public mLastWarningToast:Landroid/widget/Toast;

.field public final mMinimizedToggleTasks:Ljava/util/List;

.field public mMirrorBuiltInDisplay:Z

.field public final mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

.field public mPrimaryExternalDesktopDisplayId:I

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mUpdateImeStateRunnable:Lcom/android/server/wm/DexController$1;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v4, "SPlqtyOkQMcV+iLM67vecvg2Or3jcHS+/2TBTCIcX6Q="

    const-string v5, "5oo37SkHJlg9Fi08Q6gJjx2yE6xywWNxwerw09xkRcI="

    const-string/jumbo v0, "TP+fe8M5uStQvlunzY6n5uiGTr6ReHrxNWA2QXUmsbo="

    const-string v1, "9jgH8FMKl5YrmkLKzhPt0BPyunVOn5QZd4RXlHG+m3U="

    const-string/jumbo v2, "ntxM9ozBwRd3xqwAhxYRewH46bxRXjgtRewzTdBekgc="

    const-string v3, "5LmLdKeONhZxMkwo4Z8PX72qMPwRt7aEqQGAXXrBEYk="

    invoke-static/range {v0 .. v5}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mGameAppsMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    new-instance v0, Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DexController$PendingActivityInfo;-><init>(Lcom/android/server/wm/DexController;)V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mLastImeTargetForExternalDesktop:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mImeWindowVisibleInDefaultDisplay:Z

    new-instance v1, Lcom/android/server/wm/DexController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DexController$1;-><init>(Lcom/android/server/wm/DexController;)V

    iput-object v1, p0, Lcom/android/server/wm/DexController;->mUpdateImeStateRunnable:Lcom/android/server/wm/DexController$1;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mInitializedFontScaleForExternalDesktop:Z

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mDexTransientCaptionDelayCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/wm/DexController;->mDisplayPortState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v0, "[DexController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mImeWindowVisibleInDefaultDisplay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mImeWindowVisibleInDefaultDisplay:Z

    const-string v2, "  mImeTarget="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mPrimaryExternalDesktopDisplayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    const-string v2, "  mRefreshRateToken="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mHighResolutionsForExternalDesktopEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mHighResolutionsForExternalDesktopEnabled:Z

    const-string v2, "  mMirrorBuiltInDisplay="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mMirrorBuiltInDisplay:Z

    const-string v2, "  mDisplayPortState="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DexController;->mDisplayPortState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mFontScaleForExternalDesktop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/DexController;->mFontScaleForExternalDesktop:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final enableHighResolutionsForExternalDesktop(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mHighResolutionsForExternalDesktopEnabled:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mHighResolutionsForExternalDesktopEnabled:Z

    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DexController;->mMirrorBuiltInDisplay:Z

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DexController;->updateDisplayPortStateIfNeeded(ZZ)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getDexModeLocked()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->dexMode:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getTaskLocked(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda1;

    invoke-direct {v8, p2, p1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v7, Lcom/android/server/wm/DexController$FindTaskResult;

    invoke-direct {v7, p0, v6}, Lcom/android/server/wm/DexController$FindTaskResult;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-object v0
.end method

.method public final initialize()V
    .locals 2

    new-instance v0, Lcom/android/server/wm/DexController$H;

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DexController$H;-><init>(Lcom/android/server/wm/DexController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    return-void
.end method

.method public final isExternalDesktopDisplayActivated()Z
    .locals 1

    iget p0, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isExternalDesktopDisplayId(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final mirrorBuiltInDisplaySettingChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mMirrorBuiltInDisplay:Z

    xor-int/2addr p1, v2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DexController;->updateDisplayPortStateIfNeeded(ZZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/wm/DexController;->mMirrorBuiltInDisplay:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyAppTransitionFinished()V
    .locals 4

    const-string/jumbo v0, "notifyAppTransitionFinished. isTransitionFinished="

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    const-string v2, "DexController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final setDisplayDensityInExternalDesktop(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v2, p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setForcedDensity(II)V

    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/Transition;->setDisplayChangeTransitionFlag(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadPointerIcons()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final setExternalDesktopDisplayId(I)V
    .locals 10

    iput p1, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DexController;->updateLowRefreshRateToken(Z)V

    iget-object v4, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v3, :cond_1

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v6, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    invoke-virtual {v6, p1, v0, v7}, Lcom/android/server/wm/KeyguardController;->setKeyguardShown(IZZ)V

    :cond_2
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    new-instance v7, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DexController;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {v6}, Landroid/hardware/display/DisplayManager;->isHDPlusResolutionDisplay(Landroid/view/DisplayInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    if-lt v6, v8, :cond_3

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v7, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v6, v7, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, v5}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-boolean v6, p0, Lcom/android/server/wm/DexController;->mInitializedFontScaleForExternalDesktop:Z

    if-nez v6, :cond_5

    iget v6, p0, Lcom/android/server/wm/DexController;->mFontScaleForExternalDesktop:F

    invoke-virtual {p0, v6}, Lcom/android/server/wm/DexController;->updateFontScaleOnExternalDesktop(F)V

    :cond_5
    iget-boolean v6, p0, Lcom/android/server/wm/DexController;->mMirrorBuiltInDisplay:Z

    xor-int/2addr v6, v0

    const/4 v7, 0x2

    if-eqz v5, :cond_6

    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v8, Landroid/view/DisplayInfo;->type:I

    if-ne v8, v7, :cond_6

    move v8, v0

    goto :goto_2

    :cond_6
    move v8, v1

    :goto_2
    invoke-virtual {p0, v6, v8}, Lcom/android/server/wm/DexController;->updateDisplayPortStateIfNeeded(ZZ)V

    if-eqz v3, :cond_8

    iget-boolean v6, p0, Lcom/android/server/wm/DexController;->mInDesktopWindowing:Z

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_3

    :cond_7
    move v6, v0

    goto :goto_3

    :cond_8
    move v6, v1

    :goto_3
    iget-object v8, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v8, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->setConnectedDexDisplay(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v5, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->onExternalDesktopModeChanged(I)V

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v8, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v6, v9}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DexController;II)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x2

    const-string/jumbo v6, "dex_on_external_display"

    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-ne p1, v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DexController;->setImeWindowStateForExternalDesktop(Z)Z

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/server/wm/DexController;->mInDesktopWindowing:Z

    if-eqz p1, :cond_a

    move v0, v7

    :cond_a
    move v1, v0

    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/input/InputManagerService;->setDesktopModeDisplayState(I)V

    return-void
.end method

.method public final setImeWindowStateForExternalDesktop(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mImeWindowVisibleInDefaultDisplay:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mImeWindowVisibleInDefaultDisplay:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setImeWindowStateForExternalDesktop: "

    const-string v1, " Callers="

    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mImeTargetDisplayIdForExternalDesktop:I

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo p1, "display"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DexController;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-void
.end method

.method public final shouldShowImeForExternalDesktop()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->updateImeWindowStateForExternalDesktop()Z

    return v0
.end method

.method public final showWarningToastIfNeeded(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V
    .locals 8

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v0, "isGameApp : put="

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/wm/DexController;->mGameAppsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;

    invoke-direct {v4, v1, v2}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;-><init>(J)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v3, p0, Lcom/android/server/wm/DexController;->mGameAppsMap:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    const/4 v4, 0x0

    const-string v5, "DexController"

    if-eqz v3, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isGameApp : hit= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v3

    new-instance v6, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGameAppsMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move p1, v3

    goto :goto_0

    :catch_0
    move p1, v4

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104091e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    :goto_1
    return-void

    :cond_6
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v0, 0x103012b

    invoke-direct {p1, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/DexController;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateDisplayPortStateIfNeeded(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mHighResolutionsForExternalDesktopEnabled:Z

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    or-int/2addr v2, p2

    :goto_0
    iget p1, p0, Lcom/android/server/wm/DexController;->mDisplayPortState:I

    if-eq p1, v2, :cond_5

    const/16 p2, 0x11

    if-ne p1, p2, :cond_4

    if-ne v2, v1, :cond_4

    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/class/dp_sec/dex"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_4

    :cond_2
    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DexController;I)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p1, "DexController"

    const-string p2, "Failed to read display port state"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    iput v2, p0, Lcom/android/server/wm/DexController;->mDisplayPortState:I

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;

    invoke-direct {p1, v2}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_4
    return-void
.end method

.method public final updateFontScaleOnExternalDesktop(F)V
    .locals 10

    const-string/jumbo v0, "updateFontScaleOnExternalDesktop: fontScale="

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/DexController;->mInitializedFontScaleForExternalDesktop:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/DexController;->mFontScaleForExternalDesktop:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/DexController;->mFontScaleForExternalDesktop:F

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/wm/DexController;->mInitializedFontScaleForExternalDesktop:Z

    iget-object v2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-string/jumbo v4, "font_scale_for_external_desktop"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget p0, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_2
    const-string p0, "DexController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FONT_SCALE_FOR_EXTERNAL_DESKTOP:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateImeWindowStateForExternalDesktop()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->isOffState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DexController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DexController;->mLastImeTargetForExternalDesktop:Lcom/android/server/wm/WindowState;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v4, 0x2

    const-string/jumbo v5, "android.server.wm:DesktopController"

    invoke-virtual/range {v1 .. v6}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mLastImeTargetForExternalDesktop:Lcom/android/server/wm/WindowState;

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->setImeWindowStateForExternalDesktop(Z)Z

    move-result p0

    return p0
.end method

.method public final updateLowRefreshRateToken(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "DexController"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {p1, v0, v1}, Landroid/hardware/display/IDisplayManager;->acquireLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DexController;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemoteException is occurred"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    iput-object v0, p0, Lcom/android/server/wm/DexController;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string/jumbo p1, "updateLowRefreshRateToken() release failed"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
