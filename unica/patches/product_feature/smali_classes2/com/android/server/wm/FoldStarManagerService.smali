.class public final Lcom/android/server/wm/FoldStarManagerService;
.super Lcom/samsung/android/core/IFoldStarManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sService:Lcom/android/server/wm/FoldStarManagerService;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/core/IFoldStarManager$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static getLauncherPackages(ILjava/util/List;)V
    .registers 4

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_b

    goto :goto_31

    :cond_b
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public final getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;
    .registers 13

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c6

    const-string/jumbo v0, "getFixedAspectRatioPackages()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    if-ne p2, v2, :cond_3a

    if-eqz p3, :cond_29

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_29

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    :cond_29
    invoke-static {p1, v0}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    :goto_2c
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p3, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;ILjava/util/Map;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object p2

    :cond_3a
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_7f

    if-eq p2, v2, :cond_75

    const/4 v4, 0x2

    if-eq p2, v4, :cond_6c

    const/4 v2, 0x3

    if-ne p2, v2, :cond_60

    if-eqz p3, :cond_57

    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {p2, p0, p1, v2}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;II)V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    goto :goto_88

    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "requestedPackages is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " is an unknown option."

    invoke-static {p2, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V

    invoke-static {p1, v0}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    goto :goto_88

    :cond_75
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;II)V

    invoke-static {p1, v0}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    goto :goto_88

    :cond_7f
    new-instance p2, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;II)V

    invoke-static {p1, v0}, Lcom/android/server/wm/FoldStarManagerService;->getLauncherPackages(ILjava/util/List;)V

    :goto_88
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_91
    if-ge v3, v4, :cond_c5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    invoke-virtual {v6, p1, v5}, Lcom/android/server/wm/CompatChangeableAppsCache;->shouldRespectMinAspectRatioOverride(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ad

    invoke-interface {p2, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    goto :goto_ae

    :cond_ad
    move-object v6, v1

    :goto_ae
    const/high16 v7, -0x40800000  # -1.0f

    if-nez v6, :cond_b6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :cond_b6
    if-eqz v2, :cond_c1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v7, v8, v7

    if-nez v7, :cond_c1

    goto :goto_91

    :cond_c1
    invoke-virtual {p3, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    :cond_c5
    return-object p3

    :cond_c6
    return-object v1
.end method

.method public final initAppContinuityValueWhenReset(ZZ)V
    .registers 3

    return-void
.end method

.method public final registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .registers 2

    return-void
.end method

.method public final setAllAppContinuityMode(IZ)V
    .registers 3

    return-void
.end method

.method public final setAppContinuityMode(Ljava/lang/String;IZ)V
    .registers 4

    return-void
.end method

.method public final setDisplayCompatPackages(ILjava/util/Map;Z)V
    .registers 4

    return-void
.end method

.method public final setFixedAspectRatioPackages(ILjava/util/Map;Z)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v0, :cond_5e

    if-eqz p2, :cond_5e

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    const-string/jumbo v0, "setFixedAspectRatioPackages()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_22
    iget-object v2, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_36

    const-string/jumbo p3, "MultiTaskingAppCompat"

    const-string/jumbo v3, "ReplaceAll is not supported."

    invoke-static {p3, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    new-instance p3, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {p3, v2, v3, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;ZI)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    const-string/jumbo p3, "setFixedAspectRatioPackages"

    invoke-virtual {p0, p1, p3, v3, p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->removeTaskWithoutRemoveFromRecents(ILjava/lang/String;ZLjava/util/List;)V
    :try_end_55
    .catchall {:try_start_22 .. :try_end_55} :catchall_59

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_59
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5e
    return-void
.end method

.method public final setFrontScreenOnWhenAppContinuityMode(Z)V
    .registers 2

    return-void
.end method

.method public final unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V
    .registers 2

    return-void
.end method
