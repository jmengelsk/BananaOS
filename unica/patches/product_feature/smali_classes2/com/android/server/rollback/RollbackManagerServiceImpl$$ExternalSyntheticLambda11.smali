.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/ParceledListSlice;

    iput-object p4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$4:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:I

    iget-object v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$2:Landroid/content/pm/ParceledListSlice;

    iget-object v4, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;->f$4:Landroid/content/IntentSender;

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "commitRollback id="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " caller="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "RollbackManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    const/4 v3, 0x0

    move v7, v3

    :goto_0
    iget-object v8, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v8, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/rollback/Rollback;

    iget-object v10, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v10}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v10

    if-ne v10, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string/jumbo v2, "Rollback unavailable"

    const/4 v7, 0x2

    if-nez v8, :cond_2

    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v5, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget v10, v8, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    iget-object v2, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    :goto_2
    iget-object v7, v8, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    iget-object v7, v8, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v7

    iget-object v10, v8, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    if-le v7, v10, :cond_4

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v8, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {v7, v2}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v0, "Rollback may violate a minExtensionVersion constraint"

    invoke-static {v11, v1, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :try_start_0
    iget v2, v8, Lcom/android/server/rollback/Rollback;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    new-instance v7, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v7, v11}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    iget-object v10, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v10}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_6
    :goto_3
    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v14, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v3, v11}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iget-object v9, v8, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v9

    move-object/from16 v17, v12

    invoke-virtual {v9}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    iget-object v9, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    :cond_a
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    :cond_b
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v9

    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    iget-object v10, v8, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    invoke-direct {v12, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_c

    array-length v11, v10

    if-nez v11, :cond_d

    :cond_c
    const/4 v10, 0x0

    :cond_d
    if-nez v10, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup copy of package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is inaccessible"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v1, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_e
    array-length v11, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_11

    aget-object v15, v10, v12

    move-object/from16 v25, v2

    const/high16 v2, 0x10000000

    invoke-static {v15, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v24
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageInstaller$Session;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v9

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v20, 0x0

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v24}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    :try_start_5
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v24, :cond_f

    :try_start_6
    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v18

    move-object/from16 v2, v25

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_8

    :goto_7
    :try_start_7
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_8
    if-eqz v24, :cond_10

    :try_start_8
    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_9
    throw v2

    :cond_11
    move-object/from16 v25, v2

    move-object/from16 v2, v17

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    move-object v12, v2

    move-object/from16 v2, v25

    const/4 v3, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_12
    move-object v2, v12

    invoke-static {v13}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->rescuePartyResetDeviceConfigForPackages(Ljava/util/List;)V

    new-instance v3, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;

    invoke-direct {v3, v8, v1, v5, v0}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {v0, v3}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    const-string v3, ""

    const/4 v4, 0x3

    invoke-virtual {v8, v4, v3}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3, v7}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    new-instance v3, Landroid/content/IntentSender;

    iget-object v0, v0, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Lcom/android/server/rollback/LocalIntentReceiver$1;

    invoke-direct {v3, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_b

    :goto_a
    const-string/jumbo v2, "Rollback failed"

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v1, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    goto :goto_b

    :catch_2
    move v2, v11

    const-string v0, "Invalid callerPackageName"

    invoke-static {v2, v1, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_13
    invoke-static {v7, v1, v5, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method
