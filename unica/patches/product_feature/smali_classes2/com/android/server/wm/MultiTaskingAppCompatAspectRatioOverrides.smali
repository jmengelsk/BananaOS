.class public final Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final INITIAL_SDK_35_OVER:Z

.field public static final INITIAL_SDK_35_UNDER:Z


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSystemMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;

.field public mUserMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;


# direct methods
.method public static -$$Nest$mmigrationIfNeeded(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V
    .locals 9

    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->INITIAL_SDK_35_OVER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAppCompatSettingsOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    const-string/jumbo v3, "UserAspectRatioOverridesInitialized"

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/Integer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mUserMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    if-eqz p0, :cond_4

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_SUPPORTED:Z

    if-eqz v1, :cond_3

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->onLoadFileCompletedAndSystemReady(ZZ)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->reset()V

    :cond_4
    :goto_1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_SUPPORTED:Z

    if-nez p0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingAppCompatController;->getUserIds()[I

    move-result-object p0

    array-length v1, p0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_8

    aget v4, p0, v3

    new-instance v5, Lcom/samsung/android/core/CompatChangeableApps;

    invoke-direct {v5, v4}, Lcom/samsung/android/core/CompatChangeableApps;-><init>(I)V

    invoke-virtual {v5}, Lcom/samsung/android/core/CompatChangeableApps;->getCompatChangeablePackageNameList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    :cond_6
    invoke-static {v6, v4, v2}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const/16 p0, 0x24

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v0

    :try_start_2
    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAppCompatSettingsOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    const-string/jumbo v5, "UserAspectRatioOverridesInitialized"

    invoke-virtual {v4, v5, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->requestToSave(I)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string/jumbo p0, "MultiTaskingAppCompat"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAppCompatSettingsOverrides: key=UserAspectRatioOverridesInitialized, value="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x23

    if-ge v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    sput-boolean v4, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->INITIAL_SDK_35_UNDER:Z

    if-le v0, v3, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->INITIAL_SDK_35_OVER:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->INITIAL_SDK_35_UNDER:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mUserMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mSystemMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p0}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "Exception thrown retrieving aspect ratio user override. packageName="

    const-string v2, ", userId="

    invoke-static {p0, v1, p1, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MultiTaskingAppCompat"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setUserMinAspectRatioOverrideCode(Ljava/lang/String;II)V
    .locals 2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->setUserMinAspectRatio(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception p2

    const-string/jumbo v0, "Unable to set user min aspect ratio override. packageName="

    const-string v1, ", userId="

    invoke-static {p1, v0, p0, v1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MultiTaskingAppCompat"

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final getSystemMinAspectRatio(Ljava/lang/String;)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mSystemMinAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$SystemMinAspectRatioOverrides;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getUserOrSystemMinAspectRatio(ILjava/lang/String;)F
    .locals 5

    invoke-static {p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const v0, 0x3fe38e39

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const v0, 0x3faaaaab

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    cmpl-float v3, v0, v1

    if-eqz v3, :cond_3

    return v0

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAdaptiveAppByDefaultPolicy:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    invoke-static {p2, p1}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->isUniversalResizeableOverride(Landroid/content/pm/ApplicationInfo;ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getSystemMinAspectRatio(Ljava/lang/String;)F

    move-result p0

    cmpl-float p1, p0, v1

    if-eqz p1, :cond_5

    return p0

    :cond_5
    return v1
.end method
