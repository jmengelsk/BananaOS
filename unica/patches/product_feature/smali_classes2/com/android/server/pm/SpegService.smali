.class public Lcom/android/server/pm/SpegService;
.super Lcom/android/server/ProfileService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBlockContinualSpeg:Z

.field public mBlockSpegInstallation:Z

.field public final mContext:Landroid/content/Context;

.field public mInstaller:Lcom/android/server/pm/Installer;

.field public mIsCacheMode:Z

.field public mIsSpegInOpeartion:Z

.field public mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPrevInstalledPkg:Ljava/lang/String;

.field public volatile mService:Landroid/os/ISpegHelperService;

.field public mSetupWizardFinished:Z

.field public final mSharedPrefsDumps:Landroid/content/SharedPreferences;

.field public mSpegBlockStartTime:J

.field public mSpegDisplayId:I

.field public mSpegFirstLaunchTime:J

.field public mSpegLaunchesCount:I

.field public mSpegPackage:Ljava/lang/String;

.field public mSpegPrevLaunchTime:J

.field public mSpegUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const-string/jumbo v0, "SpegService"

    const-string/jumbo v1, "speg_helper"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ProfileService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.speg.cache_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/SpegService;->mSpegPackage:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    iput v0, p0, Lcom/android/server/pm/SpegService;->mSpegDisplayId:I

    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mBlockSpegInstallation:Z

    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mSetupWizardFinished:Z

    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    iput v1, p0, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/pm/SpegService;->mSpegFirstLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/pm/SpegService;->mSpegPrevLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    iput-object p1, p0, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    const-string v0, "/system/etc/speg-package-blocklist.conf"

    invoke-virtual {p0, v0}, Lcom/android/server/ProfileService;->initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ProfileService;->packageBlockList:Ljava/util/Set;

    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/pm/SpegService;->cleanupMarkerFiles()V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_45

    :catch_3c
    move-exception v0

    iget-object v2, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unexpected failure in cleanup marker files"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "speg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "dumps"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SpegService;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static waitForProcessDeath(I)V
    .registers 6

    if-gtz p0, :cond_3

    goto :goto_15

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x1f4

    int-to-long v2, v2

    add-long/2addr v2, v0

    :goto_b
    cmp-long v4, v0, v2

    if-gez v4, :cond_1b

    sub-long v0, v2, v0

    long-to-int v0, v0

    :try_start_12
    invoke-static {p0, v0}, Landroid/os/Process;->waitForProcessDeath(II)V
    :try_end_15
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_12 .. :try_end_15} :catch_1b
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_b

    :catch_1b
    :cond_1b
    const-string/jumbo v0, "Timeout occurred during waitForProcessDeath "

    const-string/jumbo v1, "SPEG"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkAppId(I)Z
    .registers 2

    const/16 p0, 0x2710

    if-lt p1, p0, :cond_b

    const/16 p0, 0x4e1f

    if-le p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public final cleanupMarkerFiles()V
    .registers 15

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/speg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    if-eqz v1, :cond_118

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_118

    :cond_17
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_23

    const-string p0, "Failed to get list of files in /data/misc/speg"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v1, :cond_117

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_113

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "speg."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto/16 :goto_113

    :cond_3f
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Old speg marker file exists for uid "

    invoke-static {v7, v6, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_52} :catch_fd

    const-class v7, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    if-nez v7, :cond_65

    const-string v6, "Could not get package manager"

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_e0

    :cond_65
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    if-nez v8, :cond_73

    const-string v7, "Could not find app with uid "

    invoke-static {v6, v7, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_e0

    :cond_73
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v7, v10, v9}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "base.speg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_e0

    :cond_b4
    new-instance v8, Ljava/util/ArrayList;

    array-length v10, v9

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    array-length v10, v9

    move v11, v3

    :goto_bc
    if-ge v11, v10, :cond_df

    aget-object v12, v9, v11

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    if-eqz v12, :cond_dc

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    add-int/lit8 v11, v11, 0x1

    goto :goto_bc

    :cond_df
    move-object v6, v8

    :goto_e0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    goto :goto_e4

    :cond_f9
    invoke-virtual {p0, v5}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    goto :goto_113

    :catch_fd
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to convert uid "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to int"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_113
    :goto_113
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_26

    :cond_117
    return-void

    :cond_118
    :goto_118
    const-string p0, "Failed to read /data/misc/speg"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final createMarkerFile(Ljava/io/File;Z)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_52
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_6} :catch_52

    if-eqz p2, :cond_40

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    :try_start_f
    new-instance p2, Ljava/io/FileWriter;

    invoke-direct {p2, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_1f

    :try_start_14
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_21

    :try_start_1b
    invoke-virtual {p2}, Ljava/io/FileWriter;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_40

    :catch_1f
    move-exception p2

    goto :goto_2b

    :catchall_21
    move-exception v2

    :try_start_22
    invoke-virtual {p2}, Ljava/io/FileWriter;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p2

    :try_start_27
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw v2
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_1f

    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot write to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    return v1

    :cond_40
    :goto_40
    :try_start_40
    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_47} :catch_48

    return p2

    :catch_48
    move-exception p2

    const-string v2, "Failed to change file permissions"

    invoke-static {v0, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    return v1

    :catch_52
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "speg."

    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/speg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1e} :catch_64

    const/4 p2, 0x1

    if-nez p3, :cond_28

    invoke-virtual {p0, v3}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    return p2

    :cond_28
    invoke-virtual {p0, v3, p2}, Lcom/android/server/pm/SpegService;->createMarkerFile(Ljava/io/File;Z)Z

    move-result p3

    if-nez p3, :cond_2f

    return v2

    :cond_2f
    const-string/jumbo p3, "audio"

    :try_start_32
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v4

    const-class v5, Ljava/nio/file/attribute/PosixFileAttributeView;

    new-array v6, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v5, v6}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-virtual {v4, p3}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/nio/file/attribute/PosixFileAttributeView;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4f} :catch_5a

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/SpegService;->createMarkerFile(Ljava/io/File;Z)Z

    move-result p1

    if-nez p1, :cond_59

    invoke-virtual {p0, v3}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    return v2

    :cond_59
    return p2

    :catch_5a
    move-exception p1

    const-string p2, "Failed to change group"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    return v2

    :catch_64
    move-exception p0

    const-string p1, "Invalid marker file path"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public final deleteMarkerFile(Ljava/io/File;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to delete marker file: "

    const-string/jumbo v1, "Marker file "

    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :catch_22
    move-exception v0

    goto :goto_3a

    :cond_24
    :goto_24
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_39} :catch_22

    return-void

    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception during "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " deletion"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    return-void
.end method

.method public final getBinderOfService()Landroid/os/IBinder;
    .registers 1

    const-string/jumbo p0, "speg_helper"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final getPidOf(ILjava/lang/String;)I
    .registers 13

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/cgroup/apps/uid_"

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_c4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_c4

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_20

    goto/16 :goto_c4

    :cond_20
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_23
    if-ge v3, v0, :cond_c4

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pid_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto/16 :goto_c0

    :cond_3c
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/proc/"

    const-string v6, "/cmdline"

    invoke-static {v5, v4, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    if-eqz v6, :cond_9c

    :try_start_55
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_66} :catch_7a

    :try_start_66
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7e

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v1, :cond_7e

    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_7c

    :try_start_76
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_9d

    :catch_7a
    move-exception v5

    goto :goto_8b

    :catchall_7c
    move-exception v6

    goto :goto_82

    :cond_7e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_7a

    goto :goto_9c

    :goto_82
    :try_start_82
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v5

    :try_start_87
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8a
    throw v6
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_7a

    :goto_8b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed to read process name for pid "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9c
    :goto_9c
    const/4 v6, 0x0

    :goto_9d
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    :try_start_a3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_a7} :catch_a8

    return p0

    :catch_a8
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to convert pid "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to int"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c4

    :cond_c0
    :goto_c0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_23

    :cond_c4
    :goto_c4
    return v1
.end method

.method public final init(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public final initializeInterfaceOfService()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    return-void
.end method

.method public final installSpegCacheToDalvikCache(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/SpegService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "Not found installer"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-nez p0, :cond_16

    goto :goto_26

    :cond_16
    :try_start_16
    iget-object p0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->installSpegCacheToDalvikCache(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    const-string/jumbo p1, "SPEG"

    const-string p2, "Cache installation failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v1
.end method

.method public final isServiceRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "speg_helper is not running"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public final isSpegInOpeartion(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/server/pm/SpegService;->mSpegPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final selectSuitableProfileService()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/SpegService;->updateModeIfNeeded()V

    iget-boolean v0, p0, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Skip "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ProfileService;->SERVICE_NAME:Ljava/lang/String;

    const-string v2, " in cached mode"

    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    invoke-super {p0}, Lcom/android/server/ProfileService;->selectSuitableProfileService()V

    return-void
.end method

.method public final setInterfaceOfService(Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p1}, Landroid/os/ISpegHelperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISpegHelperService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    return-void
.end method

.method public final setSpegInOpeartion(IILjava/lang/String;)V
    .registers 4

    iput-object p3, p0, Lcom/android/server/pm/SpegService;->mSpegPackage:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    iput p2, p0, Lcom/android/server/pm/SpegService;->mSpegDisplayId:I

    if-eqz p3, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    return-void
.end method

.method public final spegClearPackage(ILjava/lang/String;)V
    .registers 12

    const-string v1, ", error: "

    const-string/jumbo v2, "SPEG"

    const/4 v3, 0x0

    :try_start_6
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v3, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeRecentTasksByPackageName(ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_2a

    :catch_12
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t remove recent task for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    iget-object p0, p0, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    if-eqz v0, :cond_47

    invoke-virtual {v0, p2}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_47

    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v3}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_5d

    :cond_47
    :goto_47
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Clear package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    if-nez v3, :cond_64

    const-string p0, "Can\'t clear app data for "

    invoke-static {p0, p2, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    const-class p0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriGrantsManagerInternal;

    :try_start_6c
    check-cast p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->removeUriPermissionsForPackage(ILjava/lang/String;Z)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_73

    goto :goto_8c

    :catch_73
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t restore default permissions for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/job/JobSchedulerInternal;

    :try_start_95
    const-string/jumbo v8, "clear data"
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_a5

    const/16 v6, 0xe

    const/16 v7, 0x8

    const/4 v5, 0x1

    move v4, p1

    :try_start_9e
    invoke-interface/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerInternal;->cancelJobsForUid(IZIILjava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_bf

    :catch_a2
    move-exception v0

    :goto_a3
    move-object p0, v0

    goto :goto_a8

    :catch_a5
    move-exception v0

    move v4, p1

    goto :goto_a3

    :goto_a8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t clear scheduled jobs for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bf
    const-class p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    :try_start_c7
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cc} :catch_e3

    :try_start_cc
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/16 v0, 0x3e8

    if-ne v4, v0, :cond_d3

    goto :goto_dd

    :cond_d3
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    const/4 v3, 0x0

    invoke-direct {v0, v4, v3}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(II)V

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    :goto_dd
    monitor-exit p1

    goto :goto_fc

    :catchall_df
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_e2
    .catchall {:try_start_cc .. :try_end_e2} :catchall_df

    :try_start_e2
    throw p0
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e3} :catch_e3

    :catch_e3
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t clear pending alarms for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fc
    return-void
.end method

.method public final storePrimaryProf(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ProfileService;->checkUserAndService(II)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    invoke-interface {v1, p2, p3, p1}, Landroid/os/ISpegHelperService;->storePrimaryProf(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_e} :catch_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_e} :catch_12

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :catch_12
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "Trying to use disabled speg"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :catch_1b
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to prepare profile"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    return v0
.end method

.method public final updateModeIfNeeded()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    const-string/jumbo v1, "com.samsung.speg.cache_mode"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    if-eqz v0, :cond_2e

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/pm/SpegService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache mode is disabled, connecting to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ProfileService;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/server/ProfileService;->selectSuitableProfileService()V

    :cond_2e
    return-void
.end method
