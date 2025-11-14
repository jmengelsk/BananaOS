.class public final Lcom/android/server/storage/WatchedVolumeInfo;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/os/storage/VolumeInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/storage/WatchedVolumeInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    new-instance v0, Landroid/os/storage/VolumeInfo;

    iget-object p1, p1, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, p1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    new-instance v0, Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-direct {v0, p0}, Lcom/android/server/storage/WatchedVolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method

.method public final setMountFlags(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput p1, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final setMountUserId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput p1, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
