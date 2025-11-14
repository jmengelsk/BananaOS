.class public abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

.field public mPkgFlags:I

.field public mPkgPrivateFlags:I

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    if-eqz p1, :cond_23

    iget v1, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iput v1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iget v1, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iput v1, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iget-object p1, p1, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_23
    return-void
.end method


# virtual methods
.method public final dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final getFlags()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    return p0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    return-object p0
.end method

.method public final getPrivateFlags()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    return p0
.end method

.method public final onChanged$2()V
    .registers 2

    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-virtual {p0, p0}, Lcom/android/server/pm/SettingBase;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final setPrivateFlags(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method
