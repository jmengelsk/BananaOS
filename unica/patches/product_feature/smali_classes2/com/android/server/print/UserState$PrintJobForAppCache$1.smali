.class public final Lcom/android/server/print/UserState$PrintJobForAppCache$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field public final synthetic val$appId:I

.field public final synthetic val$creator:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    iput-object p2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    iget-object v0, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    iget-object v1, v1, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
