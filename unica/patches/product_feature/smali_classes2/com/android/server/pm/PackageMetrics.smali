.class public final Lcom/android/server/pm/PackageMetrics;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mInstallStartTimestampMillis:J

.field public final mInstallSteps:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    iput-object p1, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    return-void
.end method


# virtual methods
.method public final onStepFinished(I)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    if-eqz p0, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mStartTimestampMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    :cond_13
    return-void
.end method

.method public final onStepStarted(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-direct {v0}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final reportInstallationStats(Z)V
    .registers 40

    move-object/from16 v0, p0

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    sub-long v22, v2, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_21
    iget-object v6, v0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_5a

    iget-object v6, v0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageMetrics$InstallStep;

    iget-wide v9, v6, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    cmp-long v6, v9, v7

    if-ltz v6, :cond_57

    iget-object v6, v0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageMetrics$InstallStep;

    iget-wide v6, v6, Lcom/android/server/pm/PackageMetrics$InstallStep;->mDurationMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_5a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [J

    move v10, v4

    :goto_67
    if-ge v10, v5, :cond_84

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v6, v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    :cond_84
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v10, v0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    iget-object v12, v0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    iget-object v3, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p1, :cond_9f

    if-eqz v3, :cond_9c

    iget v5, v3, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_9c

    goto :goto_9f

    :cond_9c
    iget-object v5, v0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    goto :goto_a0

    :cond_9f
    :goto_9f
    const/4 v5, 0x0

    :goto_a0
    if-eqz v3, :cond_ab

    iget-object v6, v3, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz v6, :cond_ab

    iget v6, v6, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    :goto_a8
    move/from16 v25, v6

    goto :goto_ae

    :cond_ab
    iget v6, v0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    goto :goto_a8

    :goto_ae
    if-eqz p1, :cond_101

    iget-boolean v6, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    if-eqz v6, :cond_e1

    iget-object v6, v0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v6, :cond_db

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v7

    new-instance v9, Ljava/io/File;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    :try_start_ca
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    new-instance v13, Lcom/android/server/pm/PackageMetrics$1;

    invoke-direct {v13, v9, v6}, Lcom/android/server/pm/PackageMetrics$1;-><init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v11, v13}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d6} :catch_d6

    :catch_d6
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    goto :goto_dc

    :cond_db
    move-wide v13, v7

    :goto_dc
    move-wide/from16 v18, v7

    move-wide/from16 v16, v13

    goto :goto_105

    :cond_e1
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-eqz v6, :cond_101

    iget-wide v7, v6, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget-object v6, v6, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    new-instance v9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    :try_start_f0
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    new-instance v13, Lcom/android/server/pm/PackageMetrics$1;

    invoke-direct {v13, v6, v9}, Lcom/android/server/pm/PackageMetrics$1;-><init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v11, v13}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_fc} :catch_fc

    :catch_fc
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    goto :goto_dc

    :cond_101
    move-wide/from16 v16, v7

    move-wide/from16 v18, v16

    :goto_105
    iget v6, v0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    const/4 v7, -0x1

    iget v8, v0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    if-ne v8, v7, :cond_110

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    :cond_110
    invoke-static {v8, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v11

    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v13

    iget v14, v0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iget v15, v0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v1

    check-cast v20, [I

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v1

    check-cast v21, [J

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v24

    if-nez v3, :cond_135

    move/from16 v27, v4

    goto :goto_139

    :cond_135
    iget v1, v3, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    move/from16 v27, v1

    :goto_139
    iget v1, v0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_140

    const/4 v4, 0x1

    :cond_140
    move/from16 v29, v4

    iget-boolean v1, v0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    iget-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    iget-boolean v3, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    iget-boolean v4, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v34

    const/16 v26, -0x1

    const/16 v35, 0x0

    iget v7, v0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    iget v8, v0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    iget-boolean v6, v0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    iget v0, v0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    move/from16 v37, v0

    move/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    move/from16 v36, v6

    move/from16 v28, v8

    const/16 v6, 0x20c

    move-object v8, v5

    invoke-static/range {v6 .. v37}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    return-void
.end method
