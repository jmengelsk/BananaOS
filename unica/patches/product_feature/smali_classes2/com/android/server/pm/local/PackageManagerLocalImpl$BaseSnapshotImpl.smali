.class public abstract Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mClosed:Z

.field public mSnapshot:Lcom/android/server/pm/Computer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/server/pm/Computer;

    iput-object p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    return-void
.end method


# virtual methods
.method public checkClosed()V
    .registers 2

    iget-boolean p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mClosed:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Snapshot already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mClosed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    return-void
.end method
