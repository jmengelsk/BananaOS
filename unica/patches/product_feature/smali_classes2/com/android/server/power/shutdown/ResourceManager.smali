.class public final Lcom/android/server/power/shutdown/ResourceManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final chameleonCode:Ljava/lang/String;

.field public static final knoxAnimPath:Ljava/lang/String;

.field public static final knoxSoundPath:Ljava/lang/String;

.field public static final knoxSubAnimPath:Ljava/lang/String;

.field public static final supportChameleon:Z


# instance fields
.field public final mainImages:Ljava/util/List;

.field public final mainLoopImage:Ljava/io/File;

.field public final player:Lcom/android/server/power/shutdown/AnimationPlayer;

.field public final subImages:Ljava/util/List;

.field public final subLoopImage:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_UseChameleon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/shutdown/ResourceManager;->supportChameleon:Z

    const-string/jumbo v1, "Shutdown-ResourceManager"

    const/4 v3, 0x0

    if-nez v0, :cond_15

    goto/16 :goto_7c

    :cond_15
    const-string v0, "/carrier/chameleon.xml"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_7c

    :cond_1e
    const-string/jumbo v0, "Operators.SubscriberCarrierId"

    invoke-static {v0}, Lcom/android/server/power/shutdown/ResourceManager;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    const-string/jumbo v0, "Operators.AndroidOperatorNetworkCode"

    invoke-static {v0}, Lcom/android/server/power/shutdown/ResourceManager;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "!@Power off sound CHAMELEON network code : "

    invoke-static {v3, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_37

    const-string v0, "310000"

    :cond_37
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_108

    :goto_3f
    move v2, v3

    goto :goto_60

    :sswitch_41
    const-string v2, "311870"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_3f

    :cond_4a
    const/4 v2, 0x2

    goto :goto_60

    :sswitch_4c
    const-string v2, "311490"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_3f

    :cond_55
    const/4 v2, 0x1

    goto :goto_60

    :sswitch_57
    const-string v4, "310120"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_3f

    :cond_60
    :goto_60
    packed-switch v2, :pswitch_data_116

    const-string/jumbo v0, "XAS"

    :goto_66
    move-object v3, v0

    goto :goto_73

    :pswitch_68  #0x2
    const-string v0, "BST"

    goto :goto_66

    :pswitch_6b  #0x1
    const-string/jumbo v0, "VMU"

    goto :goto_66

    :pswitch_6f  #0x0
    const-string/jumbo v0, "SPR"

    goto :goto_66

    :goto_73
    const-string v0, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    :goto_7c
    sput-object v3, Lcom/android/server/power/shutdown/ResourceManager;->chameleonCode:Ljava/lang/String;

    const-string v0, "//data/system/b2b/ShutdownFileInfo.txt"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_107

    :try_start_86
    new-instance v2, Ljava/io/FileReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_8d} :catch_b2
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8d} :catch_b0

    :try_start_8d
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_b4

    :try_start_92
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a9

    sput-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSubAnimPath:Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_92 .. :try_end_a6} :catchall_a7

    goto :goto_a9

    :catchall_a7
    move-exception v3

    goto :goto_b6

    :cond_a9
    :goto_a9
    :try_start_a9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b4

    :try_start_ac
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_af
    .catch Ljava/io/FileNotFoundException; {:try_start_ac .. :try_end_af} :catch_b2
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_d5

    :catch_b0
    move-exception v0

    goto :goto_c8

    :catch_b2
    move-exception v0

    goto :goto_cf

    :catchall_b4
    move-exception v0

    goto :goto_bf

    :goto_b6
    :try_start_b6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_be

    :catchall_ba
    move-exception v0

    :try_start_bb
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_be
    throw v3
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_b4

    :goto_bf
    :try_start_bf
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    goto :goto_c7

    :catchall_c3
    move-exception v2

    :try_start_c4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c7
    throw v0
    :try_end_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_c4 .. :try_end_c8} :catch_b2
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c8} :catch_b0

    :goto_c8
    const-string/jumbo v2, "getKnoxShutdownPath(): An exception occurred while reading the file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d5

    :goto_cf
    const-string/jumbo v2, "getKnoxShutdownPath(): File not found"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Knox sound : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Knox img : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Knox subImg : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/shutdown/ResourceManager;->knoxSubAnimPath:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_107
    return-void

    :sswitch_data_108
    .sparse-switch
        0x59d0375d -> :sswitch_57
        0x59d0b7d8 -> :sswitch_4c
        0x59d0c69e -> :sswitch_41
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_6f  #00000000
        :pswitch_6b  #00000001
        :pswitch_68  #00000002
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/server/power/shutdown/AnimationPlayer;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/power/shutdown/ResourceManager;->player:Lcom/android/server/power/shutdown/AnimationPlayer;

    const-string/jumbo v2, "Shutdown-ResourceManager"

    iget-object v3, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->FILE_EXTENSION:Ljava/lang/String;

    const-string v4, "/media/video/shutdown/"

    const-string/jumbo v5, "persist.sys.omc_respath"

    const-string v6, "//system/media/"

    sget-object v7, Lcom/android/server/power/shutdown/ResourceManager;->chameleonCode:Ljava/lang/String;

    if-eqz v7, :cond_40

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v9, "_shutdown"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_40

    goto/16 :goto_1b9

    :cond_40
    sget-object v8, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    if-eqz v8, :cond_7b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7b

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7b

    sget-object v8, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7b

    sget-object p1, Lcom/android/server/power/shutdown/ResourceManager;->knoxSubAnimPath:Ljava/lang/String;

    if-eqz p1, :cond_1b9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b9

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b9

    sget-object p1, Lcom/android/server/power/shutdown/ResourceManager;->knoxSubAnimPath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    goto/16 :goto_1b9

    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_81
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/sys/class/lcd/panel/window_type"

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8f} :catch_b4
    .catchall {:try_start_81 .. :try_end_8f} :catchall_b1

    :goto_8f
    :try_start_8f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9d} :catch_a2
    .catchall {:try_start_8f .. :try_end_9d} :catchall_9e

    goto :goto_8f

    :catchall_9e
    move-exception p0

    move-object v1, v8

    goto/16 :goto_213

    :catch_a2
    move-exception v9

    goto :goto_b6

    :cond_a4
    :try_start_a4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_c2

    :catch_a8
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    :catchall_b1
    move-exception p0

    goto/16 :goto_213

    :catch_b4
    move-exception v9

    move-object v8, v1

    :goto_b6
    :try_start_b6
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_9e

    if-eqz v8, :cond_c2

    :try_start_bf
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_a8

    :cond_c2
    :goto_c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_e7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_e7

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e7

    const/16 v8, 0x10

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v8, v0, 0xf

    :cond_e7
    const-string/jumbo v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "dream"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f8

    goto :goto_117

    :cond_f8
    packed-switch v8, :pswitch_data_222

    goto :goto_117

    :pswitch_fc  #0x7
    const-string/jumbo v0, "ro.color.pinkgold"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_117

    :pswitch_104  #0x6
    const-string/jumbo v0, "ro.color.blue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_117

    :pswitch_10c  #0x5
    const-string/jumbo v0, "ro.color.green"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_117

    :pswitch_114  #0x2, 0x3, 0x4, 0x8
    const-string/jumbo v1, "WH"

    :goto_117
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_MAIN_ANI_FILES:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_SUB_ANI_FILES:[Ljava/lang/String;

    const/4 v9, 0x1

    if-eqz v0, :cond_180

    sget-boolean v10, Lcom/android/server/power/shutdown/ResourceManager;->supportChameleon:Z

    if-eqz v10, :cond_128

    if-eqz v7, :cond_180

    :cond_128
    const-string/jumbo v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_142

    if-eqz v7, :cond_142

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_142

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "!@Power off sound CHAMELEON - update animation path to : "

    invoke-static {v7, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_142
    if-eqz v1, :cond_16e

    const-string/jumbo v2, "shutdown_"

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/io/File;

    invoke-static {v0, v4, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_16e

    aput-object v2, v8, v9

    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v8}, Lcom/android/server/power/shutdown/ResourceManager;->addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16e

    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/shutdown/ResourceManager;->addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1b9

    :cond_16e
    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v8}, Lcom/android/server/power/shutdown/ResourceManager;->addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_180

    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/shutdown/ResourceManager;->addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1b9

    :cond_180
    if-eqz v1, :cond_19a

    const-string v0, "//system/media/shutdown_"

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-virtual {p0, v6, v8}, Lcom/android/server/power/shutdown/ResourceManager;->addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    invoke-virtual {p0, v6, p1}, Lcom/android/server/power/shutdown/ResourceManager;->addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1b9

    :cond_19a
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v8, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-virtual {p0, v6, v8}, Lcom/android/server/power/shutdown/ResourceManager;->addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    invoke-virtual {p0, v6, p1}, Lcom/android/server/power/shutdown/ResourceManager;->addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1b9
    :goto_1b9
    sget-object p1, Lcom/android/server/power/shutdown/ResourceManager;->knoxAnimPath:Ljava/lang/String;

    if-nez p1, :cond_212

    iget-object p1, p0, Lcom/android/server/power/shutdown/ResourceManager;->player:Lcom/android/server/power/shutdown/AnimationPlayer;

    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_MAIN_LOOP_FILE:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_SUB_LOOP_FILE:Ljava/lang/String;

    if-eqz v1, :cond_1f0

    invoke-static {v1, v4, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1da

    iput-object v3, p0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    :cond_1da
    if-nez v2, :cond_212

    invoke-static {v1, v4, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1ed

    iput-object v2, p0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    :cond_1ed
    if-eqz v1, :cond_1f0

    goto :goto_212

    :cond_1f0
    invoke-static {v6, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_201

    iput-object v1, p0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    :cond_201
    invoke-static {v6, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_212

    iput-object v0, p0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    :cond_212
    :goto_212
    return-void

    :goto_213
    if-eqz v1, :cond_221

    :try_start_215
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_218} :catch_219

    goto :goto_221

    :catch_219
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_221
    :goto_221
    throw p0

    :pswitch_data_222
    .packed-switch 0x2
        :pswitch_114  #00000002
        :pswitch_114  #00000003
        :pswitch_114  #00000004
        :pswitch_10c  #00000005
        :pswitch_104  #00000006
        :pswitch_fc  #00000007
        :pswitch_114  #00000008
    .end packed-switch
.end method

.method public static addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static search(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "/carrier/chameleon.xml"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_81

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_81

    :cond_11
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_1a
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_2d

    goto :goto_37

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "Shutdown-ResourceManager"

    const-string v3, "Exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    move-object v0, v2

    :goto_37
    if-nez v0, :cond_3a

    goto :goto_81

    :cond_3a
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_75

    :cond_47
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_75

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_5c
    if-ge v4, v3, :cond_71

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    move-object v0, v5

    goto :goto_72

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_71
    move-object v0, v2

    :goto_72
    if-nez v0, :cond_47

    goto :goto_81

    :cond_75
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_7c

    goto :goto_81

    :cond_7c
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_81
    :goto_81
    return-object v2
.end method


# virtual methods
.method public final addMainAniIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_15

    aget-object v3, p2, v1

    invoke-static {p1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    return v2
.end method

.method public final addSubAniIfExists(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p2, v1

    invoke-static {p1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/android/server/power/shutdown/ResourceManager;->addToPlaylistIfExists(Ljava/lang/String;Ljava/util/List;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method
