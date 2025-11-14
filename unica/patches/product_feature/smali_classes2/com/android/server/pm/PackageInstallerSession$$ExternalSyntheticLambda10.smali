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
    .registers 3

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->$r8$classId:I

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_272

    check-cast v0, Ljava/util/function/Predicate;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_16  #0x0
    move-object v1, v0

    check-cast v1, Landroid/content/IntentSender;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v0, :cond_25

    goto/16 :goto_250

    :cond_25
    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_28
    iget-boolean v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_34

    monitor-exit v4

    const/4 v4, 0x0

    goto/16 :goto_1e4

    :catchall_31
    move-exception v0

    goto/16 :goto_270

    :cond_34
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_39

    goto :goto_4b

    :cond_39
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    iget-boolean v9, v2, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_31

    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v10, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v10, v10, 0x400

    if-nez v10, :cond_5d

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v4, v7, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v4, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v4, v7

    :goto_5e
    iget-object v10, v2, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    const-string/jumbo v11, "android.permission.INSTALL_PACKAGES"

    iget v12, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v11, v12}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_71

    move v11, v7

    goto :goto_72

    :cond_71
    const/4 v11, 0x0

    :goto_72
    const-string/jumbo v12, "android.permission.INSTALL_SELF_UPDATES"

    iget v13, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v12, v13}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_7f

    move v12, v7

    goto :goto_80

    :cond_7f
    const/4 v12, 0x0

    :goto_80
    const-string/jumbo v13, "android.permission.INSTALL_PACKAGE_UPDATES"

    iget v14, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v13, v14}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_8d

    move v13, v7

    goto :goto_8e

    :cond_8d
    const/4 v13, 0x0

    :goto_8e
    const-string/jumbo v14, "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION"

    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v14, v15}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_9b

    move v14, v7

    goto :goto_9c

    :cond_9b
    const/4 v14, 0x0

    :goto_9c
    const-string/jumbo v15, "android.permission.INSTALL_DPC_PACKAGES"

    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v15, v3}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a9

    move v3, v7

    goto :goto_aa

    :cond_a9
    const/4 v3, 0x0

    :goto_aa
    const-string/jumbo v15, "android.permission.INSTALL_DEPENDENCY_SHARED_LIBRARIES"

    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v10, v15, v8}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_b7

    move v8, v7

    goto :goto_b8

    :cond_b7
    const/4 v8, 0x0

    :goto_b8
    const-wide v5, 0x100000000L

    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v10, v0, v5, v6, v15}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_cf

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v6

    if-eqz v6, :cond_cd

    goto :goto_cf

    :cond_cd
    const/4 v6, 0x0

    goto :goto_d0

    :cond_cf
    :goto_cf
    move v6, v7

    :goto_d0
    if-eqz v6, :cond_d9

    iget v15, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v10, v0, v15}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object v15

    goto :goto_da

    :cond_d9
    const/4 v15, 0x0

    :goto_da
    if-eqz v15, :cond_e3

    invoke-virtual {v15}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_e4

    :cond_e3
    const/4 v7, 0x0

    :goto_e4
    if-eqz v15, :cond_eb

    invoke-virtual {v15}, Landroid/content/pm/InstallSourceInfo;->getUpdateOwnerPackageName()Ljava/lang/String;

    move-result-object v15

    goto :goto_ec

    :cond_eb
    const/4 v15, 0x0

    :goto_ec
    move/from16 p1, v3

    if-eqz v6, :cond_fe

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    const/4 v3, 0x1

    goto :goto_ff

    :cond_fe
    const/4 v3, 0x0

    :goto_ff
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v15, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    move/from16 v17, v3

    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v5, v3, :cond_111

    const/4 v3, 0x1

    goto :goto_112

    :cond_111
    const/4 v3, 0x0

    :goto_112
    iget v5, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move/from16 v18, v3

    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v5, v3, v10, v0}, Lcom/android/server/pm/PackageInstallerSession;->isEmergencyInstallerEnabled(IILcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v0

    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_11f
    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v5, :cond_137

    invoke-virtual {v5}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v5

    if-nez v5, :cond_135

    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v5}, Landroid/content/pm/parsing/PackageLite;->isIsStaticLibrary()Z

    move-result v5

    if-eqz v5, :cond_137

    goto :goto_135

    :catchall_132
    move-exception v0

    goto/16 :goto_26e

    :cond_135
    :goto_135
    const/4 v5, 0x1

    goto :goto_138

    :cond_137
    const/4 v5, 0x0

    :goto_138
    monitor-exit v3
    :try_end_139
    .catchall {:try_start_11f .. :try_end_139} :catchall_132

    if-nez v11, :cond_14e

    if-eqz v13, :cond_13f

    if-nez v6, :cond_14e

    :cond_13f
    if-eqz v12, :cond_143

    if-nez v18, :cond_14e

    :cond_143
    if-eqz p1, :cond_147

    if-nez v9, :cond_14e

    :cond_147
    if-eqz v8, :cond_14c

    if-eqz v5, :cond_14c

    goto :goto_14e

    :cond_14c
    const/4 v3, 0x0

    goto :goto_14f

    :cond_14e
    :goto_14e
    const/4 v3, 0x1

    :goto_14f
    iget v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v5, :cond_155

    const/4 v5, 0x1

    goto :goto_156

    :cond_155
    const/4 v5, 0x0

    :goto_156
    iget v6, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v8, 0x3e8

    if-ne v6, v8, :cond_15e

    const/4 v6, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v6, 0x0

    :goto_15f
    iget v8, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v9, 0x7d0

    if-ne v8, v9, :cond_167

    const/4 v8, 0x1

    goto :goto_168

    :cond_167
    const/4 v8, 0x0

    :goto_168
    iget-object v9, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v9, v9, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x4000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_173

    const/4 v9, 0x1

    goto :goto_174

    :cond_173
    const/4 v9, 0x0

    :goto_174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    :try_start_178
    const-string/jumbo v13, "package_manager_service"

    move/from16 p1, v0

    const-string/jumbo v0, "is_update_ownership_enforcement_available"

    move/from16 v19, v3

    const/4 v3, 0x1

    invoke-static {v13, v0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_187
    .catchall {:try_start_178 .. :try_end_187} :catchall_269

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_190

    if-eqz v15, :cond_190

    const/4 v3, 0x1

    goto :goto_191

    :cond_190
    const/4 v3, 0x0

    :goto_191
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v11, 0x40000000  # 2.0f

    and-int/2addr v0, v11

    if-eqz v0, :cond_19c

    const/4 v0, 0x1

    goto :goto_19d

    :cond_19c
    const/4 v0, 0x0

    :goto_19d
    if-nez v5, :cond_1e4

    if-nez v6, :cond_1e4

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v5

    if-nez v5, :cond_1e4

    if-nez p1, :cond_1e4

    if-eqz v0, :cond_1ac

    goto :goto_1e4

    :cond_1ac
    if-eqz v3, :cond_1bc

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_1bc

    if-nez v7, :cond_1bc

    if-nez v8, :cond_1bc

    if-nez v9, :cond_1bc

    const/4 v4, 0x3

    goto :goto_1e4

    :cond_1bc
    if-eqz v19, :cond_1bf

    goto :goto_1e4

    :cond_1bf
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v10, v4, v5, v0}, Lcom/android/server/pm/Computer;->isInstallDisabledForPackage(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    :cond_1cf
    const/4 v4, 0x1

    goto :goto_1e4

    :cond_1d1
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1cf

    if-eqz v14, :cond_1cf

    if-eqz v3, :cond_1df

    if-eqz v7, :cond_1e1

    goto :goto_1e3

    :cond_1df
    if-nez v17, :cond_1e3

    :cond_1e1
    if-eqz v18, :cond_1cf

    :cond_1e3
    :goto_1e3
    const/4 v4, 0x2

    :cond_1e4
    :goto_1e4
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1e7
    iput v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequirement:I

    monitor-exit v3
    :try_end_1ea
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_266

    const/4 v3, 0x1

    if-eq v4, v3, :cond_262

    const/4 v15, 0x3

    if-ne v4, v15, :cond_1f1

    goto :goto_262

    :cond_1f1
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_250

    const/4 v0, 0x2

    if-ne v4, v0, :cond_250

    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1fd
    iget v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    iget-object v5, v2, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v4
    :try_end_202
    .catchall {:try_start_1fd .. :try_end_202} :catchall_25f

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

    if-eq v0, v6, :cond_25b

    const-wide/32 v6, 0x136ca906

    :try_start_21e
    invoke-interface {v5, v6, v7, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_222
    .catch Landroid/os/RemoteException; {:try_start_21e .. :try_end_222} :catch_252

    if-eqz v0, :cond_25b

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_250

    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/SilentUpdatePolicy;->isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_241

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    goto :goto_265

    :cond_241
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/SilentUpdatePolicy;->track(Ljava/lang/String;Ljava/lang/String;)V

    :cond_250
    :goto_250
    const/4 v3, 0x0

    goto :goto_265

    :catch_252
    move-exception v0

    const-string/jumbo v4, "PackageInstallerSession"

    const-string v5, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25b
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    goto :goto_265

    :catchall_25f
    move-exception v0

    :try_start_260
    monitor-exit v4
    :try_end_261
    .catchall {:try_start_260 .. :try_end_261} :catchall_25f

    throw v0

    :cond_262
    :goto_262
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    :goto_265
    return v3

    :catchall_266
    move-exception v0

    :try_start_267
    monitor-exit v3
    :try_end_268
    .catchall {:try_start_267 .. :try_end_268} :catchall_266

    throw v0

    :catchall_269
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_26e
    :try_start_26e
    monitor-exit v3
    :try_end_26f
    .catchall {:try_start_26e .. :try_end_26f} :catchall_132

    throw v0

    :goto_270
    :try_start_270
    monitor-exit v4
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_31

    throw v0

    :pswitch_data_272
    .packed-switch 0x0
        :pswitch_16  #00000000
    .end packed-switch
.end method
