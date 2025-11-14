.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public final mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

.field public final mContext:Landroid/content/Context;

.field public final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v1, Lcom/android/server/pm/PackageDexOptimizer$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    iput-object p4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object p3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    move-object p2, p1

    check-cast p2, Lcom/android/server/pm/PackageDexOptimizer$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p4, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    return-void
.end method

.method public static getAugmentedReasonName(IZ)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "-dm"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    const/16 v1, 0x16

    if-ne p0, v1, :cond_1

    const-string/jumbo p0, "install-speg"

    goto :goto_1

    :cond_1
    const/16 v1, 0x15

    if-ne p0, v1, :cond_2

    const-string/jumbo p0, "install-spqr"

    goto :goto_1

    :cond_2
    const/16 v1, 0x17

    if-ne p0, v1, :cond_3

    const-string/jumbo p0, "adcp"

    goto :goto_1

    :cond_3
    const/16 v1, 0x18

    if-ne p0, v1, :cond_4

    const-string/jumbo p0, "install-repair"

    goto :goto_1

    :cond_4
    const/16 v1, 0x19

    if-ne p0, v1, :cond_5

    const-string/jumbo p0, "labs"

    goto :goto_1

    :cond_5
    if-ltz p0, :cond_6

    const/16 v1, 0xf

    if-ge p0, v1, :cond_6

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object p0, v1, p0

    :goto_1
    invoke-static {v0, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "reason "

    const-string v1, " invalid"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public adjustDexoptFlags(I)I
    .locals 0

    return p1
.end method

.method public adjustDexoptNeeded(I)I
    .locals 0

    return p1
.end method

.method public final canOptimizePackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    check-cast p0, Lcom/android/server/pm/PackageDexOptimizer$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    if-eqz p0, :cond_3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v1, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final dexOptPath(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move/from16 v9, p7

    move/from16 v8, p12

    const-string/jumbo v10, "PackageDexOptimizer"

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "oat"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-boolean v0, v0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_17

    and-int/lit8 v12, v9, 0x2

    const/16 v18, 0x1

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    move/from16 v0, v18

    goto :goto_2

    :cond_4
    move v0, v13

    :goto_2
    and-int/lit8 v14, v9, 0x10

    if-eqz v14, :cond_5

    move/from16 v2, v18

    goto :goto_3

    :cond_5
    move v2, v13

    :goto_3
    if-eqz v2, :cond_7

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :cond_7
    :goto_4
    const/16 v19, -0x1

    :try_start_0
    const-string v0, "-profile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v7, p9

    :try_start_1
    invoke-static/range {v2 .. v7}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    const/4 v2, 0x3

    if-ne v8, v2, :cond_8

    const-string/jumbo v2, "persist.sys.app_install_boost"

    const-string/jumbo v5, "false"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v0, "System is busy state and dexopt skipped!"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v13

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v0

    move v7, v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_7

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected exception when calling dexoptNeeded on "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    move/from16 v7, v19

    goto :goto_8

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "IOException reading apk: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_8
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_9

    return v13

    :cond_9
    const-string/jumbo v0, "Running dexopt (dexoptNeeded="

    const-string v2, ") on: "

    const-string v5, " pkg="

    invoke-static {v7, v0, v2, v3, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isa="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dexoptFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v5, v9, 0x8

    const/16 v15, 0x8

    if-ne v5, v15, :cond_a

    const-string/jumbo v5, "boot_complete"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit8 v5, v9, 0x4

    const/4 v15, 0x4

    if-ne v5, v15, :cond_b

    const-string/jumbo v5, "debuggable"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const/16 v5, 0x10

    if-ne v14, v5, :cond_c

    const-string/jumbo v5, "profile_guided"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v5, 0x2

    if-ne v12, v5, :cond_d

    const-string/jumbo v12, "public"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/lit8 v12, v9, 0x20

    const/16 v14, 0x20

    if-ne v12, v14, :cond_e

    const-string/jumbo v12, "secondary"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    and-int/lit8 v12, v9, 0x40

    const/16 v14, 0x40

    if-ne v12, v14, :cond_f

    const-string/jumbo v12, "force"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    and-int/lit16 v12, v9, 0x80

    const/16 v14, 0x80

    if-ne v12, v14, :cond_10

    const-string/jumbo v12, "storage_ce"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    and-int/lit16 v12, v9, 0x100

    const/16 v14, 0x100

    if-ne v12, v14, :cond_11

    const-string/jumbo v12, "storage_de"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    and-int/lit16 v12, v9, 0x200

    const/16 v14, 0x200

    if-ne v12, v14, :cond_12

    const-string/jumbo v12, "idle_background_job"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    and-int/lit16 v12, v9, 0x400

    const/16 v14, 0x400

    if-ne v12, v14, :cond_13

    const-string/jumbo v12, "enable_hidden_api_checks"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v12, ","

    invoke-static {v12, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targetFilter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " oatDir="

    const-string v12, " classLoaderContext="

    move-object/from16 v14, p6

    invoke-static {v0, v2, v11, v12, v14}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    move v12, v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v15, v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v16

    if-eqz p11, :cond_14

    move/from16 v13, v18

    :cond_14
    invoke-static {v8, v13}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v17
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v13, v0

    move-object/from16 v20, v10

    move v0, v12

    move-object v12, v14

    move-object v8, v15

    move/from16 v14, v16

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object v10, v4

    move/from16 v4, p8

    :try_start_3
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    return v0

    :cond_15
    if-eqz v8, :cond_16

    iget-object v0, v1, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :cond_16
    :goto_9
    return v18

    :catch_5
    move-exception v0

    move-object/from16 v20, v10

    :goto_a
    const-string v1, "Failed to dexopt"

    move-object/from16 v2, v20

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v19

    :cond_17
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0
.end method

.method public final performDexOpt(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v2, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, v1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xa1220

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dexopt for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has invalid uid."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "System server dexopting should be done via odrefresh"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final performDexOptLI(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v13, p3

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    iput-object v3, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    const/4 v14, 0x0

    move v3, v14

    :goto_0
    iget-object v4, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    iget-object v5, v4, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, v4, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "PackageDexOptimizer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Well this is awkward; package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " had UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, 0x270f

    :cond_2
    move v8, v3

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Z

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v6

    aput-boolean v6, v5, v14

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v16, 0x4

    if-ge v7, v9, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v9

    add-int/lit8 v10, v7, -0x1

    aget v9, v9, v10

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    move v9, v14

    :goto_2
    aput-boolean v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const-string v7, ""

    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    const/16 v17, 0x0

    if-eqz v10, :cond_5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v5

    move/from16 v24, v8

    move/from16 v19, v14

    const/16 v20, 0x1

    move-object v14, v2

    goto/16 :goto_f

    :cond_5
    new-instance v10, Ljava/io/File;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v12

    new-array v4, v12, [Ljava/lang/String;

    move/from16 v19, v14

    :goto_3
    if-ge v14, v12, :cond_7

    const/16 v20, 0x1

    new-instance v6, Ljava/io/File;

    move-object/from16 v21, v4

    aget-object v4, v11, v14

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v21, v14

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v22, v5

    const-string/jumbo v5, "Split paths have different base paths: "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DexoptUtils"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v22, v5

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    goto :goto_3

    :cond_7
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    new-instance v4, Ljava/io/File;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v12, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aget-boolean v10, v22, v19

    if-eqz v10, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v9, v17

    :goto_5
    aput-object v9, v6, v19

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_a

    :cond_9
    move/from16 v24, v8

    goto/16 :goto_b

    :cond_a
    new-array v10, v12, [Ljava/lang/String;

    move/from16 v11, v19

    :goto_6
    if-ge v11, v12, :cond_b

    aget-object v14, v21, v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitClassLoaderNames()[Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v8

    aget-object v8, v23, v11

    invoke-static {v14, v8}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v24

    goto :goto_6

    :cond_b
    move/from16 v24, v8

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v8, v20

    :goto_7
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v8, v11, :cond_d

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    aget-boolean v12, v22, v11

    if-eqz v12, :cond_c

    invoke-static {v11, v10, v9, v6, v4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    move/from16 v4, v20

    :goto_8
    if-ge v4, v5, :cond_12

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitClassLoaderNames()[Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v4, -0x1

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aget-boolean v9, v22, v4

    if-eqz v9, :cond_f

    aget-object v9, v6, v4

    if-nez v9, :cond_e

    goto :goto_9

    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v6, v4

    invoke-static {v8, v10}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_9
    aput-object v8, v6, v4

    goto :goto_a

    :cond_f
    aput-object v17, v6, v4

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :goto_b
    move/from16 v7, v20

    :goto_c
    if-ge v7, v5, :cond_12

    aget-boolean v8, v22, v7

    if-eqz v8, :cond_10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v8}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_d

    :cond_10
    aput-object v17, v6, v7

    :goto_d
    add-int/lit8 v8, v7, -0x1

    aget-object v8, v21, v8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v4, v8

    goto :goto_e

    :cond_11
    const-string v9, ":"

    invoke-static {v4, v9, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_12
    move-object v14, v6

    :goto_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v4, v14

    if-eq v2, v4, :cond_14

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistent information between AndroidPackage and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pkg.getBaseCodePath="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg.getSplitCodePaths="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_13

    const-string/jumbo v0, "null"

    goto :goto_10

    :cond_13
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    move/from16 v1, v19

    move v2, v1

    :goto_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3d

    aget-boolean v4, v22, v1

    if-nez v4, :cond_15

    goto :goto_12

    :cond_15
    aget-object v4, v14, v1

    if-eqz v4, :cond_3c

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v13, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    if-eqz v5, :cond_16

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :goto_12
    move/from16 v30, v1

    move-object/from16 v29, v3

    move-object/from16 v27, v14

    move/from16 v8, v24

    const/4 v13, -0x1

    goto/16 :goto_2c

    :cond_16
    if-nez v1, :cond_17

    move-object/from16 v5, v17

    goto :goto_13

    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    :goto_13
    invoke-static {v5}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, v13, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_18

    move/from16 v6, v20

    goto :goto_14

    :cond_18
    move/from16 v6, v19

    :goto_14
    iget-object v7, v13, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-static {v7}, Ldalvik/system/DexFile;->isOptimizedCompilerFilter(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string/jumbo v7, "verify"

    goto :goto_15

    :cond_19
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_1a
    invoke-static {v7}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1b
    :goto_15
    invoke-static {v7}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_1c

    if-eqz v6, :cond_1c

    iget v6, v13, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    if-eq v6, v9, :cond_1c

    move/from16 v6, v20

    goto :goto_16

    :cond_1c
    move/from16 v6, v19

    :goto_16
    iget v8, v13, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    const/16 v10, 0x400

    and-int/2addr v8, v10

    if-eqz v8, :cond_1d

    goto :goto_17

    :cond_1d
    if-eqz v6, :cond_1f

    :goto_17
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_1e

    move-object/from16 v8, v17

    goto :goto_18

    :cond_1e
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    :goto_18
    move-object v11, v8

    goto :goto_19

    :cond_1f
    move-object/from16 v11, v17

    :goto_19
    iget v8, v13, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_3b

    if-eqz v6, :cond_22

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cloud-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_21

    :try_start_1
    iget-object v8, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-boolean v8, v8, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v8, :cond_20

    move-object v8, v7

    move-object v7, v5

    goto :goto_1a

    :cond_20
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_2d

    :cond_21
    const/16 v7, 0xe

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    move-object/from16 v7, v17

    :goto_1a
    move-object/from16 v21, v5

    move-object v5, v7

    move-object v7, v8

    goto :goto_1b

    :catchall_1
    move-exception v0

    goto/16 :goto_2d

    :cond_22
    move-object/from16 v21, v17

    :goto_1b
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v8

    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v12

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v23

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v25

    invoke-static {v7}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_25

    iget v9, v13, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_23

    move/from16 v9, v20

    goto :goto_1c

    :cond_23
    move/from16 v9, v19

    :goto_1c
    if-nez v9, :cond_25

    if-eqz v6, :cond_24

    goto :goto_1d

    :cond_24
    move/from16 v6, v19

    goto :goto_1e

    :cond_25
    :goto_1d
    move/from16 v6, v20

    :goto_1e
    if-eqz v26, :cond_26

    const/16 v9, 0x10

    goto :goto_1f

    :cond_26
    move/from16 v9, v19

    :goto_1f
    if-nez v12, :cond_27

    move/from16 v10, v19

    :cond_27
    iget v12, v13, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    move-object/from16 v27, v14

    const/4 v14, 0x2

    move/from16 v28, v1

    if-eqz v12, :cond_28

    move/from16 v1, v20

    if-eq v12, v1, :cond_28

    if-eq v12, v14, :cond_28

    const/4 v1, 0x3

    if-eq v12, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_20

    :cond_28
    move/from16 v1, v19

    :goto_20
    if-eqz v26, :cond_2a

    if-eqz v23, :cond_29

    if-nez v25, :cond_2a

    :cond_29
    const-string/jumbo v12, "dalvik.vm.appimageformat"

    const-string v14, ""

    invoke-static {v12, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2a

    const/4 v12, 0x1

    goto :goto_21

    :cond_2a
    move/from16 v12, v19

    :goto_21
    if-eqz v6, :cond_2b

    const/4 v6, 0x2

    goto :goto_22

    :cond_2b
    move/from16 v6, v19

    :goto_22
    if-eqz v8, :cond_2c

    move/from16 v8, v16

    goto :goto_23

    :cond_2c
    move/from16 v8, v19

    :goto_23
    or-int/2addr v6, v8

    or-int/2addr v6, v9

    iget v8, v13, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_2d

    const/16 v9, 0x8

    goto :goto_24

    :cond_2d
    move/from16 v9, v19

    :goto_24
    or-int/2addr v6, v9

    and-int/lit16 v9, v8, 0x200

    if-eqz v9, :cond_2e

    const/16 v9, 0x200

    goto :goto_25

    :cond_2e
    move/from16 v9, v19

    :goto_25
    or-int/2addr v6, v9

    if-eqz v1, :cond_2f

    const/16 v1, 0x800

    goto :goto_26

    :cond_2f
    move/from16 v1, v19

    :goto_26
    or-int/2addr v1, v6

    if-eqz v12, :cond_30

    const/16 v6, 0x1000

    goto :goto_27

    :cond_30
    move/from16 v6, v19

    :goto_27
    or-int/2addr v1, v6

    and-int/lit16 v6, v8, 0x800

    if-eqz v6, :cond_31

    const/16 v6, 0x2000

    goto :goto_28

    :cond_31
    move/from16 v6, v19

    :goto_28
    or-int/2addr v1, v6

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v1

    array-length v14, v15

    move/from16 v6, v19

    :goto_29
    if-ge v6, v14, :cond_38

    move-object v8, v3

    move-object v3, v4

    aget-object v4, v15, v6

    move v9, v6

    aget-object v6, v27, v28

    iget v10, v13, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_32

    move v10, v9

    const/4 v9, 0x1

    goto :goto_2a

    :cond_32
    move v10, v9

    move/from16 v9, v19

    :goto_2a
    iget v12, v13, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    move-object/from16 v29, v8

    move/from16 v18, v10

    move/from16 v8, v24

    move/from16 v30, v28

    const/4 v13, -0x1

    const/16 v20, 0x1

    move-object v10, v5

    move-object v5, v7

    move/from16 v24, v14

    move v7, v1

    move v14, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x2

    if-ne v4, v0, :cond_36

    if-ne v14, v13, :cond_34

    if-nez v21, :cond_33

    return v14

    :cond_33
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :cond_34
    if-nez v21, :cond_35

    return v4

    :cond_35
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :cond_36
    if-eq v14, v13, :cond_37

    if-eqz v4, :cond_37

    move v2, v4

    goto :goto_2b

    :cond_37
    move v2, v14

    :goto_2b
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, p3

    move-object v4, v3

    move v1, v7

    move/from16 v14, v24

    move-object/from16 v3, v29

    move/from16 v28, v30

    move-object v7, v5

    move/from16 v24, v8

    move-object v5, v10

    goto :goto_29

    :catchall_2
    move-exception v0

    move-object/from16 v17, v21

    goto :goto_2d

    :cond_38
    move v14, v2

    move-object/from16 v29, v3

    move/from16 v8, v24

    move/from16 v30, v28

    const/4 v13, -0x1

    const/16 v20, 0x1

    if-nez v21, :cond_39

    move v2, v14

    :goto_2c
    move/from16 v0, v30

    add-int/lit8 v1, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, p3

    move/from16 v24, v8

    move-object/from16 v14, v27

    move-object/from16 v3, v29

    goto/16 :goto_11

    :cond_39
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :goto_2d
    if-eqz v17, :cond_3a

    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :cond_3a
    throw v0

    :cond_3b
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :cond_3c
    move v0, v1

    move-object/from16 v29, v3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    const-string v3, " path="

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v8, v29

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    return v2
.end method

.method public final releaseWakeLockLI(J)V
    .locals 4

    const-string/jumbo v0, "PackageDexOptimizer"

    const-string/jumbo v1, "WakeLock "

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/32 p1, 0xa1220

    cmp-long p1, v2, p1

    if-ltz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " time out. Operation took "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms. Thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error while releasing "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " lock"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method
