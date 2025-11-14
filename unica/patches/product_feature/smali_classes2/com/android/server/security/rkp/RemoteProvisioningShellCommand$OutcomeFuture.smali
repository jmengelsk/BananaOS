.class public final Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final mFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
