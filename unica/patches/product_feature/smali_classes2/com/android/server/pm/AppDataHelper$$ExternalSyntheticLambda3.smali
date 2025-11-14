.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppDataHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/CreateAppDataArgs;

.field public final synthetic f$6:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$7:Lcom/android/server/pm/pkg/AndroidPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/AppDataHelper;

    iput-object p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$3:I

    iput p5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$5:Landroid/os/CreateAppDataArgs;

    iput-object p7, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$6:Lcom/android/server/pm/PackageSetting;

    iput-object p8, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$7:Lcom/android/server/pm/pkg/AndroidPackage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/AppDataHelper;

    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$3:I

    iget v4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$5:Landroid/os/CreateAppDataArgs;

    iget-object v6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$6:Lcom/android/server/pm/PackageSetting;

    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$7:Lcom/android/server/pm/pkg/AndroidPackage;

    check-cast p1, Landroid/os/CreateAppDataResult;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, -0x1

    if-eqz p2, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to create app data for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", but trying to recover: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x5

    invoke-static {v9, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(IILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/CreateAppDataResult;

    invoke-direct {v1}, Landroid/os/CreateAppDataResult;-><init>()V

    iput-wide v7, v1, Landroid/os/CreateAppDataResult;->ceDataInode:J

    iput-wide v7, v1, Landroid/os/CreateAppDataResult;->deDataInode:J

    iput v10, v1, Landroid/os/CreateAppDataResult;->exceptionCode:I

    iput-object v9, v1, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    move-object p1, v1

    goto :goto_0

    :cond_0
    iput v10, v5, Landroid/os/CreateAppDataArgs;->previousAppId:I
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, v5}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    const-string/jumbo v1, "Recovery succeeded!"

    invoke-static {p2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v9
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string/jumbo v1, "Recovery failed!"

    invoke-static {p2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_1
    :goto_1
    iget-wide v1, p1, Landroid/os/CreateAppDataResult;->ceDataInode:J

    iget-wide p1, p1, Landroid/os/CreateAppDataResult;->deDataInode:J

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_2

    cmp-long v5, v1, v7

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5

    :try_start_3
    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v9

    iput-wide v1, v9, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_2
    :goto_2
    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_3

    cmp-long v1, p1, v7

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_4
    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v2

    iput-wide p1, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_3
    :goto_3
    if-eqz p0, :cond_4

    invoke-virtual {v0, p0, v6, v3, v4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    :cond_4
    return-void
.end method
