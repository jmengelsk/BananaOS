.class public final synthetic Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/remoteappmode/AnrCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/remoteappmode/AnrCollector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/remoteappmode/AnrCollector;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 9

    iget-object p0, p0, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/remoteappmode/AnrCollector;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AnrCollector"

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    return v2

    :cond_11
    const-wide/16 v3, 0x0

    :try_start_13
    iget-object v1, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/server/remoteappmode/AnrCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "remote_app_mode_prefs"

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    goto :goto_25

    :catch_23
    move-exception p0

    goto :goto_2f

    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ltw_get_anr_time"

    invoke-interface {p0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_23

    goto :goto_36

    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isAnrFileModifiedLater - "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lastModified : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastTimestamp : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    cmp-long p0, p0, v3

    if-lez p0, :cond_6a

    const/4 v2, 0x1

    :cond_6a
    return v2
.end method
