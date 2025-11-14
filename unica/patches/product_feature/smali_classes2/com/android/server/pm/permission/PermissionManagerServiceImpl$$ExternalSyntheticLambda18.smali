.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final synthetic f$3:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-boolean p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$2:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$3:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-boolean p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$4:Z

    iput-object p6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-boolean v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$1:Z

    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$2:Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$3:Lcom/android/server/pm/pkg/AndroidPackage;

    iget-boolean v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$4:Z

    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;->f$5:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    if-eqz v3, :cond_11

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10, v0}, Landroid/util/ArrayMap;-><init>(I)V

    move v3, v14

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    move v15, v14

    :goto_1
    if-ge v15, v0, :cond_4

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-static {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    :goto_2
    move-object v8, v3

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :goto_3
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    iget-object v3, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v16, v3

    move-object v3, v2

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;

    move/from16 v17, v1

    move-object/from16 v1, v16

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_3
    move/from16 v17, v1

    move-object v3, v2

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object v2, v3

    move/from16 v1, v17

    goto :goto_1

    :cond_4
    move/from16 v17, v1

    move-object v3, v2

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_5

    move/from16 v15, v17

    goto :goto_5

    :cond_5
    move v15, v14

    :goto_5
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v1, v17

    goto :goto_7

    :cond_7
    :goto_6
    move v1, v14

    :goto_7
    if-nez v1, :cond_9

    if-nez v15, :cond_9

    :cond_8
    move-object v14, v6

    goto/16 :goto_d

    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    move-result-object v2

    array-length v4, v2

    move v5, v14

    :goto_8
    if-ge v5, v4, :cond_8

    aget v8, v2, v5

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_a
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v14, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v9

    if-nez v9, :cond_b

    goto :goto_9

    :cond_b
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_c
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string/jumbo v14, "default:0"

    invoke-virtual {v3, v0, v10, v14, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_d

    :goto_a
    const/4 v14, 0x0

    goto :goto_9

    :cond_d
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Revoking permission "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " from package "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " as either the sdk downgraded "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " or newly requested legacy full storage "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v14, "171430330"

    filled-new-array {v14, v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const v10, 0x534e4554

    invoke-static {v10, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :try_start_0
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move v10, v4

    :try_start_1
    iget-object v4, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move v14, v10

    :try_start_2
    iget-object v10, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v18, v5

    const/4 v5, 0x0

    move-object/from16 v19, v9

    const/4 v9, 0x0

    move-object/from16 v20, v6

    const/4 v6, 0x0

    move/from16 v21, v1

    move-object/from16 v1, v19

    move/from16 v19, v14

    move-object/from16 v14, v20

    move/from16 v20, v18

    move-object/from16 v18, v2

    move-object v2, v3

    move-object v3, v0

    :try_start_3
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v2

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v3, v2

    goto :goto_b

    :catch_1
    move-exception v0

    move/from16 v21, v1

    move-object/from16 v18, v2

    move/from16 v20, v5

    move-object v1, v9

    move/from16 v19, v14

    move-object v14, v6

    goto :goto_b

    :catch_2
    move-exception v0

    move/from16 v21, v1

    move-object/from16 v18, v2

    move/from16 v20, v5

    move-object v14, v6

    move-object v1, v9

    move/from16 v19, v10

    goto :goto_b

    :catch_3
    move-exception v0

    move/from16 v21, v1

    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move-object v14, v6

    move-object v1, v9

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unable to revoke "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PermissionManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    move-object v6, v14

    move-object/from16 v2, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v1, v21

    goto/16 :goto_a

    :cond_e
    move/from16 v21, v1

    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move-object v14, v6

    add-int/lit8 v5, v20, 0x1

    const/4 v14, 0x0

    goto/16 :goto_8

    :goto_d
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_12

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_12

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_11

    :cond_f
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_4
    iget-object v0, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v3, v14, v1, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v3, v14, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds$1()[I

    move-result-object v1

    array-length v8, v1

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v8, :cond_12

    aget v6, v1, v9

    :try_start_5
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    iget-object v7, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v5, 0x0

    move-object v2, v3

    move-object v3, v0

    :try_start_6
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$1;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v3, v2

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v3, v2

    goto :goto_f

    :catch_5
    move-exception v0

    :goto_f
    const-string/jumbo v2, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unable to revoke SYSTEM_ALERT_WINDOW for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_11
    move/from16 v17, v1

    move-object v3, v2

    :cond_12
    :goto_11
    if-eqz v12, :cond_15

    iget-object v0, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v0, :cond_15

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_8
    iget-object v2, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_13

    :catchall_1
    move-exception v0

    goto :goto_15

    :cond_13
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v6

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZI)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_14

    :cond_14
    :goto_13
    :try_start_9
    monitor-exit v1

    :goto_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :goto_15
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_15
    return-void
.end method
