.class public final synthetic Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/Rollback;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/content/IntentSender;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/Rollback;

    iput-object p2, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$3:Landroid/content/IntentSender;

    iput-object p5, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/rollback/Rollback;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$3:Landroid/content/IntentSender;

    iget-object p0, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;->f$4:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    const-string/jumbo v4, "android.content.pm.extra.STATUS"

    const/4 v8, 0x1

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string p0, "Commit failed"

    invoke-virtual {v0, v8, p0}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    iput-boolean v5, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    iget-object p0, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Rollback downgrade install failed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {v0, v3, v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v5, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    :cond_1
    iget-object v1, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v4, Ljava/io/File;

    iget-object v6, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    invoke-static {v0, p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    move p0, v5

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.content.rollback.extra.STATUS"

    invoke-virtual {v5, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    const-string/jumbo v2, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v3, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method
