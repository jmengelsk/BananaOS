.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final synthetic f$1:Landroid/content/rollback/RollbackInfo;

.field public final synthetic f$2:Landroid/content/pm/VersionedPackage;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$1:Landroid/content/rollback/RollbackInfo;

    iput-object p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$2:Landroid/content/pm/VersionedPackage;

    iput p4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$1:Landroid/content/rollback/RollbackInfo;

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$2:Landroid/content/pm/VersionedPackage;

    iget v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$3:I

    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    const-string/jumbo v4, "android.content.rollback.extra.STATUS"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    iget-object v4, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v7, ""

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string/jumbo v5, "RollbackPackageHealthObserver"

    const-string v6, "Failed to save last staged rollback id"

    invoke-static {v5, v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_2
    const/4 p1, 0x4

    invoke-static {v2, p1, v3, p0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_3

    :cond_1
    const/4 p1, 0x2

    invoke-static {v2, p1, v3, p0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 p1, 0x3

    invoke-static {v2, p1, v3, p0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    iget-object p1, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    iget-object p0, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot(Ljava/lang/Boolean;)V

    iget-object p0, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string/jumbo p1, "Rollback staged install"

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
