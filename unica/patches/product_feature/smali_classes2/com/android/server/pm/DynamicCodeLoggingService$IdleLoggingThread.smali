.class public final Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mParams:Landroid/app/job/JobParameters;

.field public final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    const-string p1, "DynamicCodeLoggingService_IdleLoggingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :try_start_0
    const-string/jumbo v7, "auditd"

    invoke-static {v7}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v7

    filled-new-array {v7}, [I

    move-result-object v7

    aget v8, v7, v5

    if-ne v8, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v4, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7, v8}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    sget-object v7, Lcom/android/server/pm/DynamicCodeLoggingService;->EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move v9, v5

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    iget-object v10, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-boolean v10, v10, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    if-eqz v10, :cond_1

    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Stopping AuditWatchingJob run at scheduler request"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/EventLog$Event;

    invoke-virtual {v10}, Landroid/util/EventLog$Event;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v10}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v10

    instance-of v12, v10, Ljava/lang/String;

    if-nez v12, :cond_3

    goto :goto_3

    :cond_3
    check-cast v10, Ljava/lang/String;

    const-string/jumbo v12, "type=1400 "

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v10, v5}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v10

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    move-object v10, v12

    goto :goto_2

    :cond_7
    :goto_1
    move-object v10, v0

    :cond_8
    :goto_2
    move-object v14, v10

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10, v11}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    array-length v12, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v12, :cond_9

    goto :goto_3

    :cond_9
    :try_start_2
    aget-object v13, v10, v5

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    iget-object v10, v4, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v11, 0x4e

    move-object v15, v13

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v4, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v10, v2}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_1
    :cond_a
    :goto_3
    add-int/2addr v9, v6

    goto/16 :goto_0

    :goto_4
    sget-object v2, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    const-string v3, "AuditWatchingJob failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_5
    iget-object v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v1, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v5}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_6
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_9

    :cond_c
    const-class v8, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v8}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v8

    :try_start_3
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/android/server/art/DexUseManagerLocal;->getSecondaryDexContainerFileUseInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Lcom/android/server/art/model/DexContainerFileUseInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/art/model/DexContainerFileUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_f
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/art/model/DexContainerFileUseInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/art/model/DexContainerFileUseInfo;->getDexContainerFile()Ljava/lang/String;

    move-result-object v15

    iget-object v11, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v12, 0x44

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v11, v2}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :goto_8
    move-object v1, v0

    goto/16 :goto_1d

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_10
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    :goto_9
    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    iget-object v9, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    new-instance v8, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-boolean v0, v0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Stopping IdleLoggingJob run at scheduler request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_11
    invoke-virtual {v7, v11}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v0

    if-nez v0, :cond_12

    move v5, v4

    goto/16 :goto_1b

    :cond_12
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v0, v5

    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    iget v12, v9, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v13

    const-string v14, "DynamicCodeLogger"

    move-object/from16 v17, v2

    const-wide/16 v2, 0x0

    if-ltz v13, :cond_14

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    :cond_13
    :goto_c
    move v4, v0

    move-object v6, v13

    goto :goto_f

    :cond_14
    :try_start_5
    invoke-virtual {v7}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    invoke-interface {v13, v11, v2, v3, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-nez v13, :cond_15

    goto :goto_d

    :cond_15
    iget-object v13, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_e

    :catch_2
    :goto_d
    move-object/from16 v13, v17

    :goto_e
    invoke-virtual {v15, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v13, :cond_13

    const-string v6, "Could not find package "

    const-string v4, " for user "

    invoke-static {v12, v6, v11, v4, v14}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v4, v12, v11}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_c

    :goto_f
    if-nez v6, :cond_16

    move v0, v4

    move-object/from16 v2, v17

    const/4 v3, 0x2

    const/4 v4, -0x1

    :goto_10
    const/4 v6, 0x1

    goto :goto_b

    :cond_16
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v13, v14

    const/4 v14, 0x2

    goto :goto_11

    :cond_17
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v13, v14

    const/4 v14, 0x1

    :goto_11
    :try_start_6
    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_8

    move/from16 v19, v12

    :try_start_7
    iget v12, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v20, v13

    :try_start_8
    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v21

    if-nez v21, :cond_18

    new-array v0, v5, [B

    move-object v5, v9

    move/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_14

    :cond_18
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v5

    invoke-interface {v5, v10}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_8} :catch_6

    :try_start_9
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object v5, v9

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object v9, v0

    :try_start_a
    invoke-interface/range {v9 .. v14}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_14

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    move-object v5, v9

    move/from16 v2, v19

    move-object/from16 v3, v20

    :goto_12
    :try_start_b
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v17
    :try_end_b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception v0

    goto :goto_13

    :catch_6
    move-exception v0

    move-object v5, v9

    move/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_13

    :catch_7
    move-exception v0

    move-object v5, v9

    move-object v3, v13

    move/from16 v2, v19

    goto :goto_13

    :catch_8
    move-exception v0

    move-object v5, v9

    move v2, v12

    move-object v3, v13

    :goto_13
    const-string v9, "Got InstallerException when hashing file "

    const-string v12, ": "

    invoke-static {v9, v10, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    :goto_14
    iget-char v9, v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    const/16 v12, 0x44

    if-ne v9, v12, :cond_19

    const-string/jumbo v9, "dcl"

    goto :goto_15

    :cond_19
    const-string/jumbo v9, "dcln"

    :goto_15
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v12

    if-eqz v0, :cond_1a

    array-length v13, v0

    const/16 v14, 0x20

    if-ne v13, v14, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move v0, v4

    goto :goto_16

    :cond_1a
    const-string v0, "Got no hash for "

    invoke-static {v0, v10, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v2, v11, v10}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v4

    :goto_16
    iget-object v3, v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, -0x1

    const-wide/16 v13, 0x0

    goto :goto_19

    :cond_1c
    :try_start_c
    invoke-virtual {v7}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    const-wide/16 v13, 0x0

    :try_start_d
    invoke-interface {v5, v4, v13, v14, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    :goto_18
    const/4 v5, -0x1

    goto :goto_19

    :catch_9
    const-wide/16 v13, 0x0

    :catch_a
    const/4 v4, -0x1

    goto :goto_18

    :goto_19
    if-eq v4, v5, :cond_1b

    invoke-virtual {v7, v9, v4, v12}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_17

    :cond_1d
    move-object/from16 v2, v17

    const/4 v3, 0x2

    const/4 v4, -0x1

    :goto_1a
    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_1e
    move v2, v12

    move-object v3, v14

    const/4 v5, -0x1

    const-string v0, "Could not infer CE/DE storage for path "

    invoke-static {v0, v10, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v2, v11, v10}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v4

    move v4, v5

    move-object/from16 v2, v17

    const/4 v3, 0x2

    goto :goto_1a

    :cond_1f
    move-object/from16 v17, v2

    move v5, v4

    if-eqz v0, :cond_20

    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_20
    move-object/from16 v2, v17

    :goto_1b
    move v4, v5

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_a

    :cond_21
    iget-object v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v1, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_1c
    return-void

    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    :goto_1d
    if-eqz v8, :cond_22

    :try_start_f
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1e

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_1e
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
