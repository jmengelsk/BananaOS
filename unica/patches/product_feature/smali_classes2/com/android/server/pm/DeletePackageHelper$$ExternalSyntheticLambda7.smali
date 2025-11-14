.class public final synthetic Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DeletePackageHelper;

.field public final synthetic f$1:Lcom/android/server/pm/Computer;

.field public final synthetic f$10:J

.field public final synthetic f$11:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/content/pm/IPackageDeleteObserver2;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/Computer;Ljava/lang/String;IIILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;ZZJ[I)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/DeletePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/pm/Computer;

    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$3:I

    iput p5, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$4:I

    iput p6, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$5:I

    iput-object p7, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$6:Landroid/content/pm/IPackageDeleteObserver2;

    iput-object p8, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$7:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$8:Z

    iput-boolean p10, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$9:Z

    iput-wide p11, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$10:J

    iput-object p13, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$11:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/DeletePackageHelper;

    iget-object v3, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/pm/Computer;

    iget-object v9, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$3:I

    iget v5, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$4:I

    iget v6, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$5:I

    iget-object v10, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$6:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v7, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$7:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$8:Z

    iget-boolean v11, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$9:Z

    iget-wide v12, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$10:J

    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;->f$11:[I

    const-string v14, "Attempted to delete system required package: "

    iget-object v15, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v15, v3, v9, v4}, Lcom/android/server/pm/PackageManagerService;->isRequiredSystemPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result v3

    const/4 v15, 0x0

    const/16 v17, 0x0

    if-eqz v3, :cond_44

    iget-object v3, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v18, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_2e
    iget-object v1, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3a
    move/from16 v1, v17

    :goto_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_62

    if-eqz v1, :cond_46

    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_44

    goto :goto_46

    :cond_44
    const/4 v1, -0x1

    goto :goto_67

    :cond_46
    :goto_46
    :try_start_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-interface {v10, v9, v1, v15}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_61} :catch_1b3

    return-void

    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_67
    iget-object v3, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    if-eqz v14, :cond_87

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v14, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_87

    if-eqz v8, :cond_84

    goto :goto_87

    :cond_84
    move v11, v4

    goto/16 :goto_16c

    :cond_87
    :goto_87
    if-nez v11, :cond_fb

    const/4 v8, 0x0

    move v3, v4

    move v4, v5

    move-wide v5, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    move-result v1

    move v11, v3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_16c

    if-eqz v14, :cond_16c

    iget-object v3, v2, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v3, v11, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileIds(IZ)[I

    move-result-object v12

    array-length v0, v12

    move/from16 v13, v17

    :goto_a0
    if-ge v13, v0, :cond_16c

    aget v3, v12, v13

    if-ne v3, v11, :cond_a9

    :cond_a6
    :goto_a6
    move/from16 v18, v0

    goto :goto_f3

    :cond_a9
    iget-object v8, v2, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v8

    if-eq v8, v11, :cond_b2

    goto :goto_a6

    :cond_b2
    invoke-interface {v14, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v8

    if-nez v8, :cond_bd

    goto :goto_a6

    :cond_bd
    iget-object v8, v2, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v8

    if-eqz v8, :cond_a6

    invoke-virtual {v8}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v8

    if-eqz v8, :cond_a6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    move-result v8

    const/4 v15, 0x1

    if-eq v8, v15, :cond_a6

    const-string/jumbo v1, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v18, v0

    const-string/jumbo v0, "Package delete failed for user "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", returnCode "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x8

    :goto_f3
    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v18

    const/4 v15, 0x0

    goto :goto_a0

    :cond_fb
    move v11, v4

    move v4, v5

    move-wide v5, v12

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    array-length v8, v0

    move/from16 v12, v17

    :goto_103
    if-ge v12, v8, :cond_116

    aget v13, v0, v12

    invoke-interface {v3, v7, v13}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_111

    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    :cond_111
    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_103

    :cond_116
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v3

    if-eqz v3, :cond_124

    const/4 v8, 0x0

    move v3, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    move-result v0

    :goto_122
    move v1, v0

    goto :goto_16c

    :cond_124
    and-int/lit8 v4, v4, -0x3

    array-length v12, v0

    move/from16 v13, v17

    :goto_129
    if-ge v13, v12, :cond_16a

    aget v3, v0, v13

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_162

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    move-result v8

    const/4 v15, 0x1

    if-eq v8, v15, :cond_15d

    const-string/jumbo v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const-string/jumbo v0, "Package delete failed for user "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", returnCode "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15a
    const/16 v16, 0x1

    goto :goto_165

    :cond_15d
    move-object/from16 v17, v0

    move/from16 v16, v15

    goto :goto_165

    :cond_162
    move-object/from16 v17, v0

    goto :goto_15a

    :goto_165
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    goto :goto_129

    :cond_16a
    const/4 v0, -0x4

    goto :goto_122

    :cond_16c
    :goto_16c
    if-gez v1, :cond_177

    const/16 v0, 0xce

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11, v0, v3}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    :cond_177
    :try_start_177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result of delete: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Landroid/content/pm/IPackageDeleteObserver2;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v10, v9, v1, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_177 .. :try_end_1a3} :catch_1a4

    goto :goto_1ad

    :catch_1a4
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Observer no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1ad
    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    :catch_1b3
    return-void
.end method
