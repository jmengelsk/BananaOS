.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppDataHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppDataHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageSetting;

    iput p4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppDataHelper;

    iget-boolean v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageSetting;

    iget v5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$3:I

    iget v6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$4:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_6c

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_6c

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result p0

    if-nez p0, :cond_6c

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isDefaultToDeviceProtectedStorage()Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x2

    :goto_24
    :try_start_24
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v7
    :try_end_2e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_24 .. :try_end_2e} :catch_3e

    if-nez v7, :cond_31

    goto :goto_60

    :cond_31
    :try_start_31
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, v2, v4, v5, p0}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_60

    :catch_37
    move-exception v0

    move-object p0, v0

    :try_start_39
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
    :try_end_3e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_39 .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to migrate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_60
    new-instance v2, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v2}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    const/4 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    :cond_6c
    return-void
.end method
