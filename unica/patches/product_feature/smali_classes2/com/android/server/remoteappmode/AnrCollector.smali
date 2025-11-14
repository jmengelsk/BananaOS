.class public final Lcom/android/server/remoteappmode/AnrCollector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 9

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "AnrCollector"

    const/4 v3, 0x0

    if-eqz v1, :cond_6c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_6c

    :cond_17
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/remoteappmode/AnrCollector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/remoteappmode/AnrCollector;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/io/File;

    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_42
    iget-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "remote_app_mode_prefs"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    goto :goto_55

    :catch_53
    move-exception p0

    goto :goto_65

    :cond_55
    :goto_55
    iget-object p0, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "ltw_get_anr_time"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_64} :catch_53

    goto :goto_6c

    :goto_65
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "gatLastAnr - lastAnrFile : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;

    invoke-direct {p0, p2, v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
