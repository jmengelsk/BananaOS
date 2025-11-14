.class public final Lcom/android/server/pm/MovePackageHelper$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic val$freezer:Lcom/android/server/pm/PackageFreezer;

.field public final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$isCurrentLocationExternal:Z

.field public final synthetic val$moveId:I

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    iput-object p3, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput p4, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$packageName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$isCurrentLocationExternal:Z

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V

    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    const/4 p3, 0x0

    const/4 p4, -0x6

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    sget-boolean v0, Lcom/android/server/pm/AsecInstallHelper;->sPreMounted:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget v2, v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    invoke-virtual {v1, v2, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Lcom/android/server/pm/MovePackageHelper$2;

    invoke-direct {v3, v1, v0}, Lcom/android/server/pm/MovePackageHelper$2;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    invoke-virtual {p1, p0, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/16 p4, -0x64

    invoke-virtual {p1, p2, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$packageName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$isCurrentLocationExternal:Z

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p4

    if-nez p4, :cond_6

    goto :goto_5

    :cond_6
    const-class v0, Landroid/os/storage/StorageManager;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_7

    move p3, v2

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p1

    if-eqz p1, :cond_8

    move p3, v1

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    const/4 p3, 0x3

    :cond_9
    :goto_4
    const/16 p1, 0xb7

    if-nez p0, :cond_a

    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p3, v2, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    return-void

    :cond_a
    if-eqz p0, :cond_b

    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {p1, p3, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
