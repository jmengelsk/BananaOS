.class public final synthetic Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/FileUtils$ProgressListener;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(JLjava/util/concurrent/atomic/AtomicBoolean;Landroid/os/CancellationSignal;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$0:J

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$2:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .registers 6

    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$0:J

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$2:Landroid/os/CancellationSignal;

    cmp-long p1, p1, v0

    if-lez p1, :cond_11

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_11
    return-void
.end method
