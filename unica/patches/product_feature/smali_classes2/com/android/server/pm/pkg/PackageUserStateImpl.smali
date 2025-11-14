.class public final Lcom/android/server/pm/pkg/PackageUserStateImpl;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

.field public mBooleans:I

.field public mCeDataInode:J

.field public mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

.field public mDeDataInode:J

.field public mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

.field public mDistractionFlags:I

.field public mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

.field public mEnabledState:I

.field public mFirstInstallTimeMillis:J

.field public mHarmfulAppWarning:Ljava/lang/String;

.field public mInstallReason:I

.field public mLastDisableAppCaller:Ljava/lang/String;

.field public mMinAspectRatio:I

.field public mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

.field public mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSplashScreenTheme:Ljava/lang/String;

.field public mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

.field public mUninstallReason:I

.field public mWatchable:Lcom/android/server/utils/Watchable;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/Watchable;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    new-instance p1, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;

    invoke-direct {p1, p0, p0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;-><init>(Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Watchable;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    const/4 v1, 0x0

    if-nez p1, :cond_19

    move-object p1, v1

    goto :goto_1d

    :cond_19
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    :goto_1d
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p1, :cond_25

    move-object p1, v1

    goto :goto_29

    :cond_25
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    :goto_29
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_35

    move-object v2, v1

    goto :goto_3d

    :cond_35
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    invoke-static {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    :goto_3d
    iput-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    iget-wide v2, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iput-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iget-wide v2, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    iput-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_6d

    move-object v2, v1

    goto :goto_75

    :cond_6d
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    invoke-static {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    :goto_75
    iput-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_7c

    goto :goto_84

    :cond_7c
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    invoke-static {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    :goto_84
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    iget-wide v0, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final dataExists()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_b4

    const-class v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    goto/16 :goto_b4

    :cond_11
    check-cast p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    if-ne v2, v3, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_b4

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_b4

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    if-ne v2, v3, :cond_b4

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    if-ne v2, v3, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    if-ne v2, v3, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_b4

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b4

    return v0

    :cond_b4
    :goto_b4
    return v1
.end method

.method public final getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v1, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    if-nez v0, :cond_12

    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    goto :goto_19

    :cond_12
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-direct {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>(Landroid/content/pm/overlay/OverlayPaths;)V

    :goto_19
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/overlay/OverlayPaths;

    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_25

    :cond_35
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public final getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    return-object p0
.end method

.method public final getBoolean$1(I)Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final getCeDataInode()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    return-wide v0
.end method

.method public final getDeDataInode()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    return-wide v0
.end method

.method public final getDisabledComponents()Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p0, :cond_a

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final bridge synthetic getDisabledComponents()Ljava/util/Set;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public final getDistractionFlags()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    return p0
.end method

.method public final getEnabledComponents()Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p0, :cond_a

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final bridge synthetic getEnabledComponents()Ljava/util/Set;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object p0
.end method

.method public final getEnabledState()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    return p0
.end method

.method public final getFirstInstallTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    return-wide v0
.end method

.method public final getHarmfulAppWarning()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstallReason()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    return p0
.end method

.method public final getLastDisableAppCaller()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    return-object p0
.end method

.method public final getMinAspectRatio()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    return p0
.end method

.method public final getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object p0
.end method

.method public final getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public final getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p0, :cond_6

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_6
    return-object p0
.end method

.method public final getSplashScreenTheme()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    return-object p0
.end method

.method public final getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public final getUninstallReason()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    return p0
.end method

.method public final hashCode()I
    .registers 6

    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    mul-int/2addr p0, v1

    return p0
.end method

.method public final isComponentDisabled(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isComponentEnabled(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isHidden()Z
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    move-result p0

    return p0
.end method

.method public final isInstalled()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    move-result p0

    return p0
.end method

.method public final isInstantApp()Z
    .registers 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    move-result p0

    return p0
.end method

.method public final isNotLaunched()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    move-result p0

    return p0
.end method

.method public final isQuarantined()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isSuspended()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/SuspendParams;

    iget-boolean v3, v3, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    if-eqz v3, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    return v1
.end method

.method public final isStopped()Z
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    move-result p0

    return p0
.end method

.method public final isSuspended()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isVirtualPreload()Z
    .registers 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    move-result p0

    return p0
.end method

.method public final onChanged$4()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_7

    invoke-interface {v0, v0}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_7
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_18

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1a

    :cond_18
    move-object v0, v1

    move-object v2, v0

    :goto_1a
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v0, v3

    :goto_2b
    if-eqz v0, :cond_5f

    if-nez p2, :cond_43

    if-nez p3, :cond_43

    iget-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5c

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    goto :goto_5c

    :cond_43
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v1, :cond_53

    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_53
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_5f
    return v0
.end method

.method public final setBoolean$1(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    return-void

    :cond_8
    iget p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    return-void
.end method

.method public final setDisabledComponents(Landroid/util/ArraySet;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_21
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    return-void
.end method

.method public final setEnabledComponents(Landroid/util/ArraySet;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_21
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    return-void
.end method

.method public final setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    :cond_22
    const/4 v0, 0x1

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_35

    :cond_2c
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    return v0

    :cond_35
    :goto_35
    iget-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3e

    move v1, v0

    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    return v1
.end method

.method public final snapshot()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    return-object p0
.end method
