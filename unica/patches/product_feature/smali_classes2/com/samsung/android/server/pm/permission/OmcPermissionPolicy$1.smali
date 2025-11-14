.class public final Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;
.super Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0x2800b000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string/jumbo p0, "Package not found: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string/jumbo p0, "Permission not found: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    iget-object v3, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, " is null"

    const-string/jumbo v3, "OmcPermissionPolicy"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const/4 v10, 0x0

    if-ge v9, v6, :cond_3

    aget-object v11, v4, v9

    invoke-static {v5, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    aput-object v10, v4, v9

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, [Ljava/lang/String;

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_4

    const/16 v5, 0x30

    goto :goto_1

    :cond_4
    const/16 v5, 0x20

    :goto_1
    iget-object v6, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    const-class v12, Landroid/permission/PermissionManager;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager;

    invoke-virtual {v6}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    move v13, v8

    :goto_2
    if-ge v13, v12, :cond_6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionManager$SplitPermissionInfo;

    if-eqz v4, :cond_5

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v10

    if-ge v15, v10, :cond_5

    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v10

    move-object v15, v2

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_5
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    array-length v10, v9

    new-array v2, v10, [Ljava/lang/String;

    move v4, v8

    move v6, v4

    move v12, v6

    :goto_3
    if-ge v4, v10, :cond_9

    aget-object v13, v9, v4

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    if-nez v14, :cond_7

    const/4 v14, 0x0

    goto :goto_4

    :cond_7
    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    :goto_4
    if-eqz v14, :cond_8

    aput-object v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v14, v10, -0x1

    sub-int/2addr v14, v6

    aput-object v13, v2, v14

    add-int/lit8 v6, v6, 0x1

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    move v12, v8

    :goto_6
    if-ge v12, v10, :cond_15

    aget-object v2, v9, v12

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v7}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v13

    const/4 v14, 0x1

    if-eqz p3, :cond_a

    and-int/lit8 v4, v13, 0x10

    if-eqz v4, :cond_a

    move v15, v14

    goto :goto_7

    :cond_a
    move v15, v8

    :goto_7
    and-int/lit8 v4, v13, 0x17

    if-eqz v4, :cond_c

    if-eqz v15, :cond_b

    goto :goto_8

    :cond_b
    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    move v14, v5

    goto/16 :goto_c

    :cond_c
    :goto_8
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_e

    :cond_d
    move-object v2, v3

    goto/16 :goto_d

    :cond_e
    and-int/lit16 v4, v13, 0x3800

    or-int v16, v5, v4

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v8

    goto :goto_9

    :cond_f
    invoke-virtual {v4}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result v4

    :goto_9
    if-eqz v4, :cond_10

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    const/16 v6, 0x1000

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_a

    :cond_10
    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_a
    if-eqz v15, :cond_11

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    and-int/lit8 v6, v13, -0x11

    move v5, v13

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_11
    iget-object v4, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_12

    goto :goto_b

    :cond_12
    move v14, v8

    :goto_b
    if-nez v14, :cond_13

    iget-object v4, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v7}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_13
    or-int/lit8 v5, v16, 0x40

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    move v14, v6

    :goto_c
    and-int/lit8 v4, v13, 0x20

    if-eqz v4, :cond_14

    and-int/lit8 v4, v13, 0x10

    if-eqz v4, :cond_14

    if-nez p3, :cond_14

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_14
    move v5, v14

    :goto_d
    add-int/lit8 v12, v12, 0x1

    move-object v3, v2

    goto/16 :goto_6

    :cond_15
    :goto_e
    return-void
.end method

.method public final revokeRuntimePermissionsProxy(ILjava/lang/String;Ljava/util/Set;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    if-eqz p0, :cond_7

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    check-cast p3, Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v1, v2, p2, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p3

    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v1, p2, v2, v6}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method
