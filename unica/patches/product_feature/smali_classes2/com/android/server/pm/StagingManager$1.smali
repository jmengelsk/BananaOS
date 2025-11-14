.class public final Lcom/android/server/pm/StagingManager$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/StagingManager;

.field public final synthetic val$observer:Landroid/content/pm/IStagedApexObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/StagingManager;Landroid/content/pm/IStagedApexObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    iput-object p2, p0, Lcom/android/server/pm/StagingManager$1;->val$observer:Landroid/content/pm/IStagedApexObserver;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    iget-object v0, v0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    iget-object v1, v1, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/StagingManager$1;->val$observer:Landroid/content/pm/IStagedApexObserver;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
