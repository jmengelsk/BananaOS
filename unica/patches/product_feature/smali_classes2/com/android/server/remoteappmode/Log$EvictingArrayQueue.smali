.class public final Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCapacity:I

.field public final mElements:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mPointer:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    iput p1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v4

    :goto_12
    if-ge v4, v1, :cond_2d

    iget-object v5, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    iget v6, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    add-int/2addr v6, v4

    add-int/2addr v6, v3

    iget v7, p0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v6, v7

    goto :goto_23

    :catchall_20
    move-exception p0

    goto :goto_2f

    :cond_22
    move v6, v4

    :goto_23
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_20

    throw p0
.end method
