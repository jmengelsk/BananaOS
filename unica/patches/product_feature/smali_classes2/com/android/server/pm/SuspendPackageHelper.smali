.class public final Lcom/android/server/pm/SuspendPackageHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-void
.end method

.method public static getSuspendedPackageAppExtras(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    invoke-interface {p2, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_3

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/pm/UserPackage;
    .locals 4

    invoke-interface {p2, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    move-object p3, p2

    move-object v0, p3

    :goto_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserPackage;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/SuspendParams;

    iget-object v2, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p3, v0

    :cond_2
    iget-boolean v1, v1, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    move-object p2, v0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    return-object p2

    :cond_5
    if-eqz p3, :cond_6

    return-object p3

    :cond_6
    return-object v0
.end method


# virtual methods
.method public final canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v8, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    array-length v1, v7

    new-array v10, v1, [Z

    const/16 v1, 0x3e8

    iget-object v12, v0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    if-ne v3, v1, :cond_0

    move-object/from16 v1, p1

    :goto_0
    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v12, v2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-wide/16 v4, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getPackageUidInternal(IIJLjava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v1, p1

    goto :goto_1

    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v14, v9, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v14, v9}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "android.app.role.DIALER"

    invoke-virtual {v6, v2, v15}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x2

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/4 v11, 0x3

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x1

    const/4 v13, 0x4

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v13

    move/from16 p4, v3

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v18, v4

    move/from16 v3, v16

    :goto_3
    :try_start_1
    array-length v4, v7

    if-ge v3, v4, :cond_13

    aput-boolean v16, v10, v3

    aget-object v4, v7, v3

    invoke-virtual {v8, v2, v4}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 p0, v3

    const-string v3, "Cannot suspend package \""

    move/from16 v20, v5

    const-string/jumbo v5, "PackageManager"

    if-eqz v20, :cond_3

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": has an active device admin"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object/from16 v22, v0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": contains the active launcher"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": required for package installation"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": required for package uninstallation"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": required for package verification"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": is the default dialer"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": required for permissions management"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v12, v2, v4}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": protected package"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    if-nez p4, :cond_b

    invoke-interface {v1, v2, v4}, Lcom/android/server/pm/Computer;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": blocked by admin"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v8, v1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->isRequiredSystemPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": required system package"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-nez v7, :cond_d

    const/16 v20, 0x0

    goto :goto_5

    :cond_d
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v20

    :goto_5
    if-eqz v20, :cond_10

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v2, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v22, v0

    const-string v0, "Cannot suspend package: "

    if-eqz v21, :cond_e

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providing SDK library: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v21

    if-eqz v21, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providing static shared library: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    const-class v0, Landroid/app/AppOpsManager;

    iget-object v1, v9, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v7, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": has OP_SYSTEM_EXEMPT_FROM_SUSPENSION set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_10
    move-object/from16 v22, v0

    :cond_11
    const-string/jumbo v0, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot suspend the platform package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_12
    aput-boolean v17, v10, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    add-int/lit8 v3, p0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v0, v22

    goto/16 :goto_3

    :cond_13
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v10

    :catchall_1
    move-exception v0

    move-wide/from16 v18, v4

    :goto_7
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/16 v1, 0x3e8

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-wide/16 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getPackageUidInternal(IIJLjava/lang/String;)I

    move-result p0

    if-ne v3, p0, :cond_2

    goto :goto_0

    :cond_1
    move v2, p2

    :cond_2
    const-string/jumbo p0, "no_control_apps"

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "no_uninstall_apps"

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    array-length v5, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_7

    aget-object v9, v1, v8

    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v12, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v11, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    :goto_1
    if-eqz v12, :cond_1

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    move-object/from16 v6, p3

    goto :goto_4

    :cond_2
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    iget-object v15, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v13, v15, :cond_5

    iget-object v15, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserPackage;

    move-object/from16 v6, p3

    invoke-interface {v6, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    if-nez v16, :cond_3

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v4, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object/from16 v1, v16

    :goto_3
    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    :cond_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p2

    goto :goto_2

    :cond_5
    move-object/from16 v6, p3

    iget-object v1, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ne v14, v1, :cond_6

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/util/IntArray;->add(I)V

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p2

    goto :goto_0

    :cond_7
    new-instance v1, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;I)V

    iget-object v8, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v8}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iget-object v0, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move-object v1, v0

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;

    const-string/jumbo v6, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    iget-object v2, v1, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    const-string/jumbo v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[II)V

    :cond_8
    return-void
.end method

.method public final setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Landroid/content/pm/UserPackage;II)[Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v6, "PackageManager"

    if-eqz p3, :cond_1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v0, "Cannot suspend due to restrictions on user "

    invoke-static {v3, v0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v7, 0x0

    if-eqz p3, :cond_2

    new-instance v9, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct {v9, v12, v10, v11, v7}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v2

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v12, Landroid/util/IntArray;

    array-length v13, v2

    invoke-direct {v12, v13}, Landroid/util/IntArray;-><init>(I)V

    new-instance v13, Landroid/util/ArraySet;

    array-length v14, v2

    invoke-direct {v13, v14}, Landroid/util/ArraySet;-><init>(I)V

    new-instance v14, Landroid/util/IntArray;

    array-length v15, v2

    invoke-direct {v14, v15}, Landroid/util/IntArray;-><init>(I)V

    if-eqz p3, :cond_3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v15

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    :goto_1
    move v8, v7

    :goto_2
    array-length v7, v2

    if-ge v8, v7, :cond_10

    aget-object v7, v2, v8

    iget-object v2, v5, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v5, Landroid/content/pm/UserPackage;->userId:I

    if-ne v2, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 p4, v8

    const-string/jumbo v8, "Suspending package: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " trying to "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    const-string v8, ""

    :goto_3
    move-object/from16 p5, v15

    goto :goto_4

    :cond_4
    const-string/jumbo v8, "un"

    goto :goto_3

    :goto_4
    const-string/jumbo v15, "suspend itself. Ignoring"

    invoke-static {v2, v8, v15, v6}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_5
    move/from16 p4, v8

    move-object/from16 p5, v15

    invoke-interface {v1, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    const-string v8, ". Skipping suspending/un-suspending."

    if-eqz v2, :cond_f

    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v1, v2, v4, v3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v15

    if-eqz v15, :cond_6

    goto/16 :goto_7

    :cond_6
    if-eqz p5, :cond_7

    aget-boolean v15, p5, p4

    if-nez v15, :cond_7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_7
    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v15

    if-nez v15, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    iget-object v1, v15, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/SuspendParams;

    :goto_5
    invoke-static {v1, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz p3, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_8

    :cond_9
    move/from16 p6, v1

    if-nez p3, :cond_a

    invoke-static {v15}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    iget-object v1, v15, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_a
    move-object/from16 v16, v2

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-nez p3, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/util/IntArray;->add(I)V

    :cond_d
    if-nez p6, :cond_e

    invoke-virtual {v13, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_8

    :cond_e
    const-string/jumbo v1, "No change is needed for package: "

    invoke-static {v1, v7, v8, v6}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    :goto_7
    const-string v1, "Could not find package setting for package: "

    invoke-static {v1, v7, v8, v6}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v8, p4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p5

    goto/16 :goto_2

    :cond_10
    new-instance v1, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;

    move/from16 v4, p3

    move-object v6, v9

    move-object v2, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)V

    move-object v7, v2

    iget-object v8, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v0, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    if-eqz p3, :cond_11

    const-string/jumbo v2, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_9

    :cond_11
    const-string/jumbo v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    :goto_9
    invoke-virtual {v12}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[II)V

    new-instance v4, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v8}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    if-eqz p3, :cond_12

    const-string/jumbo v1, "android.intent.action.MY_PACKAGE_SUSPENDED"

    :goto_a
    move-object v6, v1

    move-object v1, v0

    goto :goto_b

    :cond_12
    const-string/jumbo v1, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    goto :goto_a

    :goto_b
    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;

    move/from16 v2, p3

    move-object v5, v3

    move/from16 v3, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v8, v3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    goto :goto_c

    :cond_13
    move/from16 v3, p8

    :goto_c
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v14}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p5, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p2, v6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[II)V

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    :goto_d
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
