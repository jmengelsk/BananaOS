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
    .registers 4

    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    const/4 v0, 0x0

    :goto_a
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    const/16 v2, 0xf

    if-ge v0, v2, :cond_2a

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Compilation reason not configured for TRON logging: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

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
    .registers 26

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

    sparse-switch v24, :sswitch_data_1fc

    const/16 v24, 0x16

    goto/16 :goto_1d6

    :sswitch_3c
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_1d6

    :cond_49
    const/16 v23, 0x18

    goto/16 :goto_1d6

    :sswitch_4d
    const/16 v24, 0x16

    const-string/jumbo v1, "install-fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_1d6

    :cond_5a
    const/16 v23, 0x17

    goto/16 :goto_1d6

    :sswitch_5e
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_1d6

    :cond_6b
    move/from16 v23, v24

    goto/16 :goto_1d6

    :sswitch_6f
    const/16 v24, 0x16

    const-string/jumbo v1, "install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_1d6

    :cond_7c
    move/from16 v23, v2

    goto/16 :goto_1d6

    :sswitch_80
    const/16 v24, 0x16

    const-string/jumbo v1, "post-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_1d6

    :cond_8d
    move/from16 v23, v3

    goto/16 :goto_1d6

    :sswitch_91
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-secondary-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_1d6

    :cond_9e
    move/from16 v23, v4

    goto/16 :goto_1d6

    :sswitch_a2
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto/16 :goto_1d6

    :cond_af
    move/from16 v23, v5

    goto/16 :goto_1d6

    :sswitch_b3
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-secondary-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_1d6

    :cond_c0
    move/from16 v23, v6

    goto/16 :goto_1d6

    :sswitch_c4
    const/16 v24, 0x16

    const-string/jumbo v1, "install-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto/16 :goto_1d6

    :cond_d1
    move/from16 v23, v7

    goto/16 :goto_1d6

    :sswitch_d5
    const/16 v24, 0x16

    const-string/jumbo v1, "cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    goto/16 :goto_1d6

    :cond_e2
    move/from16 v23, v8

    goto/16 :goto_1d6

    :sswitch_e6
    const/16 v24, 0x16

    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    goto/16 :goto_1d6

    :cond_f3
    move/from16 v23, v9

    goto/16 :goto_1d6

    :sswitch_f7
    const/16 v24, 0x16

    const-string/jumbo v1, "cloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_104

    goto/16 :goto_1d6

    :cond_104
    move/from16 v23, v10

    goto/16 :goto_1d6

    :sswitch_108
    const/16 v24, 0x16

    const-string/jumbo v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_115

    goto/16 :goto_1d6

    :cond_115
    move/from16 v23, v11

    goto/16 :goto_1d6

    :sswitch_119
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-secondary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    goto/16 :goto_1d6

    :cond_126
    move/from16 v23, v12

    goto/16 :goto_1d6

    :sswitch_12a
    const/16 v24, 0x16

    const-string/jumbo v1, "vdex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_137

    goto/16 :goto_1d6

    :cond_137
    move/from16 v23, v13

    goto/16 :goto_1d6

    :sswitch_13b
    const/16 v24, 0x16

    const-string/jumbo v1, "first-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    goto/16 :goto_1d6

    :cond_148
    move/from16 v23, v14

    goto/16 :goto_1d6

    :sswitch_14c
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_159

    goto/16 :goto_1d6

    :cond_159
    move/from16 v23, v15

    goto/16 :goto_1d6

    :sswitch_15d
    const/16 v24, 0x16

    const-string/jumbo v1, "boot-after-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    goto/16 :goto_1d6

    :cond_16a
    move/from16 v23, v16

    goto/16 :goto_1d6

    :sswitch_16e
    const/16 v24, 0x16

    const-string/jumbo v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17a

    goto :goto_1d6

    :cond_17a
    move/from16 v23, v17

    goto :goto_1d6

    :sswitch_17d
    const/16 v24, 0x16

    const-string/jumbo v1, "install-bulk-secondary-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189

    goto :goto_1d6

    :cond_189
    move/from16 v23, v18

    goto :goto_1d6

    :sswitch_18c
    const/16 v24, 0x16

    const-string/jumbo v1, "boot-after-mainline-update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_198

    goto :goto_1d6

    :cond_198
    move/from16 v23, v19

    goto :goto_1d6

    :sswitch_19b
    const/16 v24, 0x16

    const-string/jumbo v1, "prebuilt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a7

    goto :goto_1d6

    :cond_1a7
    const/16 v23, 0x3

    goto :goto_1d6

    :sswitch_1aa
    const/16 v24, 0x16

    const-string/jumbo v1, "ab-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    goto :goto_1d6

    :cond_1b6
    move/from16 v23, v20

    goto :goto_1d6

    :sswitch_1b9
    const/16 v24, 0x16

    const-string/jumbo v1, "install-fast-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c5

    goto :goto_1d6

    :cond_1c5
    move/from16 v23, v21

    goto :goto_1d6

    :sswitch_1c8
    const/16 v24, 0x16

    const-string/jumbo v1, "bg-dexopt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d4

    goto :goto_1d6

    :cond_1d4
    move/from16 v23, v22

    :goto_1d6
    packed-switch v23, :pswitch_data_262

    return v21

    :pswitch_1da  #0x18
    return v10

    :pswitch_1db  #0x17
    return v13

    :pswitch_1dc  #0x16
    return v12

    :pswitch_1dd  #0x15
    return v19

    :pswitch_1de  #0x14
    return v2

    :pswitch_1df  #0x13
    return v4

    :pswitch_1e0  #0x12
    return v5

    :pswitch_1e1  #0x11
    return v9

    :pswitch_1e2  #0x10
    return v14

    :pswitch_1e3  #0xf
    return v24

    :pswitch_1e4  #0xe
    return v22

    :pswitch_1e5  #0xd
    const/16 v0, 0x1a

    return v0

    :pswitch_1e8  #0xc
    return v16

    :pswitch_1e9  #0xb
    return v11

    :pswitch_1ea  #0xa
    const/16 v0, 0x18

    return v0

    :pswitch_1ed  #0x9
    return v20

    :pswitch_1ee  #0x8
    return v7

    :pswitch_1ef  #0x7
    return v3

    :pswitch_1f0  #0x6
    return v15

    :pswitch_1f1  #0x5
    return v6

    :pswitch_1f2  #0x4
    const/16 v0, 0x19

    return v0

    :pswitch_1f5  #0x3
    const/16 v0, 0x17

    return v0

    :pswitch_1f8  #0x2
    return v17

    :pswitch_1f9  #0x1
    return v8

    :pswitch_1fa  #0x0
    return v18

    nop

    :sswitch_data_1fc
    .sparse-switch
        -0x754fea3c -> :sswitch_1c8
        -0x6d771298 -> :sswitch_1b9
        -0x54fec890 -> :sswitch_1aa
        -0x4d00be45 -> :sswitch_19b
        -0x47de9523 -> :sswitch_18c
        -0x43162b55 -> :sswitch_17d
        -0x35db539b -> :sswitch_16e
        -0x23098d70 -> :sswitch_15d
        -0x1f55cf0e -> :sswitch_14c
        -0xc5e4811 -> :sswitch_13b
        0x3727e1 -> :sswitch_12a
        0x10534eb -> :sswitch_119
        0x1785c6b -> :sswitch_108
        0x5a5de35 -> :sswitch_f7
        0x5c4d208 -> :sswitch_e6
        0x34bd042e -> :sswitch_d5
        0x35aae5fb -> :sswitch_c4
        0x5ce564b1 -> :sswitch_b3
        0x68b4487e -> :sswitch_a2
        0x6ac14725 -> :sswitch_91
        0x749a27ff -> :sswitch_80
        0x74ae259b -> :sswitch_6f
        0x76889604 -> :sswitch_5e
        0x768a1d4e -> :sswitch_4d
        0x778489f8 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_1fa  #00000000
        :pswitch_1f9  #00000001
        :pswitch_1f8  #00000002
        :pswitch_1f5  #00000003
        :pswitch_1f2  #00000004
        :pswitch_1f1  #00000005
        :pswitch_1f0  #00000006
        :pswitch_1ef  #00000007
        :pswitch_1ee  #00000008
        :pswitch_1ed  #00000009
        :pswitch_1ea  #0000000a
        :pswitch_1e9  #0000000b
        :pswitch_1e8  #0000000c
        :pswitch_1e5  #0000000d
        :pswitch_1e4  #0000000e
        :pswitch_1e3  #0000000f
        :pswitch_1e2  #00000010
        :pswitch_1e1  #00000011
        :pswitch_1e0  #00000012
        :pswitch_1df  #00000013
        :pswitch_1de  #00000014
        :pswitch_1dd  #00000015
        :pswitch_1dc  #00000016
        :pswitch_1db  #00000017
        :pswitch_1da  #00000018
    .end packed-switch
.end method


# virtual methods
.method public final checkAndroidPermissions(ILjava/lang/String;)Z
    .registers 6

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

    if-eqz p1, :cond_2a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return p2
.end method

.method public final isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    return v2

    :cond_10
    const/4 p0, 0x1

    if-eqz p1, :cond_2f

    if-ne p1, p0, :cond_23

    const-string/jumbo p0, "dalvik.vm.profilebootclasspath"

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string/jumbo p1, "persist.device_config.runtime_native_boot.profilebootclasspath"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    return v2

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid profile type:"

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    return p0
.end method

.method public final postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 7

    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "Failed to snapshot profile for "

    const-string v1, " with error: "

    const-string v2, "ArtManagerService"

    invoke-static {p1, v0, p3, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;-><init>(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "Successfully snapshot profile for "

    const-string v1, "ArtManagerService"

    invoke-static {v0, p3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "package"

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v0, v2, :cond_12

    goto :goto_3b

    :cond_12
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v2, :cond_17

    goto :goto_46

    :cond_17
    if-ne p1, v8, :cond_1a

    goto :goto_3b

    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_28

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    :cond_28
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-object v2, v3

    :goto_30
    if-nez v2, :cond_33

    goto :goto_3b

    :cond_33
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_3b

    goto :goto_46

    :cond_3b
    :goto_3b
    invoke-virtual {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    :try_start_41
    invoke-interface {p4, v7}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_113

    goto/16 :goto_113

    :cond_46
    :goto_46
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v8, :cond_4d

    move v0, v8

    goto :goto_4e

    :cond_4d
    move v0, v6

    :goto_4e
    if-nez v0, :cond_56

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_56
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_114

    sget-boolean p1, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz p1, :cond_6a

    const-string/jumbo p1, "Requested snapshot for "

    const-string p5, ":"

    const-string v2, "ArtManagerService"

    invoke-static {p1, p2, p5, p3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    if-eqz v0, :cond_9a

    const-string/jumbo p1, "android"

    :try_start_6f
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p2
    :try_end_77
    .catch Ljava/lang/IllegalStateException; {:try_start_6f .. :try_end_77} :catch_95
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_6f .. :try_end_77} :catch_95

    :try_start_77
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/server/art/ArtManagerLocal;->snapshotBootImageProfile(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_89

    if-eqz p2, :cond_84

    :try_start_81
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_84} :catch_95
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_81 .. :try_end_84} :catch_95

    :cond_84
    invoke-virtual {p0, p4, p3, p1}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto/16 :goto_113

    :catchall_89
    move-exception p3

    if-eqz p2, :cond_94

    :try_start_8c
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception p2

    :try_start_91
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_94
    :goto_94
    throw p3
    :try_end_95
    .catch Ljava/lang/IllegalStateException; {:try_start_91 .. :try_end_95} :catch_95
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_91 .. :try_end_95} :catch_95

    :catch_95
    invoke-virtual {p0, v7, p4, p1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    goto/16 :goto_113

    :cond_9a
    :try_start_9a
    iget-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez p1, :cond_a8

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    :cond_a8
    iget-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p1, p2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_ae} :catch_af

    goto :goto_b0

    :catch_af
    move-object p1, v3

    :goto_b0
    if-nez p1, :cond_b6

    invoke-virtual {p0, v6, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    goto :goto_113

    :cond_b6
    iget-object p5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    if-nez p5, :cond_e1

    if-eqz v0, :cond_e1

    array-length v1, v0

    sub-int/2addr v1, v8

    :goto_cc
    if-ltz v1, :cond_e1

    aget-object v2, v0, v1

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v3, p1, v1

    move p5, v8

    goto :goto_e1

    :cond_de
    add-int/lit8 v1, v1, -0x1

    goto :goto_cc

    :cond_e1
    :goto_e1
    if-nez p5, :cond_e7

    invoke-virtual {p0, v8, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    goto :goto_113

    :cond_e7
    :try_start_e7
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p1
    :try_end_ef
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e7 .. :try_end_ef} :catch_110
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_ef} :catch_10c
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_e7 .. :try_end_ef} :catch_10c

    :try_start_ef
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v3}, Lcom/android/server/art/ArtManagerLocal;->snapshotAppProfile(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_f7
    .catchall {:try_start_ef .. :try_end_f7} :catchall_100

    if-eqz p1, :cond_fc

    :try_start_f9
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f9 .. :try_end_fc} :catch_110
    .catch Ljava/lang/IllegalStateException; {:try_start_f9 .. :try_end_fc} :catch_10c
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_f9 .. :try_end_fc} :catch_10c

    :cond_fc
    invoke-virtual {p0, p4, p3, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_113

    :catchall_100
    move-exception p3

    if-eqz p1, :cond_10b

    :try_start_103
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_107

    goto :goto_10b

    :catchall_107
    move-exception p1

    :try_start_108
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10b
    :goto_10b
    throw p3
    :try_end_10c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_108 .. :try_end_10c} :catch_110
    .catch Ljava/lang/IllegalStateException; {:try_start_108 .. :try_end_10c} :catch_10c
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_108 .. :try_end_10c} :catch_10c

    :catch_10c
    invoke-virtual {p0, v7, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    goto :goto_113

    :catch_110
    invoke-virtual {p0, v6, p4, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    :catch_113
    :goto_113
    return-void

    :cond_114
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "Runtime profiling is not enabled for "

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
