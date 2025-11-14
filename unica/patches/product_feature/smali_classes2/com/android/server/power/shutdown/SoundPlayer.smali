.class public final Lcom/android/server/power/shutdown/SoundPlayer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/shutdown/PlayerInterface;


# instance fields
.field public final context:Landroid/content/Context;

.field public silentShutdown:Z

.field public soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    iput-object p1, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->running:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final prepare()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v3, "g_shutdown_mute"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, -0x270f

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "!@systemVol:%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Shutdown-SoundPlayer"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Shutdown-ResourceManager"

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "!@[getShutdownSoundPath] knoxSoundPath"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v3, "persist.sys.omc_respath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v7, Ljava/io/File;

    const-string v8, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "!@[getShutdownSoundPath] PATH_SHUTDOWNSOUND_SKU_OGG"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/io/File;

    const-string v8, "/media/audio/ui/PowerOff.wav"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "!@[getShutdownSoundPath] PATH_SHUTDOWNSOUND_SKU_WAV"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/server/power/shutdown/ResourceManager;->chameleonCode:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v7, "/system/media/audio/ui/"

    const-string v8, "/PowerOff.ogg"

    invoke-static {v7, v3, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "!@[getShutdownSoundPath] chameleonPath"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "!@[getShutdownSoundPath] PowerOff.wav"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v3, "//system/media/audio/ui/PowerOff.ogg"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "!@[getShutdownSoundPath] PowerOff.ogg"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move-object v3, v5

    :goto_1
    iget-boolean v6, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    const/4 v7, 0x0

    if-nez v6, :cond_9

    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    const-string v6, "AUTO_INSTALL"

    const-string v8, "Exception"

    const-string v9, "File close error"

    new-instance v10, Ljava/io/File;

    const-string v11, "/efs/sec_efs/auto_reboot/autoinstall.status"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_8

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v10, Ljava/io/InputStreamReader;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v8

    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object v5, v11

    goto :goto_4

    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception v6

    move-object v11, v5

    goto :goto_2

    :catch_4
    move-exception v6

    move-object v11, v5

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-static {v4, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_8

    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception v6

    invoke-static {v4, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_3
    :try_start_5
    invoke-static {v4, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_8

    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :goto_4
    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-static {v4, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    throw p0

    :cond_8
    :goto_6
    move v6, v7

    :goto_7
    if-nez v6, :cond_9

    move v6, v2

    goto :goto_8

    :cond_9
    move v6, v7

    :goto_8
    if-eqz v6, :cond_b

    const-string v0, "!@MediaPlayer exception. Sound will not start!"

    const-string/jumbo v6, "sound file.close"

    iget-object v8, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    new-instance v8, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v8}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v8, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const-string/jumbo v8, "stv_boot_sound"

    invoke-virtual {v2, v8}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v1, v8, v7}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v1

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v5, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v5, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v1, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;

    invoke-direct {v1, v5}, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Lcom/android/server/power/shutdown/SoundPlayer;->soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_f

    :catch_7
    move-exception p0

    invoke-static {v4, v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    :catchall_2
    move-exception p0

    move-object v5, v3

    goto :goto_d

    :catch_8
    move-exception p0

    move-object v5, v3

    goto :goto_9

    :catch_9
    move-exception p0

    move-object v5, v3

    goto :goto_a

    :catch_a
    move-exception p0

    move-object v5, v3

    goto :goto_b

    :catch_b
    move-exception p0

    move-object v5, v3

    goto :goto_c

    :catchall_3
    move-exception p0

    goto :goto_d

    :catch_c
    move-exception p0

    goto :goto_9

    :catch_d
    move-exception p0

    goto :goto_a

    :catch_e
    move-exception p0

    goto :goto_b

    :catch_f
    move-exception p0

    goto :goto_c

    :goto_9
    :try_start_b
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v5, :cond_d

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_f

    :goto_a
    :try_start_d
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v5, :cond_d

    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_f

    :goto_b
    :try_start_f
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v5, :cond_d

    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_f

    :goto_c
    :try_start_11
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v5, :cond_d

    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_f

    :goto_d
    if-eqz v5, :cond_a

    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    goto :goto_e

    :catch_10
    move-exception v0

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_e
    throw p0

    :cond_b
    if-nez v0, :cond_c

    const-string/jumbo p0, "g_shutdown_suspend=suspend"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_f

    :cond_c
    new-instance p0, Lcom/android/server/power/shutdown/SoundPlayer$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_d
    :goto_f
    return-void
.end method

.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
