.class public final Lcom/android/server/pm/resolution/ComponentResolver$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/resolution/ComponentResolver;

.field public final synthetic val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    iput-object p4, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolverSnapshot;

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/resolution/ComponentResolverSnapshot;-><init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method
