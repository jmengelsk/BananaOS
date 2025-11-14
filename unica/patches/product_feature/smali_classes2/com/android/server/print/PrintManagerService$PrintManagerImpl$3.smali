.class public final Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field public final synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object v0, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object v1, v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/print/UserState;->destroyLocked()V

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object v1, v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object v0, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object v0, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/print/UserState;->removeObsoletePrintJobs()V

    :goto_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
