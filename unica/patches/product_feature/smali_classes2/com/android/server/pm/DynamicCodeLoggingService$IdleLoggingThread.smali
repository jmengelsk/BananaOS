.class public final Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mParams:Landroid/app/job/JobParameters;

.field public final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->$r8$classId:I

    packed-switch p3, :pswitch_data_1a

    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    const-string p1, "DynamicCodeLoggingService_IdleLoggingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    return-void

    :pswitch_f  #0x1
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_f  #00000001
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .registers 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->$r8$classId:I

    packed-switch v0, :pswitch_data_35a

    const-string v0, ""

    :try_start_e
    const-string/jumbo v7, "auditd"

    invoke-static {v7}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v7

    filled-new-array {v7}, [I

    move-result-object v7

    aget v8, v7, v5

    if-ne v8, v4, :cond_1f

    goto/16 :goto_d9

    :cond_1f
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

    :goto_3e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_d9

    iget-object v10, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-boolean v10, v10, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    if-eqz v10, :cond_57

    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Stopping AuditWatchingJob run at scheduler request"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e0

    :catch_54
    move-exception v0

    goto/16 :goto_d2

    :cond_57
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/EventLog$Event;

    invoke-virtual {v10}, Landroid/util/EventLog$Event;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v12

    if-nez v12, :cond_69

    goto/16 :goto_cf

    :cond_69
    invoke-virtual {v10}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v10

    instance-of v12, v10, Ljava/lang/String;

    if-nez v12, :cond_72

    goto :goto_cf

    :cond_72
    check-cast v10, Ljava/lang/String;

    const-string/jumbo v12, "type=1400 "

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7e

    goto :goto_cf

    :cond_7e
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_88

    goto :goto_cf

    :cond_88
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a7

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9b

    goto :goto_a6

    :cond_9b
    invoke-static {v10, v5}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v10

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    move-object v10, v12

    goto :goto_a7

    :cond_a6
    :goto_a6
    move-object v10, v0

    :cond_a7
    :goto_a7
    move-object v14, v10

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_ab} :catch_54

    :try_start_ab
    invoke-virtual {v4}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10, v11}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_cf

    array-length v12, v10
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_b6} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b6} :catch_54

    if-nez v12, :cond_b9

    goto :goto_cf

    :cond_b9
    :try_start_b9
    aget-object v13, v10, v5

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    iget-object v10, v4, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v11, 0x4e

    move-object v15, v13

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cf

    iget-object v10, v4, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v10, v2}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_cf} :catch_54

    :catch_cf
    :cond_cf
    :goto_cf
    add-int/2addr v9, v6

    goto/16 :goto_3e

    :goto_d2
    sget-object v2, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    const-string v3, "AuditWatchingJob failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d9
    :goto_d9
    iget-object v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v1, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v5}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_e0
    return-void

    :pswitch_e1  #0x0
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

    if-nez v0, :cond_f9

    goto/16 :goto_171

    :cond_f9
    const-class v8, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v8}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v8

    :try_start_108
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_114
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/android/server/art/DexUseManagerLocal;->getSecondaryDexContainerFileUseInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_129
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_114

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Lcom/android/server/art/model/DexContainerFileUseInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/art/model/DexContainerFileUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_13f
    :goto_13f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_129

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

    if-eqz v11, :cond_13f

    iget-object v11, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v11, v2}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z
    :try_end_168
    .catchall {:try_start_108 .. :try_end_168} :catchall_16c

    goto :goto_13f

    :goto_169
    move-object v1, v0

    goto/16 :goto_34f

    :catchall_16c
    move-exception v0

    goto :goto_169

    :cond_16e
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    :goto_171
    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    iget-object v9, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_176
    new-instance v8, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v9
    :try_end_184
    .catchall {:try_start_176 .. :try_end_184} :catchall_34c

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_188
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_343

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-boolean v0, v0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    if-eqz v0, :cond_1a5

    sget-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Stopping IdleLoggingJob run at scheduler request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34b

    :cond_1a5
    invoke-virtual {v7, v11}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v0

    if-nez v0, :cond_1ae

    move v5, v4

    goto/16 :goto_33d

    :cond_1ae
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v0, v5

    :goto_1c0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_32e

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

    if-ltz v13, :cond_1ef

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    :cond_1ec
    :goto_1ec
    move v4, v0

    move-object v6, v13

    goto :goto_213

    :cond_1ef
    :try_start_1ef
    invoke-virtual {v7}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    invoke-interface {v13, v11, v2, v3, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-nez v13, :cond_1fa

    goto :goto_1fd

    :cond_1fa
    iget-object v13, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1fc
    .catch Landroid/os/RemoteException; {:try_start_1ef .. :try_end_1fc} :catch_1fd

    goto :goto_1ff

    :catch_1fd
    :goto_1fd
    move-object/from16 v13, v17

    :goto_1ff
    invoke-virtual {v15, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v13, :cond_1ec

    const-string v6, "Could not find package "

    const-string v4, " for user "

    invoke-static {v12, v6, v11, v4, v14}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v4, v12, v11}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_1ec

    :goto_213
    if-nez v6, :cond_21c

    move v0, v4

    move-object/from16 v2, v17

    const/4 v3, 0x2

    const/4 v4, -0x1

    :goto_21a
    const/4 v6, 0x1

    goto :goto_1c0

    :cond_21c
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_227

    move-object v13, v14

    const/4 v14, 0x2

    goto :goto_231

    :cond_227
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31a

    move-object v13, v14

    const/4 v14, 0x1

    :goto_231
    :try_start_231
    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_233
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_231 .. :try_end_233} :catch_278

    move/from16 v19, v12

    :try_start_235
    iget v12, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_237
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_235 .. :try_end_237} :catch_272

    move-object/from16 v20, v13

    :try_start_239
    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v21

    if-nez v21, :cond_249

    new-array v0, v5, [B

    move-object v5, v9

    move/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_294

    :cond_249
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v5

    invoke-interface {v5, v10}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V
    :try_end_250
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_239 .. :try_end_250} :catch_26b

    :try_start_250
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_252} :catch_25f

    move-object v5, v9

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object v9, v0

    :try_start_258
    invoke-interface/range {v9 .. v14}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_25c} :catch_25d

    goto :goto_294

    :catch_25d
    move-exception v0

    goto :goto_265

    :catch_25f
    move-exception v0

    move-object v5, v9

    move/from16 v2, v19

    move-object/from16 v3, v20

    :goto_265
    :try_start_265
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v17
    :try_end_269
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_265 .. :try_end_269} :catch_269

    :catch_269
    move-exception v0

    goto :goto_27c

    :catch_26b
    move-exception v0

    move-object v5, v9

    move/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_27c

    :catch_272
    move-exception v0

    move-object v5, v9

    move-object v3, v13

    move/from16 v2, v19

    goto :goto_27c

    :catch_278
    move-exception v0

    move-object v5, v9

    move v2, v12

    move-object v3, v13

    :goto_27c
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

    :goto_294
    iget-char v9, v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    const/16 v12, 0x44

    if-ne v9, v12, :cond_29e

    const-string/jumbo v9, "dcl"

    goto :goto_2a1

    :cond_29e
    const-string/jumbo v9, "dcln"

    :goto_2a1
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v12

    if-eqz v0, :cond_2d1

    array-length v13, v0

    const/16 v14, 0x20

    if-ne v13, v14, :cond_2d1

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

    goto :goto_2dd

    :cond_2d1
    const-string v0, "Got no hash for "

    invoke-static {v0, v10, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v2, v11, v10}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v0, v4

    :goto_2dd
    iget-object v3, v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e5
    :goto_2e5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_313

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2fd

    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, -0x1

    const-wide/16 v13, 0x0

    goto :goto_30d

    :cond_2fd
    :try_start_2fd
    invoke-virtual {v7}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5
    :try_end_301
    .catch Landroid/os/RemoteException; {:try_start_2fd .. :try_end_301} :catch_309

    const-wide/16 v13, 0x0

    :try_start_303
    invoke-interface {v5, v4, v13, v14, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4
    :try_end_307
    .catch Landroid/os/RemoteException; {:try_start_303 .. :try_end_307} :catch_30b

    :goto_307
    const/4 v5, -0x1

    goto :goto_30d

    :catch_309
    const-wide/16 v13, 0x0

    :catch_30b
    const/4 v4, -0x1

    goto :goto_307

    :goto_30d
    if-eq v4, v5, :cond_2e5

    invoke-virtual {v7, v9, v4, v12}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2e5

    :cond_313
    move-object/from16 v2, v17

    const/4 v3, 0x2

    const/4 v4, -0x1

    :goto_317
    const/4 v5, 0x0

    goto/16 :goto_21a

    :cond_31a
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

    goto :goto_317

    :cond_32e
    move-object/from16 v17, v2

    move v5, v4

    if-eqz v0, :cond_33b

    iget-object v0, v7, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    goto :goto_33d

    :cond_33b
    move-object/from16 v2, v17

    :goto_33d
    move v4, v5

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_188

    :cond_343
    iget-object v0, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v1, v1, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_34b
    return-void

    :catchall_34c
    move-exception v0

    :try_start_34d
    monitor-exit v9
    :try_end_34e
    .catchall {:try_start_34d .. :try_end_34e} :catchall_34c

    throw v0

    :goto_34f
    if-eqz v8, :cond_359

    :try_start_351
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_354
    .catchall {:try_start_351 .. :try_end_354} :catchall_355

    goto :goto_359

    :catchall_355
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_359
    :goto_359
    throw v1

    :pswitch_data_35a
    .packed-switch 0x0
        :pswitch_e1  #00000000
    .end packed-switch
.end method
