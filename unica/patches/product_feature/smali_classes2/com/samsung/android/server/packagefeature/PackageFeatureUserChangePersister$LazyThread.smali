.class public final Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const-string/jumbo p1, "PackageFeatureUserChangePersister"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$msaveFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$mloadFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p0
.end method
