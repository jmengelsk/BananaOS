.class public final Lcom/android/server/media/MediaSessionService$MessageHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mIntegerCache:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_303

    const/4 v3, 0x2

    if-eq v1, v3, :cond_29e

    const/4 v4, 0x3

    if-eq v1, v4, :cond_e

    goto/16 :goto_390

    :cond_e
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget v5, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    if-eqz v5, :cond_390

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mMediaSessionDataPlatform:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    if-eqz p0, :cond_390

    if-eqz v1, :cond_390

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget v7, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    iget-object v6, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget v7, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    if-nez v6, :cond_46

    :cond_44
    :goto_44
    :pswitch_44  #0x3, 0x4, 0x5, 0x6, 0x8, 0x9, 0xa, 0xb
    move v3, v0

    goto :goto_82

    :cond_46
    if-nez p1, :cond_67

    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    goto :goto_50

    :cond_4f
    move v3, v2

    :goto_50
    iget v5, v6, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playbackState:I

    if-nez v5, :cond_57

    if-eqz v3, :cond_5d

    goto :goto_44

    :cond_57
    packed-switch v5, :pswitch_data_394

    :pswitch_5a  #0x7
    packed-switch v3, :pswitch_data_3aa

    :cond_5d
    :pswitch_5d  #0x7
    move v3, v2

    goto :goto_82

    :pswitch_5f  #0x3, 0x4, 0x5, 0x6, 0x8, 0x9, 0xa, 0xb
    packed-switch v3, :pswitch_data_3c0

    :pswitch_62  #0x7
    move v3, v2

    goto :goto_65

    :pswitch_64  #0x3, 0x4, 0x5, 0x6, 0x8, 0x9, 0xa, 0xb
    move v3, v0

    :goto_65
    xor-int/2addr v3, v0

    goto :goto_82

    :cond_67
    if-ne p1, v0, :cond_74

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->isMetadataChanged(Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;Landroid/media/MediaMetadata;)I

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_44

    :cond_74
    if-eq p1, v3, :cond_44

    if-ne p1, v4, :cond_5d

    goto :goto_44

    :cond_79
    if-eqz v5, :cond_5d

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_44

    :goto_82
    if-nez v3, :cond_86

    goto/16 :goto_390

    :cond_86
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    const-string/jumbo v5, "MediaSessionDataPlatform"

    if-eq p1, v4, :cond_261

    if-eqz v3, :cond_261

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result p1

    if-eqz p1, :cond_261

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    if-eqz p1, :cond_25a

    const-string/jumbo v3, "android.media.metadata.TITLE"

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ac

    goto/16 :goto_25a

    :cond_ac
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    if-nez p1, :cond_b4

    goto/16 :goto_390

    :cond_b4
    new-instance v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    iget v6, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->getMediaType(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    if-ne v6, v0, :cond_cb

    move v6, v0

    goto :goto_cc

    :cond_cb
    move v6, v2

    :goto_cc
    if-eqz v6, :cond_d2

    const-string/jumbo v6, "local"

    goto :goto_d5

    :cond_d2
    const-string/jumbo v6, "remote"

    :goto_d5
    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->castType:Ljava/lang/String;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    iget-object v6, v1, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->packageName:Ljava/lang/String;

    iget-wide v8, v1, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    iput-wide v8, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    if-eqz v7, :cond_ef

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    :cond_ef
    iput v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playbackState:I

    const-wide/16 v6, 0x0

    cmp-long v2, v8, v6

    if-gtz v2, :cond_100

    const-string/jumbo v2, "android.media.metadata.DURATION"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    :cond_100
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->title:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artist:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtist:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->album:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtUri:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.ART_URI"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artUri:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.AUTHOR"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->author:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->btFolderType:J

    const-string/jumbo v2, "android.media.metadata.COMPILATION"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->compilation:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.COMPOSER"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->composer:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.DATE"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->date:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->discNumber:J

    const-string/jumbo v2, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayDescription:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayIconUri:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displaySubtitle:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayTitle:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.GENRE"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->genre:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaId:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaUri:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->numTracks:J

    const-string/jumbo v2, "android.media.metadata.RATING"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->trackNumber:J

    const-string/jumbo v2, "android.media.metadata.WRITER"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->writer:Ljava/lang/String;

    const-string/jumbo v2, "android.media.metadata.YEAR"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->year:J

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->endTime:J

    iget-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    sub-long/2addr v2, v6

    iput-wide v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playingTime:J

    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_230

    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->isMetadataChanged(Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;Landroid/media/MediaMetadata;)I

    move-result v2

    const-string/jumbo v3, "put record (changed) changedState:"

    invoke-static {v2, v3, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v2, v0, :cond_21c

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sendData(Lcom/android/server/media/MediaSessionRecord;)V

    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_21c
    if-eqz v2, :cond_390

    if-eqz p1, :cond_224

    iget-wide v2, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    iput-wide v2, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    :cond_224
    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_230
    const-string/jumbo p1, "put record (new)"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Audio"

    iget-object v0, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_390

    iget p1, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/media/MediaSessionDataPlatform;I)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_25a
    :goto_25a
    const-string/jumbo p0, "metadata title is empty"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_261
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_284

    const-string/jumbo p1, "remove record"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sendData(Lcom/android/server/media/MediaSessionRecord;)V

    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, v1, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_284
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "do nothing because "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " playback is not active"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29e
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2ab
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_2c2
    if-ltz v4, :cond_2fe

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_2ce
    .catchall {:try_start_2ab .. :try_end_2ce} :catchall_2de

    :try_start_2ce
    iget v5, v0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne v5, v6, :cond_2e2

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v0, v2}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V

    goto :goto_2fb

    :catchall_2de
    move-exception p0

    goto :goto_301

    :catch_2e0
    move-exception v0

    goto :goto_2ec

    :cond_2e2
    iget v5, v0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    if-ne v5, p1, :cond_2fb

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v0, v3}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V
    :try_end_2eb
    .catch Landroid/os/RemoteException; {:try_start_2ce .. :try_end_2eb} :catch_2e0
    .catchall {:try_start_2ce .. :try_end_2eb} :catchall_2de

    goto :goto_2fb

    :goto_2ec
    :try_start_2ec
    const-string/jumbo v5, "MediaSessionService"

    const-string v6, "Failed to notify Session2Token change. Removing listener."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2fb
    :goto_2fb
    add-int/lit8 v4, v4, -0x1

    goto :goto_2c2

    :cond_2fe
    monitor-exit v1

    goto/16 :goto_390

    :goto_301
    monitor-exit v1
    :try_end_302
    .catchall {:try_start_2ec .. :try_end_302} :catchall_2de

    throw p0

    :cond_303
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo v1, "pushSession1ChangedOnHandler failed. No user with id="

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_313
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    if-nez v4, :cond_32f

    const-string/jumbo p0, "MediaSessionService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_390

    :catchall_32d
    move-exception p0

    goto :goto_391

    :cond_32f
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_33e
    if-ge v2, v4, :cond_356

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaSessionService;->setMultiSoundFlag(Lcom/android/server/media/MediaSessionRecord;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    goto :goto_33e

    :cond_356
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_360
    if-ltz v1, :cond_38f

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eq v2, v4, :cond_378

    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I
    :try_end_376
    .catchall {:try_start_313 .. :try_end_376} :catchall_32d

    if-ne v2, p1, :cond_38c

    :cond_378
    :try_start_378
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v0, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_37d
    .catch Landroid/os/RemoteException; {:try_start_378 .. :try_end_37d} :catch_37e
    .catchall {:try_start_378 .. :try_end_37d} :catchall_32d

    goto :goto_38c

    :catch_37e
    move-exception v0

    :try_start_37f
    const-string/jumbo v2, "MediaSessionService"

    const-string v4, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_38c
    :goto_38c
    add-int/lit8 v1, v1, -0x1

    goto :goto_360

    :cond_38f
    monitor-exit v3

    :cond_390
    :goto_390
    return-void

    :goto_391
    monitor-exit v3
    :try_end_392
    .catchall {:try_start_37f .. :try_end_392} :catchall_32d

    throw p0

    nop

    :pswitch_data_394
    .packed-switch 0x3
        :pswitch_5f  #00000003
        :pswitch_5f  #00000004
        :pswitch_5f  #00000005
        :pswitch_5f  #00000006
        :pswitch_5a  #00000007
        :pswitch_5f  #00000008
        :pswitch_5f  #00000009
        :pswitch_5f  #0000000a
        :pswitch_5f  #0000000b
    .end packed-switch

    :pswitch_data_3aa
    .packed-switch 0x3
        :pswitch_44  #00000003
        :pswitch_44  #00000004
        :pswitch_44  #00000005
        :pswitch_44  #00000006
        :pswitch_5d  #00000007
        :pswitch_44  #00000008
        :pswitch_44  #00000009
        :pswitch_44  #0000000a
        :pswitch_44  #0000000b
    .end packed-switch

    :pswitch_data_3c0
    .packed-switch 0x3
        :pswitch_64  #00000003
        :pswitch_64  #00000004
        :pswitch_64  #00000005
        :pswitch_64  #00000006
        :pswitch_62  #00000007
        :pswitch_64  #00000008
        :pswitch_64  #00000009
        :pswitch_64  #0000000a
        :pswitch_64  #0000000b
    .end packed-switch
.end method

.method public final postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1f
    instance-of p1, p1, Lcom/android/server/media/MediaSessionRecord;

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x2

    :goto_26
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
