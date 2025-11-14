.class public final Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mPolicyEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->mPolicyEnabled:Z

    iput-object p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    sget-object p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->REMOTE_CONTROL_FEATURES:Lcom/samsung/android/server/packagefeature/PackageFeature;

    new-instance v0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    new-instance p1, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$1;-><init>(Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;)V

    sget-object p0, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getUniversalResizeableOverride(Landroid/content/pm/ApplicationInfo;ZZ)Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isWindowManagerCtsPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    sget-object v3, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    new-instance v4, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v4, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/CompatChangeableAppsCache;->shouldRespectMinAspectRatioOverride(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->isPolicyEnabled()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, p0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;Lcom/android/server/wm/WindowManagerService;ZZ)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz p0, :cond_6

    if-eqz p2, :cond_6

    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getUserOverride(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz p0, :cond_7

    if-eqz p3, :cond_7

    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_7

    const/4 p1, 0x6

    if-eq p0, p1, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isPolicyEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->mPolicyEnabled:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isUniversalResizeableOverride(Landroid/content/pm/ApplicationInfo;ZZ)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->getUniversalResizeableOverride(Landroid/content/pm/ApplicationInfo;ZZ)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
