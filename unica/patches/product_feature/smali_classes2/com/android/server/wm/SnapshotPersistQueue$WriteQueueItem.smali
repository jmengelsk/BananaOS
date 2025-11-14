.class public abstract Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iput p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    return-void
.end method


# virtual methods
.method public isReady(Lcom/android/server/pm/UserManagerInternal;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public onDequeuedLocked()V
    .locals 0

    return-void
.end method

.method public onQueuedLocked()V
    .locals 0

    return-void
.end method

.method public abstract write()V
.end method
