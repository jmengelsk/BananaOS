.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .registers 11

    iget p0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_ec

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "bg-dexopt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-eqz p0, :cond_6a

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v7}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_4a

    const/16 v8, 0x14

    if-eq v7, v8, :cond_47

    if-eq v7, v1, :cond_44

    const/16 v8, 0x28

    if-eq v7, v8, :cond_41

    goto :goto_22

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_4d
    const-string/jumbo p0, "bg-dexopt dexopted: "

    const-string v7, ", skipped: "

    const-string v8, ", failed: "

    invoke-static {v3, v4, p0, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cancelled: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_6a
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "install"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result p0

    if-ne p0, v1, :cond_a2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[INSTALL] Dexopt for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_a2
    return-void

    :pswitch_a3  #0x0
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result p0

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_ea

    const-string/jumbo p0, "PackageManager"

    const-string p1, "Call saveDexOptLog"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "rm /data/log/dexoptfail_log"

    :try_start_b6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bd} :catch_be

    goto :goto_c2

    :catch_be
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_c2
    const-string/jumbo p1, "logcat -v raw -b main,system -t 3000 -f /data/log/dexoptfail_log"

    const/4 v0, 0x0

    :try_start_c6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d1} :catch_d7
    .catch Ljava/lang/InterruptedException; {:try_start_c6 .. :try_end_d1} :catch_d7
    .catchall {:try_start_c6 .. :try_end_d1} :catchall_d5

    :goto_d1
    :try_start_d1
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_de

    goto :goto_de

    :catchall_d5
    move-exception p0

    goto :goto_e4

    :catch_d7
    move-exception p1

    :try_start_d8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_d5

    if-eqz v0, :cond_de

    goto :goto_d1

    :catch_de
    :cond_de
    :goto_de
    const-string p1, "End saveDexOptLog"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    :goto_e4
    if-eqz v0, :cond_e9

    :try_start_e6
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_e9

    :catch_e9
    :cond_e9
    throw p0

    :cond_ea
    :goto_ea
    return-void

    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_a3  #00000000
    .end packed-switch
.end method
