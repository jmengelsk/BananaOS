.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mName:Ljava/lang/String;

.field public final mOnServiceFailure:Ljava/lang/Runnable;

.field public final mRequest:Ljava/lang/Runnable;

.field public final mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field public final mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda12;

    const-string/jumbo v0, "handling pending request"

    invoke-direct {p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/android/internal/util/FunctionalUtils;->handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda12;

    const-string/jumbo p2, "notifying callback of service failure"

    invoke-direct {p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p1}, Lcom/android/internal/util/FunctionalUtils;->handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput-object p6, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz p4, :cond_32

    const/4 p1, 0x0

    :try_start_2a
    invoke-interface {p4, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_32
    :goto_32
    iput p7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mUid:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p0
.end method
