.class public final Lcom/android/server/pm/KillAppBlocker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActiveUids:Ljava/util/List;

.field public mRegistered:Z

.field public final mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

.field public final mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    new-instance v0, Lcom/android/server/pm/KillAppBlocker$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KillAppBlocker$1;-><init>(Lcom/android/server/pm/KillAppBlocker;)V

    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Lcom/android/server/pm/KillAppBlocker$1;

    return-void
.end method


# virtual methods
.method public final waitAppProcessGone(Landroid/app/ActivityManagerInternal;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget v3, p3, v0

    const-wide/32 v5, 0x20000

    const/16 v4, 0x3e8

    move-object v2, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackageUidInternal(IIJLjava/lang/String;)I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_1

    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p4

    const/16 v1, 0x14

    if-eq p4, v1, :cond_1

    iget-object p4, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object p2, v2

    move-object p4, v7

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
