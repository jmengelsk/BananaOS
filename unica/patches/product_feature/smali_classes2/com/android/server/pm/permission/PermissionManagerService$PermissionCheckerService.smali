.class public final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v15, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    const-string/jumbo v6, "android"

    iget-object v7, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0, v15}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :catch_0
    :goto_0
    move/from16 v17, v4

    goto/16 :goto_1c

    :cond_0
    :goto_1
    invoke-virtual {v2, v15, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "PermissionManagerService"

    const-string v9, " with no app op defined!"

    if-eqz v2, :cond_12

    invoke-static {v15}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Appop permission "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    move-object v3, v1

    :goto_2
    if-nez p7, :cond_4

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v7, v6

    :goto_4
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    if-eqz p7, :cond_5

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    if-eqz p7, :cond_7

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v9

    if-nez v9, :cond_7

    move v9, v6

    goto :goto_5

    :cond_7
    move v9, v5

    :goto_5
    if-nez v9, :cond_9

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    move-object v10, v8

    move v8, v5

    goto :goto_7

    :cond_9
    :goto_6
    move-object v10, v8

    move v8, v6

    :goto_7
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v11, v6

    const/4 v6, 0x0

    move-object/from16 v16, v10

    const/4 v10, -0x1

    move/from16 v17, v11

    const/4 v11, 0x0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v14, v17

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    move-object v10, v0

    if-eq v1, v14, :cond_c

    const/4 v0, 0x2

    if-eq v1, v0, :cond_11

    const/4 v0, 0x3

    if-eq v1, v0, :cond_b

    :cond_a
    move-object/from16 v11, p1

    move-object/from16 v0, v16

    goto :goto_a

    :cond_b
    if-nez v7, :cond_d

    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_8
    const/16 v17, 0x2

    goto/16 :goto_1c

    :cond_d
    if-eqz v16, :cond_a

    move-object/from16 v11, p1

    move-object/from16 v0, v16

    invoke-static {v10, v11, v15, v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_9
    goto :goto_8

    :cond_e
    :goto_a
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_1d

    :cond_10
    move-object/from16 v1, p3

    move-object v3, v0

    move-object v7, v3

    move-object v0, v10

    move v6, v14

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_11
    move/from16 v17, v0

    goto/16 :goto_1c

    :cond_12
    move-object/from16 v11, p1

    move-object v10, v0

    move v14, v6

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {v15}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v12

    const/4 v0, -0x1

    move-object/from16 v1, p3

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_13

    if-nez p6, :cond_14

    :cond_13
    const/4 v13, 0x0

    goto :goto_b

    :cond_14
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    if-gez v3, :cond_15

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move/from16 v18, v13

    move v13, v3

    goto :goto_c

    :cond_15
    move v13, v3

    const/16 v18, 0x0

    goto :goto_c

    :goto_b
    move/from16 v18, v13

    move v13, v0

    :goto_c
    if-eq v13, v0, :cond_16

    move/from16 v16, v14

    goto :goto_d

    :cond_16
    move/from16 v16, v18

    :goto_d
    if-eqz v16, :cond_18

    const-string/jumbo v0, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v10, v11, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_e

    :cond_17
    move/from16 v19, v18

    goto :goto_f

    :cond_18
    :goto_e
    move/from16 v19, v14

    :goto_f
    move-object v3, v1

    move-object/from16 v20, v7

    :goto_10
    if-nez p7, :cond_1a

    if-eqz v7, :cond_19

    goto :goto_11

    :cond_19
    move/from16 v7, v18

    goto :goto_12

    :cond_1a
    :goto_11
    move v7, v14

    :goto_12
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz p7, :cond_1b

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_13

    :cond_1b
    if-eqz v0, :cond_1c

    invoke-virtual {v3, v10}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_9

    :cond_1c
    :goto_13
    if-nez v7, :cond_1d

    invoke-static {v10, v11, v15, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_9

    :cond_1d
    if-eqz v0, :cond_1e

    invoke-static {v10, v11, v15, v0}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_9

    :cond_1e
    if-gez v12, :cond_21

    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string/jumbo v2, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Platform runtime permission "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-nez v0, :cond_20

    move/from16 v15, v18

    goto/16 :goto_1d

    :cond_20
    move-object v3, v0

    move-object v7, v3

    goto :goto_10

    :cond_21
    if-eqz p7, :cond_22

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez v2, :cond_22

    move-object/from16 v21, v9

    move v9, v14

    goto :goto_14

    :cond_22
    move-object/from16 v21, v9

    move/from16 v9, v18

    :goto_14
    if-nez v9, :cond_24

    if-nez v0, :cond_23

    goto :goto_15

    :cond_23
    move/from16 v4, v18

    goto :goto_16

    :cond_24
    :goto_15
    move v4, v14

    :goto_16
    if-eqz v19, :cond_27

    invoke-virtual {v3, v10}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    if-eqz v0, :cond_26

    invoke-virtual {v0, v10}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    move v5, v14

    goto :goto_17

    :cond_27
    move/from16 v5, v18

    :goto_17
    if-nez v7, :cond_28

    if-eqz v16, :cond_28

    const/4 v6, 0x1

    move/from16 v2, p7

    move-object/from16 v22, v0

    move-object v0, v1

    move-object v1, v3

    move/from16 v3, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v6

    move-object/from16 v23, v1

    move v11, v6

    goto :goto_18

    :cond_28
    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move/from16 v11, v18

    :goto_18
    if-eqz v16, :cond_29

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move/from16 v3, p6

    move/from16 v2, p7

    move-object/from16 v1, v22

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v5

    goto :goto_19

    :cond_29
    move/from16 v5, v18

    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move/from16 v6, p6

    move/from16 v14, p7

    move-object/from16 v24, v8

    move-object v0, v10

    move v2, v12

    move/from16 v15, v18

    move-object/from16 v3, v23

    move/from16 v10, p8

    move v8, v4

    move v12, v5

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    if-eqz p6, :cond_2b

    if-eqz v1, :cond_2b

    if-eqz v20, :cond_2b

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    iget-object v5, v4, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v6, v5

    if-lez v6, :cond_2a

    aget-object v5, v5, v15

    new-array v6, v15, [Landroid/content/AttributionSourceState;

    iput-object v6, v5, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :cond_2a
    move/from16 v8, p8

    invoke-static {v0, v8, v4, v14}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    :goto_1a
    const/4 v11, 0x1

    goto :goto_1b

    :cond_2b
    move/from16 v8, p8

    goto :goto_1a

    :goto_1b
    if-eq v1, v11, :cond_2f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2e

    if-eqz p6, :cond_2c

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    invoke-direct {v1, v0, v2, v3, v14}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    if-eqz v22, :cond_32

    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_2d

    goto/16 :goto_1d

    :cond_2d
    move-object/from16 v11, p1

    move-object/from16 v1, p3

    move-object v10, v0

    move v12, v2

    move-object/from16 v20, v3

    move/from16 v18, v15

    move-object/from16 v9, v21

    move-object/from16 v3, v22

    move-object v7, v3

    move-object/from16 v8, v24

    const/4 v14, 0x1

    move-object/from16 v15, p2

    goto/16 :goto_10

    :cond_2e
    const-string/jumbo v0, "android.permission.BLUETOOTH_CONNECT"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BLUETOOTH_CONNECT permission hard denied as op mode is MODE_ERRORED. Permission check was requested for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and op transaction was invoked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x2

    return v17

    :cond_2f
    return v11

    :cond_30
    move-object/from16 v1, p3

    move/from16 v14, p7

    move/from16 v8, p8

    move-object v0, v10

    move-object v2, v15

    const/4 v15, 0x0

    const/16 v17, 0x2

    if-nez v14, :cond_31

    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v3

    if-nez v3, :cond_31

    :goto_1c
    return v17

    :cond_31
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_32
    :goto_1d
    return v15
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z
    .locals 6

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object p0

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, p2, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "android.permission.CAMERA"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_3

    iget p1, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;->f$0:I

    if-ne v0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    move v2, v3

    :cond_4
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object p1

    if-eqz v2, :cond_5

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "android.permission.RENOUNCE_PERMISSIONS"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_5

    return v4

    :cond_5
    return v2
.end method

.method public static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 7

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    if-eqz p3, :cond_3

    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-eq v6, p2, :cond_4

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v1, p0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_9

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-ne v6, p2, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    if-nez v6, :cond_7

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :cond_7
    :goto_4
    if-nez v6, :cond_8

    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v4, v5

    :goto_5
    if-eqz v3, :cond_a

    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v4, v2}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v3, p1, v2}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v4

    :goto_6
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_9

    :cond_c
    iget-object v3, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6, v4, v2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    :goto_7
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_d
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    move-object v1, v5

    move-object v2, v1

    goto/16 :goto_0

    :cond_f
    :goto_8
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_10
    :goto_9
    return-void
.end method

.method public static performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v2, p10

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    if-nez p9, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    :goto_0
    if-nez p5, :cond_5

    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    const/4 v0, 0x2

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v5, v2}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz p7, :cond_2

    if-nez p9, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v1, v2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v6

    :goto_2
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez p8, :cond_4

    if-nez v6, :cond_4

    if-eqz v2, :cond_4

    invoke-static {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v0

    return v0

    :cond_4
    return v6

    :cond_5
    const-string v9, " with source "

    const-string/jumbo v10, "Security exception for op "

    const-string v12, " while not having android.permission.UPDATE_APP_OPS_STATS"

    const-string v13, " protecting data with platform defined runtime permission "

    const-string v14, "Datasource "

    const/4 v8, -0x1

    const-string v11, ", "

    const-string/jumbo v15, "PermissionManagerService"

    const-string v7, ":"

    if-eqz p6, :cond_c

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v5

    :goto_3
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    if-eq v2, v8, :cond_9

    if-eq v2, v1, :cond_9

    invoke-virtual {v4, v1, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v6

    const/4 v0, 0x2

    if-ne v6, v0, :cond_8

    return v6

    :cond_8
    move v0, v6

    move v6, v2

    goto :goto_4

    :cond_9
    move v6, v1

    const/4 v0, 0x0

    :goto_4
    if-eqz p8, :cond_a

    const/4 v8, 0x0

    move-object/from16 v9, p4

    move/from16 v10, p11

    move/from16 v11, p13

    move-object v7, v5

    move-object/from16 v5, p1

    :try_start_0
    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLjava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    goto :goto_5

    :catch_0
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p1

    move/from16 v5, p7

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    move v12, v0

    move-object v0, v4

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v1

    goto :goto_5

    :cond_a
    move-object/from16 v1, p1

    move/from16 v8, p13

    move v12, v0

    move-object v0, v4

    move-object v3, v5

    move v2, v6

    move-object v13, v7

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p11

    move/from16 v7, p12

    :try_start_1
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catch_1
    move-exception v0

    invoke-static {v2, v10, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v1, v11}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    new-instance v2, Ljava/lang/SecurityException;

    invoke-static {v1, v13}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    move-object v6, v4

    move-object/from16 v17, v7

    move-object/from16 v4, p4

    move v7, v2

    move/from16 v2, p7

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v5

    :goto_6
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_1

    :goto_7
    return v0

    :cond_e
    const/4 v0, 0x2

    if-eq v7, v8, :cond_f

    if-eq v7, v1, :cond_f

    invoke-virtual {v6, v1, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v8

    if-ne v8, v0, :cond_10

    return v8

    :cond_f
    move v7, v1

    const/4 v8, 0x0

    :cond_10
    if-eqz p8, :cond_11

    :try_start_2
    invoke-virtual {v6, v7, v5, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v7, v3, v4, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_8

    :cond_11
    :try_start_3
    invoke-virtual {v6, v7, v5, v4, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_8
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_13

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    const-string v2, " returned MODE_ERRORED"

    const-string v3, " and op "

    if-ne v0, v8, :cond_12

    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "BLUETOOTH_CONNECT permission hard denied as checkOp for resolvedAttributionSource "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "BLUETOOTH_CONNECT permission hard denied as noteOp for resolvedAttributionSource "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_9
    return v0

    :catch_3
    move-exception v0

    invoke-static {v7, v10, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v17

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v1, v11}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_14
    new-instance v2, Ljava/lang/SecurityException;

    invoke-static {v1, v13}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    const/16 p3, 0x8

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_2
    if-nez p2, :cond_6

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_3
    if-eqz p4, :cond_4

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_5
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    if-nez p4, :cond_6

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    or-int/lit8 p0, p3, 0x2

    return p0

    :cond_8
    :goto_1
    return v0
.end method

.method public static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, v15}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-ltz p1, :cond_0

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move/from16 v3, p1

    move v4, v11

    goto/16 :goto_d

    :cond_1
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    if-gez v6, :cond_3

    invoke-virtual {v4, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    :cond_3
    move v14, v6

    goto :goto_1

    :cond_4
    :goto_0
    move v14, v5

    :goto_1
    const/4 v12, 0x1

    if-eq v14, v5, :cond_5

    move/from16 v16, v12

    goto :goto_2

    :cond_5
    move/from16 v16, v10

    :goto_2
    if-eqz v16, :cond_7

    const-string/jumbo v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v1, v2, v4, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v17, v10

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 v17, v12

    :goto_4
    const/4 v2, 0x0

    move-object v4, v3

    :goto_5
    if-eqz v2, :cond_8

    move v2, v12

    goto :goto_6

    :cond_8
    move v2, v10

    :goto_6
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v4, v1}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_9

    move/from16 v3, p1

    move v10, v11

    goto/16 :goto_e

    :cond_9
    if-nez v13, :cond_a

    move v7, v12

    goto :goto_7

    :cond_a
    move v7, v10

    :goto_7
    if-eqz v17, :cond_d

    invoke-virtual {v4, v1}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4, v3}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_b
    if-eqz v13, :cond_c

    invoke-virtual {v13, v1}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    move v8, v12

    goto :goto_8

    :cond_d
    move v8, v10

    :goto_8
    if-nez v2, :cond_e

    if-eqz v16, :cond_e

    const/4 v9, 0x1

    const/4 v5, 0x0

    move/from16 v6, p5

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v5

    move-object/from16 v18, v4

    move/from16 v19, v12

    move v12, v5

    goto :goto_9

    :cond_e
    move-object/from16 v18, v4

    move/from16 v19, v12

    move v12, v10

    :goto_9
    if-eqz v16, :cond_f

    const/4 v9, 0x0

    const/4 v5, 0x0

    move/from16 v6, p5

    move-object v4, v13

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result v5

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move v13, v5

    :goto_a
    move v8, v2

    goto :goto_b

    :cond_f
    move-object/from16 v21, v3

    move-object/from16 v20, v13

    move v13, v10

    goto :goto_a

    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move v3, v10

    const/4 v10, 0x0

    move v4, v11

    const/4 v11, -0x1

    move/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move v9, v7

    move-object/from16 v4, v18

    move/from16 v0, v19

    move/from16 v7, p5

    invoke-static/range {v1 .. v14}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v2

    if-eq v2, v0, :cond_13

    const/4 v4, 0x2

    if-eq v2, v4, :cond_12

    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_c

    :cond_10
    const/4 v10, 0x0

    move v12, v0

    move v11, v4

    move-object/from16 v2, v20

    move-object v4, v2

    move-object/from16 v3, v21

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_11
    :goto_c
    const/4 v10, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    move v10, v4

    goto :goto_e

    :cond_13
    move v10, v0

    :goto_e
    if-eqz v10, :cond_14

    if-eqz p5, :cond_14

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_14
    return v10
.end method

.method public final checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result p2

    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, -0x1

    if-ne v8, p3, :cond_0

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    return p2

    :cond_0
    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p1

    invoke-virtual {p0, v8, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_1
    return p2
.end method

.method public final finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method
