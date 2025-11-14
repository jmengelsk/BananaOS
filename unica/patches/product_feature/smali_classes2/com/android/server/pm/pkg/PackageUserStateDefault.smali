.class public final Lcom/android/server/pm/pkg/PackageUserStateDefault;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;


# virtual methods
.method public final dataExists()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCeDataInode()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getDeDataInode()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getDisabledComponents()Landroid/util/ArraySet;
    .registers 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public final getDisabledComponents()Ljava/util/Set;
    .registers 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public final getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDistractionFlags()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getEnabledComponents()Landroid/util/ArraySet;
    .registers 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public final getEnabledComponents()Ljava/util/Set;
    .registers 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public final getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnabledState()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getFirstInstallTimeMillis()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getHarmfulAppWarning()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstallReason()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getLastDisableAppCaller()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMinAspectRatio()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 1

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final getSplashScreenTheme()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUninstallReason()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isComponentDisabled(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isComponentEnabled(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final isHidden()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isInstalled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isInstantApp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isNotLaunched()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isQuarantined()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isStopped()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isSuspended()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isVirtualPreload()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
