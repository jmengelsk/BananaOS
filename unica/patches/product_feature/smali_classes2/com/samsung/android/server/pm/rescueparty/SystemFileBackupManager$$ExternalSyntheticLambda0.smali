.class public final synthetic Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    iget p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;

    packed-switch p0, :pswitch_data_cc

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Notifying "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of system ready"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SystemFileBackupManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->onSystemReady()V

    return-void

    :pswitch_27  #0x0
    const-string/jumbo p0, "SystemFileBackupManager"

    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "Saving files for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Failed to save files: "

    const-string/jumbo p1, "Saving files on "

    iget-object v0, p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_40
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerDir()Ljava/io/File;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    iget-object v4, p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "backup_item_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_73

    :catchall_71
    move-exception p0

    goto :goto_ca

    :cond_73
    :goto_73
    const-string v2, "AbstractBackupController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_40 .. :try_end_84} :catchall_71

    :try_start_84
    invoke-virtual {p2, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->onSaveFiles(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_bf

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->addBackupItemList(Ljava/io/File;)V

    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->writeBackupItems()V

    invoke-virtual {p2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->cleanUpOutdatedFiles()V

    iget-object p1, p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_c8

    invoke-virtual {p2, v2}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->setLastSelectedItemIndex(I)V

    iget-object p1, p2, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->mLastSelectedBackupItemIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string/jumbo v2, "last_selected_item"

    const/4 v3, 0x0

    invoke-virtual {p2, p1, v2, v3}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->putBackupConfigInt(ILjava/lang/String;Z)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_ac} :catch_ad
    .catchall {:try_start_84 .. :try_end_ac} :catchall_71

    goto :goto_c8

    :catch_ad
    move-exception p1

    :try_start_ae
    const-string p2, "AbstractBackupController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_c8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_c8
    :goto_c8
    monitor-exit v0

    return-void

    :goto_ca
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ae .. :try_end_cb} :catchall_71

    throw p0

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_27  #00000000
    .end packed-switch
.end method
