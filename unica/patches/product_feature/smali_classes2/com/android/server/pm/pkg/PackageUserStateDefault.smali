.class public final Lcom/android/server/pm/pkg/PackageUserStateDefault;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;


# virtual methods
.method public final dataExists()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCeDataInode()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getDeDataInode()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getDisabledComponents()Landroid/util/ArraySet;
    .locals 0

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public final getDisabledComponents()Ljava/util/Set;
    .locals 0

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public final getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDistractionFlags()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getEnabledComponents()Landroid/util/ArraySet;
    .locals 0

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public final getEnabledComponents()Ljava/util/Set;
    .locals 0

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public final getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnabledState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getFirstInstallTimeMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getHarmfulAppWarning()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstallReason()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getLastDisableAppCaller()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMinAspectRatio()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSharedLibraryOverlayPaths()Ljava/util/Map;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final getSplashScreenTheme()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUninstallReason()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isComponentDisabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isComponentEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isHidden()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isInstalled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isInstantApp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isNotLaunched()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isQuarantined()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isStopped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSuspended()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isVirtualPreload()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
