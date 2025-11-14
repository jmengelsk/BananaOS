.class public abstract Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

.field public static final sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "storage_native_boot"

    const-string/jumbo v2, "forced_scoped_storage_whitelist"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_25

    :cond_1e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_25
    :goto_25
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    :goto_28
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    return-void
.end method

.method public static forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    const-string/jumbo v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    sget-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    return-object v0

    :cond_22
    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3, v7, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    and-int/lit16 v3, v3, 0x3800

    if-eqz v3, :cond_33

    goto :goto_34

    :cond_33
    move v4, v5

    :goto_34
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v5

    move v0, v5

    move v5, v4

    goto :goto_3c

    :cond_3b
    move v0, v5

    :goto_3c
    new-instance v1, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;

    invoke-direct {v1, v0, v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;-><init>(IZ)V

    return-object v1

    :cond_42
    if-eqz v1, :cond_c6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-class v7, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3, v8, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    and-int/lit16 v3, v3, 0x3800

    if-eqz v3, :cond_5c

    move v3, v4

    goto :goto_5d

    :cond_5c
    move v3, v5

    :goto_5d
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v6}, Landroid/os/storage/StorageManagerInternal;->hasLegacyExternalStorage(I)Z

    move-result v6

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_71

    :cond_6f
    move v7, v5

    goto :goto_89

    :cond_71
    invoke-static {v7}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    array-length v10, v9

    move v11, v5

    :goto_77
    if-ge v11, v10, :cond_6f

    aget-object v12, v9, v11

    :try_start_7b
    invoke-virtual {v8, v12, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v12
    :try_end_7f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7b .. :try_end_7f} :catch_87

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v12

    if-eqz v12, :cond_87

    move v7, v4

    goto :goto_89

    :catch_87
    :cond_87
    add-int/2addr v11, v4

    goto :goto_77

    :goto_89
    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_96

    goto :goto_a9

    :cond_96
    array-length v10, v8

    move v11, v5

    :goto_98
    if-ge v11, v10, :cond_a9

    aget-object v12, v8, v11

    const-string/jumbo v13, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v9, v13, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_a7

    move v5, v4

    goto :goto_a9

    :cond_a7
    add-int/2addr v11, v4

    goto :goto_98

    :cond_a9
    :goto_a9
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v8

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v0

    xor-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v11, v0

    move v13, v1

    move v12, v2

    move v10, v3

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_d0

    :cond_c6
    move v10, v5

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_d0
    new-instance v9, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;

    invoke-direct/range {v9 .. v17}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;-><init>(ZIZZZZZZ)V

    return-object v9
.end method

.method public static getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I
    .registers 10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_2a

    aget-object v5, v1, v4

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    :try_start_1d
    invoke-virtual {p0, v5, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_21} :catch_27

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v5}, Ljava/lang/Integer;->min(II)I

    move-result v0

    :catch_27
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2a
    return v0
.end method


# virtual methods
.method public getExtraAppOpCode()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public mayAllowExtraAppOp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public mayDenyExtraAppOpIfGranted()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract mayGrantPermission()Z
.end method
