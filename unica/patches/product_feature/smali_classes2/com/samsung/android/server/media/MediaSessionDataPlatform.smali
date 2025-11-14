.class public final Lcom/samsung/android/server/media/MediaSessionDataPlatform;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static mCr:Landroid/content/ContentResolver;

.field public static sInstance:Lcom/samsung/android/server/media/MediaSessionDataPlatform;


# instance fields
.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mHandler:Landroid/os/Handler;

.field public final mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

.field public mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x32

    const-string/jumbo v2, "MediaSessionDataPlatform logger"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo p1, "content://com.samsung.android.moneta.datacollector.reception.external.data/media_history"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mUri:Landroid/net/Uri;

    const-string/jumbo p1, "MediaSessionDataPlatform"

    const-string/jumbo v0, "createMediaResourceHelper"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "IllegalStateException SemMediaResourceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isMetadataChanged(Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;Landroid/media/MediaMetadata;)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_b

    const-string/jumbo v2, "android.media.metadata.TITLE"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtist:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artist:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_7
    const-string/jumbo v0, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->album:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_9
    const-string/jumbo v0, "android.media.metadata.DURATION"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_b

    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-eqz p0, :cond_b

    const/4 p0, 0x4

    return p0

    :cond_a
    :goto_2
    if-eqz p1, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getMediaType(I)Ljava/lang/String;
    .locals 11

    const-string/jumbo v0, "MediaSessionDataPlatform"

    const-string/jumbo v1, "Video"

    const-string/jumbo v2, "getMediaType for uid: "

    iget-object v3, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mEventLogger:Lcom/android/server/utils/EventLogger;

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v6, v4}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :cond_0
    if-ge v8, v7, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v9}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isEncoder()Z

    move-result v10

    invoke-virtual {v9}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->getUidForPid(I)I

    move-result v9

    if-nez v10, :cond_0

    if-ne v9, p1, :cond_0

    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v3, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    :cond_1
    const-string/jumbo v1, "createMediaResourceHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {v4, v5}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "IllegalStateException SemMediaResourceHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    new-instance p0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v1, " Audio"

    invoke-static {p1, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const-string p0, "Audio"

    return-object p0
.end method

.method public final sendData(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    const/4 v0, 0x0

    const-string/jumbo v1, "MediaSessionDataPlatform"

    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mEventLogger:Lcom/android/server/utils/EventLogger;

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->endTime:J

    iget-wide v5, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playingTime:J

    const-wide/32 v5, 0xe86c

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    new-instance v0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/media/MediaSessionDataPlatform;Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Do not send data because playing time too short "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playingTime:J

    const-string/jumbo p1, "ms"

    invoke-static {v3, v4, v5, p1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v2, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void

    :cond_1
    new-instance p0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string p1, "Failed: insert data is null"

    invoke-direct {p0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v2, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method
