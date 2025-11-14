.class public final synthetic Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/GentleUpdateHelper;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

.field public final synthetic f$3:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/GentleUpdateHelper;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/CompletableFuture;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    iput-object p2, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

    iput-object p4, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/CompletableFuture;

    iput-wide p5, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    iget-object v2, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

    iget-object v4, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/CompletableFuture;

    iget-wide v5, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$4:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;-><init>(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/CompletableFuture;J)V

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isDeviceIdleRequired()Z

    move-result p0

    if-eqz p0, :cond_33

    new-instance p0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v2, v0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/pm/GentleUpdateHelper;->scheduleIdleJob()V

    iget-object v2, v0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-wide v4, Lcom/android/server/pm/GentleUpdateHelper;->PENDING_CHECK_MILLIS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_39

    :cond_33
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    :goto_39
    new-instance v2, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/GentleUpdateHelper;Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method
