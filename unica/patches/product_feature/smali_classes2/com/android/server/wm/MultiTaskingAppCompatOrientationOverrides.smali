.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mCameraCompatDisabledList:Ljava/util/List;

.field public mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mDefaultEnabled:Z

.field public mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mDumpInterface:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;

.field public mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDumpInterface:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    const/16 v1, 0x40

    const-string/jumbo v3, "OrientationControlPackageMap"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v5, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->setDefaultEnabled(Z)V

    :cond_0
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V

    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static toPolicyToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Enabled"

    return-object p0

    :cond_1
    const-string p0, "Disabled"

    return-object p0
.end method


# virtual methods
.method public final existsEnabledUserOverride()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v4

    :goto_1
    if-nez v3, :cond_1

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    monitor-exit p0

    return v2

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getLegacyUserOverride(ILjava/lang/String;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 p2, -0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit16 p2, p1, -0xc1

    if-eqz p2, :cond_3

    const/4 v0, 0x7

    if-eq p2, v0, :cond_3

    const/16 v1, 0x1f

    if-eq p2, v1, :cond_3

    const/16 v2, 0x20

    if-eq p2, v2, :cond_3

    and-int/lit8 p2, p1, 0x7

    if-eqz p2, :cond_2

    and-int/lit8 p1, p1, 0x18

    if-eqz p1, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    return p2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getUserOrSystemOverride(ILjava/lang/String;)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getLegacyUserOverride(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAdaptiveAppByDefaultPolicy:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    invoke-static {p2, p1}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->isUniversalResizeableOverride(Landroid/content/pm/ApplicationInfo;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x7

    return p0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    new-instance v3, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, p2, v4}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-exit p0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-exit p0

    goto :goto_0

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x1f

    return p0

    :cond_5
    return v2

    :cond_6
    return v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getUserOverride(ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getLegacyUserOverride(ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/16 p1, 0x1f

    if-eq p0, p1, :cond_0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setDefaultEnabled(Z)V
    .locals 3

    const-string/jumbo v0, "setDefaultEnabled: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    if-eq v1, p1, :cond_0

    const-string/jumbo v1, "MultiTaskingAppCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultDisabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    :goto_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_APP_ROTATION_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MULTI_FOLD_CAMERA_POLICY:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mCameraCompatDisabledList:Ljava/util/List;

    const-string/jumbo v0, "com.snapchat.android"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mCameraCompatDisabledList:Ljava/util/List;

    const-string/jumbo v0, "com.reddit.frontpage"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mCameraCompatDisabledList:Ljava/util/List;

    const-string/jumbo v0, "com.linecorp.b612.android"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mCameraCompatDisabledList:Ljava/util/List;

    const-string/jumbo v0, "com.campmobile.snow"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mCameraCompatDisabledList:Ljava/util/List;

    const-string/jumbo v0, "com.imo.android.imoim"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mCameraCompatDisabledList:Ljava/util/List;

    const-string/jumbo v0, "com.sankuai.meituan"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setUserOverride(IILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getAdjustedUserId(II)I

    move-result p2

    monitor-enter p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p3, p1, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
