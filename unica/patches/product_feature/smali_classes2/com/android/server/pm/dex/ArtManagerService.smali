.class public final Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    const/16 v2, 0xf

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Compilation reason not configured for TRON logging: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    const-class p0, Landroid/content/pm/dex/ArtManagerInternal;

    new-instance p1, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    invoke-direct {p1}, Landroid/content/pm/dex/ArtManagerInternal;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static getCompilationReasonTronValue(Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p0

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v23, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    const/16 v24, 0x16

    goto/16 :goto_0

    :sswitch_0
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v23, 0x18

    goto/16 :goto_0

    :sswitch_1
    const/16 v24, 0x16

    const-string/jumbo v1, "install-fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v23, 0x17

    goto/16 :goto_0

    :sswitch_2
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v23, v24

    goto/16 :goto_0

    :sswitch_3
    const/16 v24, 0x16

    const-string/jumbo v1, "install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v23, v2

    goto/16 :goto_0

    :sswitch_4
    const/16 v24, 0x16

    const-string/jumbo v1, "post-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    move/from16 v23, v3

    goto/16 :goto_0

    :sswitch_5
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-secondary-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    move/from16 v23, v4

    goto/16 :goto_0

    :sswitch_6
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    move/from16 v23, v5

    goto/16 :goto_0

    :sswitch_7
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-secondary-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    move/from16 v23, v6

    goto/16 :goto_0

    :sswitch_8
    const/16 v24, 0x16

    const-string/jumbo v1, "install-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    move/from16 v23, v7

    goto/16 :goto_0

    :sswitch_9
    const/16 v24, 0x16

    const-string/jumbo v1, "cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    move/from16 v23, v8

    goto/16 :goto_0

    :sswitch_a
    const/16 v24, 0x16

    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    move/from16 v23, v9

    goto/16 :goto_0

    :sswitch_b
    const/16 v24, 0x16

    const-string/jumbo v1, "cloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    move/from16 v23, v10

    goto/16 :goto_0

    :sswitch_c
    const/16 v24, 0x16

    const-string/jumbo v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    move/from16 v23, v11

    goto/16 :goto_0

    :sswitch_d
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-secondary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    move/from16 v23, v12

    goto/16 :goto_0

    :sswitch_e
    const/16 v24, 0x16

    const-string/jumbo v1, "vdex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    move/from16 v23, v13

    goto/16 :goto_0

    :sswitch_f
    const/16 v24, 0x16

    const-string/jumbo v1, "first-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    move/from16 v23, v14

    goto/16 :goto_0

    :sswitch_10
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    move/from16 v23, v15

    goto/16 :goto_0

    :sswitch_11
    const/16 v24, 0x16

    const-string/jumbo v1, "boot-after-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    move/from16 v23, v16

    goto/16 :goto_0

    :sswitch_12
    const/16 v24, 0x16

    const-string/jumbo v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    move/from16 v23, v17

    goto :goto_0

    :sswitch_13
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-secondary-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    move/from16 v23, v18

    goto :goto_0

    :sswitch_14
    const/16 v24, 0x16

    const-string/jumbo v1, "boot-after-mainline-update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    move/from16 v23, v19

    goto :goto_0

    :sswitch_15
    const/16 v24, 0x16

    const-string/jumbo v1, "prebuilt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/16 v23, 0x3

    goto :goto_0

    :sswitch_16
    const/16 v24, 0x16

    const-string/jumbo v1, "ab-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    move/from16 v23, v20

    goto :goto_0

    :sswitch_17
    const/16 v24, 0x16

    const-string/jumbo v1, "install-fast-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    move/from16 v23, v21

    goto :goto_0

    :sswitch_18
    const/16 v24, 0x16

    const-string/jumbo v1, "bg-dexopt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    move/from16 v23, v22

    :goto_0
    packed-switch v23, :pswitch_data_0

    return v21

    :pswitch_0
    return v10

    :pswitch_1
    return v13

    :pswitch_2
    return v12

    :pswitch_3
    return v19

    :pswitch_4
    return v2

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    return v9

    :pswitch_8
    return v14

    :pswitch_9
    return v24

    :pswitch_a
    return v22

    :pswitch_b
    const/16 v0, 0x1a

    return v0

    :pswitch_c
    return v16

    :pswitch_d
    return v11

    :pswitch_e
    const/16 v0, 0x18

    return v0

    :pswitch_f
    return v20

    :pswitch_10
    return v7

    :pswitch_11
    return v3

    :pswitch_12
    return v15

    :pswitch_13
    return v6

    :pswitch_14
    const/16 v0, 0x19

    return v0

    :pswitch_15
    const/16 v0, 0x17

    return v0

    :pswitch_16
    return v17

    :pswitch_17
    return v8

    :pswitch_18
    return v18

    nop

    :sswitch_data_0
    .sparse-switch
        -0x754fea3c -> :sswitch_18
        -0x6d771298 -> :sswitch_17
        -0x54fec890 -> :sswitch_16
        -0x4d00be45 -> :sswitch_15
        -0x47de9523 -> :sswitch_14
        -0x43162b55 -> :sswitch_13
        -0x35db539b -> :sswitch_12
        -0x23098d70 -> :sswitch_11
        -0x1f55cf0e -> :sswitch_10
        -0xc5e4811 -> :sswitch_f
        0x3727e1 -> :sswitch_e
        0x10534eb -> :sswitch_d
        0x1785c6b -> :sswitch_c
        0x5a5de35 -> :sswitch_b
        0x5c4d208 -> :sswitch_a
        0x34bd042e -> :sswitch_9
        0x35aae5fb -> :sswitch_8
        0x5ce564b1 -> :sswitch_7
        0x68b4487e -> :sswitch_6
        0x6ac14725 -> :sswitch_5
        0x749a27ff -> :sswitch_4
        0x74ae259b -> :sswitch_3
        0x76889604 -> :sswitch_2
        0x768a1d4e -> :sswitch_1
        0x778489f8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final checkAndroidPermissions(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_RUNTIME_PROFILES"

    const-string v2, "ArtManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public final isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_1

    const-string/jumbo p0, "dalvik.vm.profilebootclasspath"

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string/jumbo p1, "persist.device_config.runtime_native_boot.profilebootclasspath"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid profile type:"

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return p0
.end method

.method public final postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Failed to snapshot profile for "

    const-string v1, " with error: "

    const-string v2, "ArtManagerService"

    invoke-static {p1, v0, p3, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;-><init>(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Successfully snapshot profile for "

    const-string v1, "ArtManagerService"

    invoke-static {v0, p3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "package"

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    if-ne p1, v8, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_1
    invoke-interface {p4, v7}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_9

    :cond_6
    :goto_2
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v8, :cond_7

    move v0, v8

    goto :goto_3

    :cond_7
    move v0, v6

    :goto_3
    if-nez v0, :cond_8

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_8
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_14

    sget-boolean p1, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz p1, :cond_9

    const-string/jumbo p1, "Requested snapshot for "

    const-string p5, ":"

    const-string v2, "ArtManagerService"

    invoke-static {p1, p2, p5, p3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v0, :cond_c

    const-string/jumbo p1, "android"

    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/server/art/ArtManagerLocal;->snapshotBootImageProfile(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_a

    :try_start_4
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_a
    invoke-virtual {p0, p4, p3, p1}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_0
    move-exception p3

    if-eqz p2, :cond_b

    :try_start_5
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    throw p3
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    invoke-virtual {p0, v7, p4, p1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    :try_start_7
    iget-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez p1, :cond_d

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p1, p2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-object p1, v3

    :goto_5
    if-nez p1, :cond_e

    invoke-virtual {p0, v6, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    iget-object p5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    if-nez p5, :cond_10

    if-eqz v0, :cond_10

    array-length v1, v0

    sub-int/2addr v1, v8

    :goto_6
    if-ltz v1, :cond_10

    aget-object v2, v0, v1

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v3, p1, v1

    move p5, v8

    goto :goto_7

    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_10
    :goto_7
    if-nez p5, :cond_11

    invoke-virtual {p0, v8, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v3}, Lcom/android/server/art/ArtManagerLocal;->snapshotAppProfile(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz p1, :cond_12

    :try_start_a
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_a .. :try_end_a} :catch_3

    :cond_12
    invoke-virtual {p0, p4, p3, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_9

    :catchall_2
    move-exception p3

    if-eqz p1, :cond_13

    :try_start_b
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception p1

    :try_start_c
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_8
    throw p3
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    invoke-virtual {p0, v7, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    goto :goto_9

    :catch_4
    invoke-virtual {p0, v6, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    :catch_5
    :goto_9
    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "Runtime profiling is not enabled for "

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
