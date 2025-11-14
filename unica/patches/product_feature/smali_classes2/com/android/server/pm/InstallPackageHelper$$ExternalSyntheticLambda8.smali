.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Lcom/android/server/pm/MoveInfo;

.field public final synthetic f$5:J

.field public final synthetic f$6:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;JLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/pm/MoveInfo;

    iput-wide p6, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$5:J

    iput-object p8, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$6:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/pm/MoveInfo;

    iget-wide v5, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$5:J

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$6:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/InstallRequest;

    iget-object v8, v8, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v8, :cond_0

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->commitInstallPackages(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(J)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v3, v9, p0}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(J)V

    throw v1
.end method
