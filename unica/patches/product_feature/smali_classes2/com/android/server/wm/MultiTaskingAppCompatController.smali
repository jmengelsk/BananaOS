.class public final Lcom/android/server/wm/MultiTaskingAppCompatController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAdaptiveAppByDefaultOverrides:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

.field public final mAdaptiveAppByDefaultPolicy:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

.field public final mAppCompatSettingsOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

.field public final mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

.field public final mAspectRatioPolicy:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mMultiTaskingAppCompatStatusLogger:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

.field public final mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

.field public final mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

.field public final mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

.field public final mResizeOverrides:Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

.field public final mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    const-string v2, "AppCompatSettingsOverrides"

    const v3, 0x8000

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAppCompatSettingsOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    invoke-direct {v0}, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAdaptiveAppByDefaultOverrides:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    new-instance v0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAdaptiveAppByDefaultPolicy:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    :cond_0
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

    invoke-direct {v0}, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mResizeOverrides:Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    new-instance v1, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;

    invoke-direct {v1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    new-instance v1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    invoke-direct {v1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_STATUS_LOGGING:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mMultiTaskingAppCompatStatusLogger:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    :cond_3
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatController$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatController$1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatController;)V

    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static adjustToOrientationRespectedWithBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 3

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->orientationRespectedWithBounds(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    if-gt p0, v0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    :goto_0
    iput p0, p1, Landroid/content/res/Configuration;->orientation:I

    :cond_4
    :goto_1
    return-void
.end method

.method public static inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static orientationRespectedWithBounds(IIII)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    if-eq p2, p3, :cond_3

    const/4 v1, 0x0

    if-ge p0, p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-ge p2, p3, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eq p0, p1, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v0
.end method

.method public static supportsAppCompatOverride(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget p0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    if-ne v1, p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static userMinAspectRatioOverrideToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "Unknown("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "AppDefault"

    return-object p0

    :cond_1
    const-string p0, "FullScreen"

    return-object p0

    :cond_2
    const-string p0, "16:9"

    return-object p0

    :cond_3
    const-string p0, "4:3"

    return-object p0

    :cond_4
    const-string/jumbo p0, "Unset"

    return-object p0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAppCompatSettingsOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    new-instance v2, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda2;-><init>([Ljava/lang/Boolean;Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->forAllKeyValue(Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda2;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getUserIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    return-object p0
.end method

.method public final initialize()V
    .locals 0

    return-void
.end method

.method public final removeTaskWithoutRemoveFromRecents(ILjava/lang/String;ZLjava/util/List;)V
    .locals 8

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;

    move-object v3, p0

    move v4, p1

    move-object v7, p2

    move v6, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatController;ILjava/util/List;ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
