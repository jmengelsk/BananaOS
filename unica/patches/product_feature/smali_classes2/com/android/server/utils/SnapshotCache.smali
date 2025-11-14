.class public abstract Lcom/android/server/utils/SnapshotCache;
.super Lcom/android/server/utils/Watcher;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sCaches:Ljava/util/WeakHashMap;


# instance fields
.field public volatile mSealed:Z

.field public volatile mSnapshot:Ljava/lang/Object;

.field public final mSource:Ljava/lang/Object;

.field public final mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/server/utils/SnapshotCache;->sCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    if-eqz p3, :cond_1d

    new-instance p1, Lcom/android/server/utils/SnapshotCache$Statistics;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Statistics;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    sget-object p1, Lcom/android/server/utils/SnapshotCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1d
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    return-void
.end method


# virtual methods
.method public abstract createSnapshot()Ljava/lang/Object;
.end method

.method public final onChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "attempt to change a sealed object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mReused:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->createSnapshot()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    if-eqz p0, :cond_1d

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache$Statistics;->mRebuilt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1d
    return-object v0
.end method
