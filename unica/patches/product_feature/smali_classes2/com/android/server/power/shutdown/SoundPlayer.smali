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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    iput-object p1, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isPlaying()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->running:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final prepare()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    const-string/jumbo v3, "g_shutdown_mute"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_1d

    :cond_1b
    const/16 v0, -0x270f

    :goto_1d
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

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string v3, "!@[getShutdownSoundPath] knoxSoundPath"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    goto/16 :goto_d0

    :cond_4f
    const-string/jumbo v3, "persist.sys.omc_respath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8e

    new-instance v7, Ljava/io/File;

    const-string v8, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    const-string v7, "!@[getShutdownSoundPath] PATH_SHUTDOWNSOUND_SKU_OGG"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d0

    :cond_73
    new-instance v7, Ljava/io/File;

    const-string v8, "/media/audio/ui/PowerOff.wav"

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8e

    const-string v7, "!@[getShutdownSoundPath] PATH_SHUTDOWNSOUND_SKU_WAV"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d0

    :cond_8e
    sget-object v3, Lcom/android/server/power/shutdown/ResourceManager;->chameleonCode:Ljava/lang/String;

    if-eqz v3, :cond_b3

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

    if-eqz v7, :cond_b3

    const-string v7, "!@[getShutdownSoundPath] chameleonPath"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_d0

    :cond_b3
    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c1

    const-string v7, "!@[getShutdownSoundPath] PowerOff.wav"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    :cond_c1
    const-string v3, "//system/media/audio/ui/PowerOff.ogg"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cf

    const-string v7, "!@[getShutdownSoundPath] PowerOff.ogg"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    :cond_cf
    move-object v3, v5

    :goto_d0
    iget-boolean v6, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    const/4 v7, 0x0

    if-nez v6, :cond_144

    if-eqz v3, :cond_144

    if-eqz v0, :cond_144

    const-string v6, "AUTO_INSTALL"

    const-string v8, "Exception"

    const-string v9, "File close error"

    new-instance v10, Ljava/io/File;

    const-string v11, "/efs/sec_efs/auto_reboot/autoinstall.status"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_13f

    :try_start_ec
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v10, Ljava/io/InputStreamReader;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_ec .. :try_end_fd} :catch_11a
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_fd} :catch_117
    .catchall {:try_start_ec .. :try_end_fd} :catchall_115

    :try_start_fd
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_105
    .catch Ljava/io/FileNotFoundException; {:try_start_fd .. :try_end_105} :catch_113
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_105} :catch_111
    .catchall {:try_start_fd .. :try_end_105} :catchall_10e

    :try_start_105
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_140

    :catch_109
    move-exception v8

    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_140

    :catchall_10e
    move-exception p0

    move-object v5, v11

    goto :goto_134

    :catch_111
    move-exception v6

    goto :goto_11d

    :catch_113
    move-exception v6

    goto :goto_12b

    :catchall_115
    move-exception p0

    goto :goto_134

    :catch_117
    move-exception v6

    move-object v11, v5

    goto :goto_11d

    :catch_11a
    move-exception v6

    move-object v11, v5

    goto :goto_12b

    :goto_11d
    :try_start_11d
    invoke-static {v4, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_10e

    if-eqz v11, :cond_13f

    :try_start_122
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_126

    goto :goto_13f

    :catch_126
    move-exception v6

    invoke-static {v4, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13f

    :goto_12b
    :try_start_12b
    invoke-static {v4, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12e
    .catchall {:try_start_12b .. :try_end_12e} :catchall_10e

    if-eqz v11, :cond_13f

    :try_start_130
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_126

    goto :goto_13f

    :goto_134
    if-eqz v5, :cond_13e

    :try_start_136
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_13e

    :catch_13a
    move-exception v0

    invoke-static {v4, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13e
    :goto_13e
    throw p0

    :cond_13f
    :goto_13f
    move v6, v7

    :goto_140
    if-nez v6, :cond_144

    move v6, v2

    goto :goto_145

    :cond_144
    move v6, v7

    :goto_145
    if-eqz v6, :cond_1ea

    const-string v0, "!@MediaPlayer exception. Sound will not start!"

    const-string/jumbo v6, "sound file.close"

    iget-object v8, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_159
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15e} :catch_1b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_159 .. :try_end_15e} :catch_1b7
    .catch Ljava/lang/SecurityException; {:try_start_159 .. :try_end_15e} :catch_1b5
    .catch Ljava/lang/IllegalStateException; {:try_start_159 .. :try_end_15e} :catch_1b3
    .catchall {:try_start_159 .. :try_end_15e} :catchall_1b1

    :try_start_15e
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
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_197} :catch_1ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15e .. :try_end_197} :catch_1ab
    .catch Ljava/lang/SecurityException; {:try_start_15e .. :try_end_197} :catch_1a8
    .catch Ljava/lang/IllegalStateException; {:try_start_15e .. :try_end_197} :catch_1a5
    .catchall {:try_start_15e .. :try_end_197} :catchall_1a2

    :try_start_197
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_19c

    goto/16 :goto_1fb

    :catch_19c
    move-exception p0

    invoke-static {v4, v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1fb

    :catchall_1a2
    move-exception p0

    move-object v5, v3

    goto :goto_1df

    :catch_1a5
    move-exception p0

    move-object v5, v3

    goto :goto_1bb

    :catch_1a8
    move-exception p0

    move-object v5, v3

    goto :goto_1c4

    :catch_1ab
    move-exception p0

    move-object v5, v3

    goto :goto_1cd

    :catch_1ae
    move-exception p0

    move-object v5, v3

    goto :goto_1d6

    :catchall_1b1
    move-exception p0

    goto :goto_1df

    :catch_1b3
    move-exception p0

    goto :goto_1bb

    :catch_1b5
    move-exception p0

    goto :goto_1c4

    :catch_1b7
    move-exception p0

    goto :goto_1cd

    :catch_1b9
    move-exception p0

    goto :goto_1d6

    :goto_1bb
    :try_start_1bb
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1be
    .catchall {:try_start_1bb .. :try_end_1be} :catchall_1b1

    if-eqz v5, :cond_1fb

    :try_start_1c0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1c3
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1c3} :catch_19c

    goto :goto_1fb

    :goto_1c4
    :try_start_1c4
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c7
    .catchall {:try_start_1c4 .. :try_end_1c7} :catchall_1b1

    if-eqz v5, :cond_1fb

    :try_start_1c9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_19c

    goto :goto_1fb

    :goto_1cd
    :try_start_1cd
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d0
    .catchall {:try_start_1cd .. :try_end_1d0} :catchall_1b1

    if-eqz v5, :cond_1fb

    :try_start_1d2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_19c

    goto :goto_1fb

    :goto_1d6
    :try_start_1d6
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d9
    .catchall {:try_start_1d6 .. :try_end_1d9} :catchall_1b1

    if-eqz v5, :cond_1fb

    :try_start_1db
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1de} :catch_19c

    goto :goto_1fb

    :goto_1df
    if-eqz v5, :cond_1e9

    :try_start_1e1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e4} :catch_1e5

    goto :goto_1e9

    :catch_1e5
    move-exception v0

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e9
    :goto_1e9
    throw p0

    :cond_1ea
    if-nez v0, :cond_1f3

    const-string/jumbo p0, "g_shutdown_suspend=suspend"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1fb

    :cond_1f3
    new-instance p0, Lcom/android/server/power/shutdown/SoundPlayer$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1fb
    :goto_1fb
    return-void
.end method

.method public final start()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_7
    return-void
.end method
