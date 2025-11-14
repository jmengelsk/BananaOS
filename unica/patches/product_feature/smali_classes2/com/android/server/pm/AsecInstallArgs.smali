.class public final Lcom/android/server/pm/AsecInstallArgs;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCid:Ljava/lang/String;

.field public final mInstallFlags:I

.field public mIsException:Z

.field public mPackagePath:Ljava/lang/String;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/PackageManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AsecInstallArgs;->mIsException:Z

    iput-object p2, p0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput p1, p0, Lcom/android/server/pm/AsecInstallArgs;->mInstallFlags:I

    return-void
.end method


# virtual methods
.method public final pendingPostDeleteLI(IZ)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->mCid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string v2, "AsecInstallArgs.doPostDeleteLI("

    const-string v3, "): "

    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", codePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/AsecInstallArgs;->mPackagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/AsecInstallArgs;->mPackagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    xor-int/lit8 v2, p2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v1, 0x0

    goto :goto_75

    :cond_53
    if-eqz p2, :cond_75

    const/4 v2, 0x5

    if-ge p1, v2, :cond_69

    iget-object v3, p0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AsecInstallArgs;ZI)V

    const v5, 0xea60

    mul-int/2addr v5, p1

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_69
    const/4 v3, 0x4

    if-ne p1, v3, :cond_75

    const-string p1, "ASEC unmount failed and will try for last chance: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_75
    :goto_75
    if-nez v1, :cond_7e

    if-eqz p2, :cond_7e

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->mCid:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    :cond_7e
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public final setMountPath(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "pkg.apk"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->mPackagePath:Ljava/lang/String;

    goto :goto_20

    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->mPackagePath:Ljava/lang/String;

    :goto_20
    return-void
.end method
