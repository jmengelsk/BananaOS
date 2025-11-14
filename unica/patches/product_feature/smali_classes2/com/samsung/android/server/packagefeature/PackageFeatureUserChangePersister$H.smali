.class public final Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    iget-boolean v2, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    if-eqz v2, :cond_15

    monitor-exit p1

    return-void

    :catchall_13
    move-exception p0

    goto :goto_35

    :cond_15
    iget v2, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    if-nez v2, :cond_25

    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    monitor-exit p1

    return-void

    :cond_25
    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    iput-boolean v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    monitor-exit p1

    return-void

    :goto_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_13

    throw p0
.end method
