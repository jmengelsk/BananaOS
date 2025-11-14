.class public final Lcom/samsung/android/server/audio/OmcRingtoneManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;


# instance fields
.field public final mExcludeNotifications:Ljava/util/List;

.field public final mExcludeRingtones:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    const-wide/16 v0, 0x100

    const-string/jumbo v2, "OmcRingtoneManager_Init"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_19
    const-string/jumbo v0, "persist.sys.omc_respath"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_32

    :cond_2e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_32
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method


# virtual methods
.method public final getExcludedRingtonesFromCsc(ILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    const-string v1, "/media/audio/ringtones/exclude_ringtones"

    invoke-static {p2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_32

    :cond_1b
    const-string v1, "/media/audio/notifications/exclude_notifications"

    invoke-static {p2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_32
    :goto_32
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    const-string v2, "AS.OmcRingtoneManager"

    if-eqz p2, :cond_78

    :try_start_3f
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_49} :catch_67

    :goto_49
    :try_start_49
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    if-ne p1, v0, :cond_5b

    iget-object v3, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :catchall_59
    move-exception p0

    goto :goto_69

    :cond_5b
    iget-object v3, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_59

    goto :goto_49

    :cond_63
    :try_start_63
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    return-void

    :catch_67
    move-exception p0

    goto :goto_72

    :goto_69
    :try_start_69
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception p1

    :try_start_6e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_71
    throw p0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_67

    :goto_72
    const-string p1, "File exception"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_78
    const-string/jumbo p0, "There is no sounds(type:"

    const-string p2, ") list to remove"

    invoke-static {p1, p0, p2, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
