.class public final Lcom/android/server/pm/KillAppBlocker$1;
.super Landroid/app/UidObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/KillAppBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KillAppBlocker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/KillAppBlocker$1;->this$0:Lcom/android/server/pm/KillAppBlocker;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/pm/KillAppBlocker$1;->this$0:Lcom/android/server/pm/KillAppBlocker;

    iget-object p2, p2, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/pm/KillAppBlocker$1;->this$0:Lcom/android/server/pm/KillAppBlocker;

    iget-object p1, p1, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/android/server/pm/KillAppBlocker$1;->this$0:Lcom/android/server/pm/KillAppBlocker;

    iget-object p1, p1, Lcom/android/server/pm/KillAppBlocker;->mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_24

    :catchall_22
    move-exception p1

    goto :goto_26

    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_22

    throw p1
.end method
