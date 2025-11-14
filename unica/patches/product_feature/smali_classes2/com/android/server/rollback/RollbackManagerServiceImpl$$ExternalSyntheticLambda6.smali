.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$2:[I

    iput p4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$3:I

    iput-object p5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$2:[I

    iget v8, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$3:I

    iget-object v9, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;->f$5:I

    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/rollback/Rollback;

    iget-object v6, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v5}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-virtual {v5}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v7, v5, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v5, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v14, v3

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    aget v12, v3, v15

    invoke-virtual {v6, v12}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v16

    if-eqz v16, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "User: "

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isn\'t unlocked, skipping CE userdata backup."

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "RollbackManager"

    invoke-static {v13, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v12}, Landroid/content/rollback/PackageRollbackInfo;->addPendingBackup(I)V

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x3

    :goto_2
    invoke-virtual {v6, v10, v12, v7, v11}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    array-length v10, v3

    if-ge v7, v10, :cond_4

    aget v10, v3, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, v5, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    invoke-static {v5, v6}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    const/4 v4, 0x0

    :goto_5
    iget-object v5, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    iget-object v5, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/android/server/rollback/Rollback;

    move v5, v4

    iget-object v4, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v11}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-virtual {v11}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget-boolean v6, v11, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    if-nez v6, :cond_7

    goto/16 :goto_9

    :cond_7
    iget-object v6, v11, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    array-length v1, v3

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v2, v1, :cond_b

    aget v6, v3, v2

    iget-object v5, v11, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v10, :cond_9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v10, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_7
    move-object v10, v7

    move v7, v5

    move-object v5, v10

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {v4, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    invoke-direct {v10, v6, v8, v9}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object v10, v7

    move v7, v5

    move-object v5, v10

    const/4 v10, 0x3

    const/4 v13, 0x0

    :goto_8
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    or-int/2addr v12, v13

    add-int/lit8 v2, v2, 0x1

    move-object v7, v5

    goto :goto_6

    :cond_b
    if-eqz v12, :cond_d

    iget-object v1, v11, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    invoke-static {v11, v1}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    goto :goto_a

    :cond_c
    :goto_9
    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_5

    :cond_d
    :goto_a
    if-lez v0, :cond_e

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "Only the system is allowed to finish installs"

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-wide/32 v2, 0x40000

    const-string/jumbo v4, "restore"

    invoke-static {v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/16 v2, 0x9

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    return-void
.end method
