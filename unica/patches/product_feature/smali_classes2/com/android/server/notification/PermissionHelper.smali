.class public final Lcom/android/server/notification/PermissionHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPermManager:Landroid/permission/IPermissionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    iput-object p3, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-class p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    return-void
.end method


# virtual methods
.method public final getNotificationPermissionValues(I)Landroid/util/ArrayMap;
    .registers 14

    const-string v0, "Could not reach system server"

    const-string/jumbo v1, "PermissionHelper"

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :try_start_10
    iget-object v5, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v6, 0x1000

    invoke-interface {v5, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v5
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19

    goto :goto_1e

    :catch_19
    move-exception v5

    invoke-static {v1, v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v4

    :goto_1e
    if-nez v5, :cond_23

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_27

    :cond_23
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2b
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string/jumbo v7, "android.permission.POST_NOTIFICATIONS"

    if-eqz v6, :cond_61

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v8, :cond_3f

    goto :goto_2b

    :cond_3f
    array-length v9, v8

    const/4 v10, 0x0

    :goto_41
    if-ge v10, v9, :cond_2b

    aget-object v11, v8, v10

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5e

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    :cond_61
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :try_start_66
    iget-object v6, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9, p1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v4
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception v6

    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_77
    if-nez v4, :cond_7a

    goto :goto_a1

    :cond_7a
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    new-instance v4, Landroid/util/Pair;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_a1
    :goto_a1
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, p1, v6}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(ILjava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5

    :cond_ce
    return-object v2
.end method

.method public final hasPermission(I)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.POST_NOTIFICATIONS"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_17

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final hasRequestedPermission(ILjava/lang/String;)Z
    .registers 9

    const-string/jumbo v0, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v4, 0x1000

    invoke-interface {p0, p2, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_33

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_17

    goto :goto_33

    :cond_17
    array-length p1, p0

    move p2, v3

    :goto_19
    if-ge p2, p1, :cond_2f

    aget-object v4, p0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_2d
    .catchall {:try_start_8 .. :try_end_21} :catchall_2b

    if-eqz v4, :cond_28

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    :catchall_2b
    move-exception p0

    goto :goto_43

    :catch_2d
    move-exception p0

    goto :goto_37

    :cond_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_33
    :goto_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_37
    :try_start_37
    const-string/jumbo p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_2b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isPermissionFixed(Ljava/lang/String;I)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string/jumbo v3, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v4, "default:0"

    invoke-interface {p0, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_20
    .catchall {:try_start_5 .. :try_end_11} :catchall_1e

    and-int/lit8 p1, p0, 0x10

    if-nez p1, :cond_19

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1a

    :cond_19
    const/4 v2, 0x1

    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1e
    move-exception p0

    goto :goto_2d

    :catch_20
    move-exception p0

    :try_start_21
    const-string/jumbo p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_1e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isPermissionGrantedByDefaultOrRole(ILjava/lang/String;)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string/jumbo v3, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v4, "default:0"

    invoke-interface {p0, p2, v3, v4, p1}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_1e
    .catchall {:try_start_5 .. :try_end_11} :catchall_1c

    const p1, 0x8020

    and-int/2addr p0, p1

    if-eqz p0, :cond_18

    const/4 v2, 0x1

    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1c
    move-exception p0

    goto :goto_2b

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string/jumbo p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isPermissionUserSet(ILjava/lang/String;)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string/jumbo v3, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v4, "default:0"

    invoke-interface {p0, p2, v3, v4, p1}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_1c
    .catchall {:try_start_5 .. :try_end_11} :catchall_1a

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_16

    const/4 v2, 0x1

    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1a
    move-exception p0

    goto :goto_29

    :catch_1c
    move-exception p0

    :try_start_1d
    const-string/jumbo p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final packageRequestsNotificationPermission(ILjava/lang/String;)Z
    .registers 5

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v0, 0x1000

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string/jumbo p1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    const-string/jumbo p1, "PermissionHelper"

    const-string p2, "Could not reach system server"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public final setNotificationPermission(Ljava/lang/String;IZZ)V
    .registers 18

    move/from16 v2, p3

    move/from16 v3, p4

    const-string/jumbo v8, "PermissionHelper"

    const-string/jumbo v4, "reviewRequired = "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_e
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PermissionHelper;->packageRequestsNotificationPermission(ILjava/lang/String;)Z

    move-result v6
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_6b
    .catchall {:try_start_e .. :try_end_12} :catchall_69

    const-string/jumbo v7, "pkg = "

    if-eqz v6, :cond_a5

    :try_start_17
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_a5

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PermissionHelper;->isPermissionGrantedByDefaultOrRole(ILjava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v11, 0x0

    invoke-interface {v6, p1, v11, v12, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentlyGranted = "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", grant = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6d

    const-string/jumbo v3, "com.sec.android.easyMover"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_63} :catch_6b
    .catchall {:try_start_17 .. :try_end_63} :catchall_69

    if-eqz v3, :cond_6d

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_69
    move-exception v0

    goto :goto_c6

    :catch_6b
    move-exception v0

    goto :goto_bd

    :cond_6d
    if-eqz v2, :cond_7d

    if-nez v6, :cond_7d

    :try_start_71
    iget-object v2, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string/jumbo v3, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v4, "default:0"

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_91

    :cond_7d
    if-nez v2, :cond_91

    if-eqz v6, :cond_91

    iget-object v1, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string/jumbo v3, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v4, "default:0"

    const-string/jumbo v6, "PermissionHelper"

    move-object v2, p1

    move v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    const-string/jumbo v2, "android.permission.POST_NOTIFICATIONS"

    const-string/jumbo v6, "default:0"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_a1} :catch_6b
    .catchall {:try_start_71 .. :try_end_a1} :catchall_69

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_a5
    :try_start_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", setNotificationPermission return!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_b9} :catch_6b
    .catchall {:try_start_a5 .. :try_end_b9} :catchall_69

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_bd
    :try_start_bd
    const-string v1, "Could not reach system server"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_69

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_c6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
