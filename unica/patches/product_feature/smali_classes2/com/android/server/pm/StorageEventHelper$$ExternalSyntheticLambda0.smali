.class public final synthetic Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/StorageEventHelper;

.field public final synthetic f$1:Landroid/os/storage/VolumeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/StorageEventHelper;

    iput-object p2, p0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$pm$StorageEventHelper$$ExternalSyntheticLambda0()V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/StorageEventHelper;

    iget-object v3, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/VolumeInfo;

    iget-object v5, v3, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Loading internal storage is probably a mistake; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    new-instance v4, Lcom/android/server/pm/AppDataHelper;

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v4, v0}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v6, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int/lit8 v6, v6, 0x8

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v7

    :try_start_35
    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit v7
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_229

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    :goto_4e
    if-ge v0, v8, :cond_dd

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v13, v0, 0x1

    check-cast v9, Lcom/android/server/pm/pkg/PackageStateInternal;

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v19, "loadPrivatePackagesInner"

    const/16 v21, 0x0

    const/16 v18, -0x1

    const/16 v20, 0xd

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v14, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_79
    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    const/16 v12, 0x200

    invoke-virtual {v0, v1, v6, v12}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_79 .. :try_end_8a} :catch_8e
    .catchall {:try_start_79 .. :try_end_8a} :catchall_8b

    goto :goto_b8

    :catchall_8b
    move-exception v0

    move-object v1, v0

    goto :goto_d4

    :catch_8e
    move-exception v0

    :try_start_8f
    const-string/jumbo v1, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Failed to scan "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b8
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v1, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    const/4 v1, -0x1

    const v9, 0x20027

    invoke-virtual {v4, v0, v1, v9}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_cd
    .catchall {:try_start_8f .. :try_end_cd} :catchall_8b

    :cond_cd
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    move v0, v13

    const/4 v1, 0x1

    goto/16 :goto_4e

    :goto_d4
    :try_start_d4
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    goto :goto_dc

    :catchall_d8
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_dc
    throw v1

    :cond_dd
    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/storage/StorageManager;

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v6, Landroid/os/storage/StorageManagerInternal;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/storage/StorageManagerInternal;

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_11c
    if-ge v0, v6, :cond_197

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v17, v0, 0x1

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_139

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v0}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v0

    if-eqz v0, :cond_139

    const/4 v0, 0x3

    move v7, v0

    goto :goto_142

    :cond_139
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_194

    const/4 v7, 0x1

    :goto_142
    :try_start_142
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5, v0, v7}, Landroid/os/storage/StorageManager;->prepareUserStorage(Ljava/lang/String;II)V

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v9, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_150
    .catch Ljava/lang/RuntimeException; {:try_start_142 .. :try_end_150} :catch_177

    :try_start_150
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I
    :try_end_152
    .catchall {:try_start_150 .. :try_end_152} :catchall_168

    move-object v8, v9

    const/4 v9, 0x0

    move-object/from16 v18, v8

    const/4 v8, 0x1

    move-object/from16 v19, v18

    move/from16 v18, v6

    move v6, v0

    :try_start_15c
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_165

    :try_start_15f
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_162
    .catch Ljava/lang/RuntimeException; {:try_start_15f .. :try_end_162} :catch_163

    goto :goto_18e

    :catch_163
    move-exception v0

    goto :goto_17a

    :catchall_165
    move-exception v0

    :goto_166
    move-object v6, v0

    goto :goto_16e

    :catchall_168
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v19, v9

    goto :goto_166

    :goto_16e
    :try_start_16e
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_172

    goto :goto_176

    :catchall_172
    move-exception v0

    :try_start_173
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_176
    throw v6
    :try_end_177
    .catch Ljava/lang/RuntimeException; {:try_start_173 .. :try_end_177} :catch_163

    :catch_177
    move-exception v0

    move/from16 v18, v6

    :goto_17a
    const-string/jumbo v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to prepare storage: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18e
    move/from16 v0, v17

    move/from16 v6, v18

    :goto_192
    const/4 v7, 0x1

    goto :goto_11c

    :cond_194
    move/from16 v0, v17

    goto :goto_192

    :cond_197
    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_19e
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v16, 0x1

    xor-int/lit8 v6, v4, 0x1

    if-nez v4, :cond_1d7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Partitions fingerprint changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; regranting permissions for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_1d7

    :catchall_1d5
    move-exception v0

    goto :goto_225

    :cond_1d7
    :goto_1d7
    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    invoke-virtual {v11}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    monitor-exit v1
    :try_end_1ec
    .catchall {:try_start_19e .. :try_end_1ec} :catchall_1d5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v12, v6

    :goto_1f1
    if-ge v12, v0, :cond_201

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    check-cast v1, Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto :goto_1f1

    :cond_201
    iget-object v11, v2, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    iget-object v4, v2, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v4

    :try_start_217
    iget-object v0, v2, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    return-void

    :catchall_222
    move-exception v0

    monitor-exit v4
    :try_end_224
    .catchall {:try_start_217 .. :try_end_224} :catchall_222

    throw v0

    :goto_225
    :try_start_225
    monitor-exit v1
    :try_end_226
    .catchall {:try_start_225 .. :try_end_226} :catchall_1d5

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_229
    move-exception v0

    :try_start_22a
    monitor-exit v7
    :try_end_22b
    .catchall {:try_start_22a .. :try_end_22b} :catchall_229

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method


# virtual methods
.method public final run()V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v2, :pswitch_data_136

    iget-object v2, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/StorageEventHelper;

    iget-object v0, v0, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/VolumeInfo;

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Unloading internal storage is probably a mistake; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    :cond_1f
    iget-object v4, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_35
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v13
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_121

    :try_start_3c
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v5, 0x0

    move v6, v5

    :goto_4c
    if-ge v6, v15, :cond_d4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v16, v6, 0x1

    move-object/from16 v17, v7

    check-cast v17, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_61

    move/from16 v6, v16

    goto :goto_4c

    :cond_61
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "unloadPrivatePackagesInner"

    const/4 v11, -0x1

    invoke-virtual {v7, v11, v1, v8, v10}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v18
    :try_end_73
    .catchall {:try_start_3c .. :try_end_73} :catchall_c9

    move v7, v5

    :try_start_74
    iget-object v5, v2, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    move-object v8, v6

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v11}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/4 v12, 0x0

    move v10, v7

    const/4 v7, 0x0

    move-object/from16 v19, v8

    const/4 v8, 0x0

    move/from16 v20, v10

    const/4 v10, 0x1

    move/from16 v21, v1

    move-object/from16 v1, v19

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    :catchall_97
    move-exception v0

    move-object v1, v0

    goto :goto_cb

    :cond_9a
    const-string/jumbo v1, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unload "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_74 .. :try_end_b5} :catchall_97

    :goto_b5
    :try_start_b5
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageFreezer;->close()V

    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v1

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_b5 .. :try_end_c3} :catchall_c9

    move/from16 v6, v16

    move/from16 v1, v21

    const/4 v5, 0x0

    goto :goto_4c

    :catchall_c9
    move-exception v0

    goto :goto_124

    :goto_cb
    :try_start_cb
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d3

    :catchall_cf
    move-exception v0

    :try_start_d0
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d3
    throw v1

    :cond_d4
    move/from16 v21, v1

    iget-object v1, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    monitor-exit v13
    :try_end_dd
    .catchall {:try_start_d0 .. :try_end_dd} :catchall_c9

    :try_start_dd
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_df
    .catchall {:try_start_dd .. :try_end_df} :catchall_121

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    iget-object v10, v2, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v1, v2, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    iget-object v1, v2, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_f7
    iget-object v2, v2, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_101
    .catchall {:try_start_f7 .. :try_end_101} :catchall_11e

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    move v5, v7

    :goto_111
    const/4 v0, 0x3

    if-ge v5, v0, :cond_11d

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_111

    :cond_11d
    :goto_11d
    return-void

    :catchall_11e
    move-exception v0

    :try_start_11f
    monitor-exit v1
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    throw v0

    :catchall_121
    move-exception v0

    move-object v1, v0

    goto :goto_128

    :goto_124
    :try_start_124
    monitor-exit v13
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_c9

    :try_start_125
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_121

    :goto_128
    :try_start_128
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_12c

    goto :goto_130

    :catchall_12c
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_130
    throw v1

    :pswitch_131  #0x0
    invoke-direct {v0}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;->run$com$android$server$pm$StorageEventHelper$$ExternalSyntheticLambda0()V

    return-void

    nop

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_131  #00000000
    .end packed-switch
.end method
