.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->$r8$classId:I

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Ljava/util/function/Predicate;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_0
    move-object v1, v0

    check-cast v1, Landroid/content/IntentSender;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1c

    :cond_0
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    monitor-exit v4

    const/4 v4, 0x0

    goto/16 :goto_1b

    :catchall_0
    move-exception v0

    goto/16 :goto_20

    :cond_1
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-boolean v9, v2, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v10, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v10, v10, 0x400

    if-nez v10, :cond_5

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v4, v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v7

    :goto_2
    iget-object v10, v2, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    const-string/jumbo v11, "android.permission.INSTALL_PACKAGES"

    iget v12, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v11, v12}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_6

    move v11, v7

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    const-string/jumbo v12, "android.permission.INSTALL_SELF_UPDATES"

    iget v13, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v12, v13}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_7

    move v12, v7

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    const-string/jumbo v13, "android.permission.INSTALL_PACKAGE_UPDATES"

    iget v14, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v13, v14}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_8

    move v13, v7

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_5
    const-string/jumbo v14, "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION"

    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v14, v15}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_9

    move v14, v7

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    :goto_6
    const-string/jumbo v15, "android.permission.INSTALL_DPC_PACKAGES"

    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v15, v3}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a

    move v3, v7

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    const-string/jumbo v15, "android.permission.INSTALL_DEPENDENCY_SHARED_LIBRARIES"

    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v15, v8}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_b

    move v8, v7

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    const-wide v5, 0x100000000L

    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v10, v0, v5, v6, v15}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_d

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    move v6, v7

    :goto_a
    if-eqz v6, :cond_e

    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v10, v0, v15}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object v15

    goto :goto_b

    :cond_e
    const/4 v15, 0x0

    :goto_b
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_c

    :cond_f
    const/4 v7, 0x0

    :goto_c
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Landroid/content/pm/InstallSourceInfo;->getUpdateOwnerPackageName()Ljava/lang/String;

    move-result-object v15

    goto :goto_d

    :cond_10
    const/4 v15, 0x0

    :goto_d
    move/from16 p1, v3

    if-eqz v6, :cond_11

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_e

    :cond_11
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v15, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    move/from16 v17, v3

    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v5, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_f

    :cond_12
    const/4 v3, 0x0

    :goto_f
    iget v5, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move/from16 v18, v3

    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v5, v3, v10, v0}, Lcom/android/server/pm/PackageInstallerSession;->isEmergencyInstallerEnabled(IILcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v0

    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v5}, Landroid/content/pm/parsing/PackageLite;->isIsStaticLibrary()Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_10

    :catchall_1
    move-exception v0

    goto/16 :goto_1f

    :cond_13
    :goto_10
    const/4 v5, 0x1

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_19

    if-eqz v13, :cond_15

    if-nez v6, :cond_19

    :cond_15
    if-eqz v12, :cond_16

    if-nez v18, :cond_19

    :cond_16
    if-eqz p1, :cond_17

    if-nez v9, :cond_19

    :cond_17
    if-eqz v8, :cond_18

    if-eqz v5, :cond_18

    goto :goto_12

    :cond_18
    const/4 v3, 0x0

    goto :goto_13

    :cond_19
    :goto_12
    const/4 v3, 0x1

    :goto_13
    iget v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_14

    :cond_1a
    const/4 v5, 0x0

    :goto_14
    iget v6, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v8, 0x3e8

    if-ne v6, v8, :cond_1b

    const/4 v6, 0x1

    goto :goto_15

    :cond_1b
    const/4 v6, 0x0

    :goto_15
    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v9, 0x7d0

    if-ne v8, v9, :cond_1c

    const/4 v8, 0x1

    goto :goto_16

    :cond_1c
    const/4 v8, 0x0

    :goto_16
    iget-object v9, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v9, v9, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x4000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_1d

    const/4 v9, 0x1

    goto :goto_17

    :cond_1d
    const/4 v9, 0x0

    :goto_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    :try_start_2
    const-string/jumbo v13, "package_manager_service"

    move/from16 p1, v0

    const-string/jumbo v0, "is_update_ownership_enforcement_available"

    move/from16 v19, v3

    const/4 v3, 0x1

    invoke-static {v13, v0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_1e

    if-eqz v15, :cond_1e

    const/4 v3, 0x1

    goto :goto_18

    :cond_1e
    const/4 v3, 0x0

    :goto_18
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v0, v11

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_19

    :cond_1f
    const/4 v0, 0x0

    :goto_19
    if-nez v5, :cond_28

    if-nez v6, :cond_28

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v5

    if-nez v5, :cond_28

    if-nez p1, :cond_28

    if-eqz v0, :cond_20

    goto :goto_1b

    :cond_20
    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_21

    if-nez v7, :cond_21

    if-nez v8, :cond_21

    if-nez v9, :cond_21

    const/4 v4, 0x3

    goto :goto_1b

    :cond_21
    if-eqz v19, :cond_22

    goto :goto_1b

    :cond_22
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v10, v4, v5, v0}, Lcom/android/server/pm/Computer;->isInstallDisabledForPackage(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    const/4 v4, 0x1

    goto :goto_1b

    :cond_24
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_23

    if-eqz v14, :cond_23

    if-eqz v3, :cond_25

    if-eqz v7, :cond_26

    goto :goto_1a

    :cond_25
    if-nez v17, :cond_27

    :cond_26
    if-eqz v18, :cond_23

    :cond_27
    :goto_1a
    const/4 v4, 0x2

    :cond_28
    :goto_1b
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iput v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequirement:I

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v3, 0x1

    if-eq v4, v3, :cond_2d

    const/4 v15, 0x3

    if-ne v4, v15, :cond_29

    goto :goto_1d

    :cond_29
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x2

    if-ne v4, v0, :cond_2b

    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-string/jumbo v5, "platform_compat"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v5

    const v6, 0x7fffffff

    if-eq v0, v6, :cond_2c

    const-wide/32 v6, 0x136ca906

    :try_start_5
    invoke-interface {v5, v6, v7, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v0, :cond_2c

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2b

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/SilentUpdatePolicy;->isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    goto :goto_1e

    :cond_2a
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/SilentUpdatePolicy;->track(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_1c
    const/4 v3, 0x0

    goto :goto_1e

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PackageInstallerSession"

    const-string v5, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    goto :goto_1e

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_2d
    :goto_1d
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    :goto_1e
    return v3

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_1f
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :goto_20
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
