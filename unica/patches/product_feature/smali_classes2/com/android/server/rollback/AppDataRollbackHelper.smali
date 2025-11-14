.class public Lcom/android/server/rollback/AppDataRollbackHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/ApexManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object p2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method


# virtual methods
.method public final doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z
    .registers 18

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_7c

    :cond_10
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_7c

    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1f
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v0, :cond_24

    move v1, v2

    :cond_24
    const-string v0, "APEX packages have not been scanned"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_50

    if-nez v0, :cond_3c

    const-string p0, "ApexManager"

    const-string p2, "Invalid apex package name: "

    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p2, p3, v0}, Landroid/apex/IApexService;->restoreCeData(IILjava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_7c

    :catch_44
    move-exception v0

    move-object p0, v0

    const-string p1, "ApexManager"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    :catchall_50
    move-exception v0

    move-object p0, v0

    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_50

    throw p0

    :cond_54
    :try_start_54
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-eqz v0, :cond_70

    if-eq v0, v2, :cond_5d

    goto :goto_7c

    :cond_5d
    iget-object v3, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    move v6, p2

    move/from16 v7, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    return v2

    :catch_6d
    move-exception v0

    move-object p0, v0

    goto :goto_92

    :cond_70
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0
    :try_end_7a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_54 .. :try_end_7a} :catch_6d

    if-nez v0, :cond_7d

    :cond_7c
    :goto_7c
    return v2

    :cond_7d
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v4, 0x0

    move v8, p2

    move v9, p3

    move v6, p4

    move-object/from16 v7, p5

    move/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8a} :catch_8b

    return v2

    :catch_8b
    move-exception v0

    move-object p0, v0

    :try_start_8d
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
    :try_end_92
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8d .. :try_end_92} :catch_6d

    :goto_92
    const-string/jumbo p2, "RollbackManager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unable to restore/wipe app data: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " policy="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z
    .registers 14

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4f

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_4e

    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    iget-object p4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_17
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    const-string v3, "APEX packages have not been scanned"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p4
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_4a

    if-nez v0, :cond_36

    const-string p0, "ApexManager"

    const-string p2, "Invalid apex package name: "

    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_36
    :try_start_36
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p2, p3, v0}, Landroid/apex/IApexService;->snapshotCeData(IILjava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3e

    return v2

    :catch_3e
    move-exception v0

    move-object p0, v0

    const-string p1, "ApexManager"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catchall_4a
    move-exception v0

    move-object p0, v0

    :try_start_4c
    monitor-exit p4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4a

    throw p0

    :cond_4e
    return v2

    :cond_4f
    :try_start_4f
    iget-object p0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0
    :try_end_59
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4f .. :try_end_59} :catch_73

    if-nez v0, :cond_5c

    :goto_5b
    return v1

    :cond_5c
    :try_start_5c
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5e} :catch_69

    const/4 v4, 0x0

    move v6, p2

    move v7, p3

    move v8, p4

    :try_start_62
    invoke-interface/range {v3 .. v8}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    return v2

    :catch_66
    move-exception v0

    :goto_67
    move-object p0, v0

    goto :goto_6c

    :catch_69
    move-exception v0

    move v6, p2

    goto :goto_67

    :goto_6c
    :try_start_6c
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
    :try_end_71
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6c .. :try_end_71} :catch_71

    :catch_71
    move-exception v0

    goto :goto_75

    :catch_73
    move-exception v0

    move v6, p2

    :goto_75
    move-object p0, v0

    const-string/jumbo p2, "RollbackManager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "Unable to create app data snapshot for: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isUserCredentialLocked(I)Z
    .registers 2

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
