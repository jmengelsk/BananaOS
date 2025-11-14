.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    iput p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    iget v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:I

    iget v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    const/4 v4, 0x1

    const-class v5, Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v6, "RollbackManager"

    const/4 v7, 0x0

    if-nez v2, :cond_31

    const-string/jumbo v0, "Unable to find session for enabled rollback."

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_349

    :cond_31
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->hasParentSessionId()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    goto :goto_41

    :cond_40
    move-object v1, v2

    :goto_41
    if-nez v1, :cond_4b

    const-string/jumbo v0, "Unable to find parent session for enabled rollback."

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_349

    :cond_4b
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    move-result-object v8

    if-nez v8, :cond_108

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    move v8, v7

    :goto_5c
    iget-object v9, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    const v10, 0x7ffffffe

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v11, v9, 0x1

    iget-object v9, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_f7

    iget-object v8, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v11, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    :goto_86
    move v15, v8

    goto :goto_91

    :cond_88
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    goto :goto_86

    :goto_91
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v13

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v8

    if-eqz v8, :cond_a6

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v8

    :goto_a3
    move-object/from16 v17, v8

    goto :goto_ab

    :cond_a6
    new-array v8, v4, [I

    aput v13, v8, v7

    goto :goto_a3

    :goto_ab
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v8

    if-eqz v8, :cond_cd

    iget-object v8, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v18

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/io/File;

    iget-object v8, v8, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Lcom/android/server/rollback/Rollback;

    const/4 v14, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    :goto_cb
    move-object v8, v10

    goto :goto_e8

    :cond_cd
    iget-object v8, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v18

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/io/File;

    iget-object v8, v8, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Lcom/android/server/rollback/Rollback;

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    goto :goto_cb

    :goto_e8
    iget-wide v9, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iput-wide v9, v8, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_108

    :cond_f7
    add-int/lit8 v9, v8, 0x1

    const/16 v10, 0x20

    if-ge v8, v10, :cond_100

    move v8, v9

    goto/16 :goto_5c

    :cond_100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate rollback ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_108
    :goto_108
    const-string v1, " is not installed"

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    iget v9, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v10, 0x40000

    and-int/2addr v10, v9

    if-nez v10, :cond_11c

    const-string/jumbo v0, "Rollback is not enabled."

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_348

    :cond_11c
    and-int/lit16 v10, v9, 0x800

    if-eqz v10, :cond_128

    const-string/jumbo v0, "Rollbacks not supported for instant app install"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_348

    :cond_128
    iget-object v10, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v10, :cond_134

    const-string/jumbo v0, "Session code path has not been resolved."

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_348

    :cond_134
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    iget-object v12, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v7}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v11

    if-eqz v11, :cond_169

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to parse new package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_348

    :cond_169
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v10}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget v12, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    invoke-virtual {v10}, Landroid/content/pm/parsing/ApkLite;->getRollbackDataPolicy()I

    move-result v13

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    if-eqz v13, :cond_17f

    move v12, v13

    :cond_17f
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v13

    const/high16 v14, 0x20000

    if-nez v13, :cond_196

    and-int v13, v9, v14

    if-eqz v13, :cond_196

    const/4 v13, 0x2

    if-eq v12, v13, :cond_196

    const-string/jumbo v0, "Only RETAIN is supported for rebootless APEX: "

    invoke-static {v0, v11, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_348

    :cond_196
    const-string v13, "Enabling rollback for install of "

    const-string v15, ", session:"

    invoke-static {v13, v11, v15}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    const-string v4, ", rollbackDataPolicy="

    move/from16 v16, v14

    const-string v14, ", rollbackId:"

    invoke-static {v15, v12, v4, v14, v13}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v4, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", originalSessionId:"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1ca

    goto :goto_205

    :cond_1ca
    iget-object v13, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v14, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v13, v14, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1db

    const/4 v14, 0x1

    goto :goto_1dc

    :cond_1db
    move v14, v7

    :goto_1dc
    const-string/jumbo v15, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v13, v15, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1e7

    const/4 v13, 0x1

    goto :goto_1e8

    :cond_1e7
    move v13, v7

    :goto_1e8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/SystemConfig;->mRollbackWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_200

    iget-object v15, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    :try_start_1fa
    invoke-virtual {v15, v11, v7}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v15
    :try_end_1fe
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1fa .. :try_end_1fe} :catch_202

    if-eqz v15, :cond_202

    :cond_200
    if-nez v14, :cond_220

    :catch_202
    :cond_202
    if-eqz v13, :cond_205

    goto :goto_220

    :cond_205
    :goto_205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to enable rollback on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_348

    :cond_220
    :goto_220
    and-int v4, v9, v16

    if-eqz v4, :cond_226

    const/4 v4, 0x1

    goto :goto_227

    :cond_226
    move v4, v7

    :goto_227
    :try_start_227
    invoke-virtual {v0, v11}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_22b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_227 .. :try_end_22b} :catch_336

    if-eqz v4, :cond_2ac

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    check-cast v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v13, v11}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_241
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2ac

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    :try_start_24d
    invoke-virtual {v0, v14}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v15
    :try_end_251
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24d .. :try_end_251} :catch_298

    move-object/from16 v23, v8

    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    new-instance v15, Landroid/content/rollback/PackageRollbackInfo;

    move-object/from16 v16, v15

    new-instance v15, Landroid/content/pm/VersionedPackage;

    move/from16 v24, v4

    const/4 v4, 0x0

    invoke-direct {v15, v14, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, v14, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v22, v12

    move-object/from16 v14, v16

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v22}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    move-object/from16 v8, v23

    iget-object v4, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v12, v22

    move/from16 v4, v24

    const/4 v7, 0x0

    goto :goto_241

    :catch_298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_348

    :cond_2ac
    move/from16 v24, v4

    move/from16 v22, v12

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v4

    int-to-long v12, v4

    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    :try_start_2c4
    invoke-static {v8, v11, v4}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2db

    array-length v4, v1

    const/4 v7, 0x0

    :goto_2cf
    if-ge v7, v4, :cond_2db

    aget-object v14, v1, v7

    invoke-static {v8, v11, v14}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d6
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_2d6} :catch_2d9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2cf

    :catch_2d9
    move-exception v0

    goto :goto_323

    :cond_2db
    new-instance v14, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v15, Landroid/content/pm/VersionedPackage;

    invoke-direct {v15, v11, v12, v13}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v1, Landroid/content/pm/VersionedPackage;

    invoke-direct {v1, v11, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v16, v1

    move/from16 v19, v24

    invoke-direct/range {v14 .. v22}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    move-result v1

    if-ge v1, v2, :cond_315

    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1, v2}, Landroid/content/rollback/RollbackInfo;->setRollbackImpactLevel(I)V

    :cond_315
    invoke-virtual {v8}, Lcom/android/server/rollback/Rollback;->allPackagesEnabled()Z

    move-result v1

    if-eqz v1, :cond_321

    invoke-virtual {v0, v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    move-result v0

    move v7, v0

    goto :goto_349

    :cond_321
    const/4 v7, 0x1

    goto :goto_349

    :goto_323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to copy package for rollback for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_348

    :catch_336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_348
    const/4 v7, 0x0

    :goto_349
    if-nez v7, :cond_34d

    const/4 v4, -0x1

    goto :goto_34e

    :cond_34d
    const/4 v4, 0x1

    :goto_34e
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->arg1:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
