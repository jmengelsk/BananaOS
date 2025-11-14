.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/permission/Permission;

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v5, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v6

    :try_start_0
    array-length v7, v5

    :goto_0
    if-ge v1, v7, :cond_1

    aget v8, v5, v1

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v9

    invoke-virtual {v3, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Missing permissions state for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " and user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v8, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-void

    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :pswitch_0
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    check-cast v0, [I

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v4, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    iget-object v6, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v0, "PermissionManager"

    const-string/jumbo v1, "Missing shared user Api for "

    invoke-static {v5, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2
    iget-object v5, v6, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    goto :goto_3

    :cond_3
    iget-object v5, v4, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    :goto_3
    iget-object v6, v5, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    iget-object v6, v5, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    iget v6, v4, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iget-object v7, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v7

    :try_start_2
    array-length v8, v0

    move v9, v1

    :goto_4
    if-ge v9, v8, :cond_8

    aget v10, v0, v9

    iget-object v11, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    iget-object v11, v11, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/permission/UserPermissionState;

    if-nez v11, :cond_5

    const-string/jumbo v11, "PermissionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Missing user state for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    move-object/from16 p0, v0

    move/from16 v16, v2

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_5
    iget-object v12, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v13, v11, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v4, v2, v2}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    :cond_6
    invoke-virtual {v11, v6}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v11

    if-nez v11, :cond_7

    const-string/jumbo v11, "PermissionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Missing permission state for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " and user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iget-boolean v12, v11, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    invoke-virtual {v5, v10, v12}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(IZ)V

    invoke-virtual {v11}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move v13, v1

    :goto_6
    if-ge v13, v12, :cond_4

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/permission/PermissionState;

    new-instance v15, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move/from16 v16, v2

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v14, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v1

    move-object/from16 p0, v0

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v0

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v14

    invoke-direct {v15, v2, v14, v1, v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v5, v15, v10}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_6

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_8
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    :goto_8
    return-void

    :goto_9
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :pswitch_1
    move/from16 v16, v2

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    check-cast v0, [I

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    check-cast v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_9

    const-string/jumbo v0, "PermissionManager"

    const-string/jumbo v1, "Missing shared user Api for "

    invoke-static {v4, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_9
    iget-object v4, v5, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    goto :goto_a

    :cond_a
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    :goto_a
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5

    :try_start_4
    array-length v6, v0

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v6, :cond_b

    aget v8, v0, v7

    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v9

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isInstallPermissionsFixed()Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    invoke-virtual {v9, v3}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    iget-object v11, v4, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    iput-boolean v11, v9, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    invoke-virtual {v4, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_b
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    :goto_c
    return-void

    :goto_d
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
