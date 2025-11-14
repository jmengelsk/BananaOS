.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public final mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

.field public final mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

.field public mTmpPackageFeatureCallbacks:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/util/CoreLogger;->getBuilder()Lcom/samsung/android/server/util/CoreLogger$Builder;

    move-result-object v0

    const-string/jumbo v1, "PackageFeature"

    iput-object v1, v0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    const-string v1, "*** Logs ***"

    iput-object v1, v0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    const/16 v1, 0xc8

    iput v1, v0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferSize:I

    invoke-virtual {v0}, Lcom/samsung/android/server/util/CoreLogger$Builder;->build()Lcom/samsung/android/server/util/CoreLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$ScpmConsumerInfo;

    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    const-string/jumbo v2, "hz6wdikdtw"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->getScpmController(Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;)Lcom/samsung/android/server/corescpm/ScpmController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-direct {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    check-cast v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    const-string/jumbo v1, "SCPMv2 Token="

    iget-object v2, v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 12

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo p1, "executeShellCommand"

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->logNotStarted(Ljava/io/PrintWriter;Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;)V

    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    array-length p1, p2

    if-lez p1, :cond_6

    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    aget-object v0, p2, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "hidden_api_policy"

    const/4 v3, -0x1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Illegal access."

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_0
    array-length p1, p2

    if-eq p1, v1, :cond_4

    aget-object p1, p2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    sput-boolean v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->sShowPackageName:Z

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-virtual {p0, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->dump(Ljava/io/PrintWriter;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ShowPackageName="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-virtual {p1, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->dump(Ljava/io/PrintWriter;)V

    array-length p1, p2

    if-eq p1, v1, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    aget-object p1, p2, v2

    sget-object p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object p2, p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v4, 0x3e8

    if-eqz p2, :cond_8

    const-string/jumbo p1, "Started update."

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->initializeGroups()V

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v3, v4, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;Ljava/lang/String;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_8
    sget-object p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object p2, p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string/jumbo p1, "Started reset."

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->DIR_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->deleteCacheFiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->initializeGroups()V

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v3, v4, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;Ljava/lang/String;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_9
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeature;->values()[Lcom/samsung/android/server/packagefeature/PackageFeature;

    move-result-object v0

    array-length v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_11

    aget-object v6, v0, v5

    iget-boolean v7, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    if-eqz v7, :cond_10

    iget-object v7, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    iget-object v8, v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->mCommands:[Ljava/lang/String;

    array-length v9, v8

    move v10, v2

    :goto_2
    if-ge v10, v9, :cond_10

    aget-object v11, v8, v10

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v7, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_d

    :cond_c
    :goto_3
    return v1

    :cond_d
    aget-object p1, p2, v2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    if-le v0, v1, :cond_e

    aget-object p2, p2, v1

    goto :goto_4

    :cond_e
    move-object p2, v3

    :goto_4
    invoke-virtual {v7, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->adjustExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    iget-object v7, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    iget-object v2, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v2, v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    if-nez v0, :cond_f

    const-string p1, "Group is null."

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_f
    iget-object v2, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->executeDebugMode([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :goto_6
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_10
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_11
    return v2

    :goto_8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
