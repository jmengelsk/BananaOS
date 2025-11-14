.class public final Lcom/android/server/usb/UsbHostRestrictor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# static fields
.field public static bRestrictHostAPI:Z = false

.field public static isEMTokenEnabled:Z = false

.field public static isLckScrBlock:Z = false

.field public static isMDMBlock:Z = false

.field public static isSIMBlock:Z = false

.field public static final mConHistFile:Ljava/io/File;

.field public static mCurrentScrLckNodeValue:Ljava/lang/String; = "0"

.field public static mCurrentSysNodeValue:Ljava/lang/String; = "OFF"

.field public static mIsDeviceConnected:Z = false

.field public static mIsHostConnected:Z = false

.field public static mLockStatus:I = 0x0

.field public static mRetryCntGetIsDeviceLock:I = 0x0

.field public static mSecureKeyguardShowing:Z = true

.field public static mSettingBlockUsbLock:I = 0x1

.field public static mStrAllowList:Ljava/lang/String; = ""

.field public static final mUsbRestrictLock:Ljava/lang/Object;

.field public static misRunScreenLockTimer:Z

.field public static startTime:J


# instance fields
.field public final emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public final mHandler:Lcom/android/server/usb/UsbHostRestrictor$8;

.field public final mHostInterfaceObserver:Lcom/android/server/usb/UsbHostRestrictor$5;

.field public final mSubscriptionIntentReceiver:Lcom/android/server/usb/UsbHostRestrictor$2;

.field public final mUEventDeviceObserver:Lcom/android/server/usb/UsbHostRestrictor$5;

.field public final mUEventHostObserver:Lcom/android/server/usb/UsbHostRestrictor$5;

.field public final mUsbBlockReceiver:Lcom/android/server/usb/UsbHostRestrictor$2;

.field public final mUsbHostRestrictionReceiver:Lcom/android/server/usb/UsbHostRestrictor$2;


# direct methods
.method public static -$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.SettingsReceiverActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "cmcc_block_usb"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1d
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to start activity to show the USB BLOCK Dialog : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "UsbHostRestrictor"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static -$$Nest$mupdateVidPidList(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "-?[0-9a-fA-F]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "UsbHostRestrictor"

    if-eqz v3, :cond_3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%04x"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    :cond_3d
    const-string/jumbo v2, "updateVidPidList wrong vid pid"

    invoke-static {v4, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    :try_start_43
    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mConHistFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_124

    const-string v6, "/efs/usb_con_hist"

    const-string v7, ":"

    const-string v8, "Caught an exception writing /efs/usb_con_hist: "

    const-string/jumbo v9, "VPID:"

    if-eqz v3, :cond_206

    :try_start_54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5e} :catch_124

    :try_start_5e
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_68} :catch_1e6

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6a

    invoke-virtual {v14, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    :goto_7e
    array-length v5, v14

    if-ge v15, v5, :cond_dd

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_86
    if-ge v11, v5, :cond_c3

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v11, v11, 0x1

    move-object/from16 p2, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/util/Pair;

    move/from16 v16, v5

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_6a .. :try_end_9a} :catchall_bf

    move-object/from16 v17, v10

    :try_start_9c
    aget-object v10, v14, v15

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v5, v15, 0x1

    aget-object v5, v14, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    const/4 v13, 0x1

    goto :goto_c7

    :catchall_b4
    move-exception v0

    :goto_b5
    move-object v1, v0

    goto/16 :goto_1e8

    :cond_b8
    move-object/from16 v3, p2

    move/from16 v5, v16

    move-object/from16 v10, v17

    goto :goto_86

    :catchall_bf
    move-exception v0

    move-object/from16 v17, v10

    goto :goto_b5

    :cond_c3
    move-object/from16 p2, v3

    move-object/from16 v17, v10

    :goto_c7
    if-nez v13, :cond_d6

    aget-object v3, v14, v15

    add-int/lit8 v5, v15, 0x1

    aget-object v5, v14, v5

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d6
    add-int/lit8 v15, v15, 0x2

    move-object/from16 v3, p2

    move-object/from16 v10, v17

    goto :goto_7e

    :cond_dd
    move-object/from16 p2, v3

    move-object/from16 v17, v10

    array-length v3, v14

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_ed

    const-string/jumbo v3, "Lock screen block allow list full"

    invoke-static {v4, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_9c .. :try_end_ec} :catchall_b4

    const/4 v12, 0x1

    :cond_ed
    move-object/from16 v3, p2

    move-object/from16 v10, v17

    goto/16 :goto_6a

    :cond_f3
    move-object/from16 p2, v3

    move-object/from16 v17, v10

    :try_start_f7
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_1e6

    :try_start_fa
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_ff
    if-ge v5, v3, :cond_127

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Landroid/util/Pair;

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ff

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ff

    const-string/jumbo v0, "Skip update vid:pid - duplicate"

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_124
    move-exception v0

    goto/16 :goto_259

    :cond_127
    if-eqz v12, :cond_19e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14f

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14f

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    :goto_13f
    array-length v10, v3

    if-ge v5, v10, :cond_14f

    aget-object v10, v3, v5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3a

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_14c} :catch_124

    add-int/lit8 v5, v5, 0x1

    goto :goto_13f

    :cond_14f
    :try_start_14f
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const/4 v10, 0x0

    invoke-direct {v5, v6, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_15a} :catch_17d

    :try_start_15a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_15a .. :try_end_179} :catchall_17f

    :try_start_179
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_17d

    return-void

    :catch_17d
    move-exception v0

    goto :goto_18a

    :catchall_17f
    move-exception v0

    move-object v1, v0

    :try_start_181
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_185

    goto :goto_189

    :catchall_185
    move-exception v0

    :try_start_186
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_189
    throw v1
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_18a} :catch_17d

    :goto_18a
    :try_start_18a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_19c} :catch_124

    goto/16 :goto_25e

    :cond_19e
    :try_start_19e
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v3, v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a9} :catch_1c5

    :try_start_1a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1c1
    .catchall {:try_start_1a9 .. :try_end_1c1} :catchall_1c7

    :try_start_1c1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c4} :catch_1c5

    return-void

    :catch_1c5
    move-exception v0

    goto :goto_1d2

    :catchall_1c7
    move-exception v0

    move-object v1, v0

    :try_start_1c9
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1cc
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1cd

    goto :goto_1d1

    :catchall_1cd
    move-exception v0

    :try_start_1ce
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d1
    throw v1
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d2} :catch_1c5

    :goto_1d2
    :try_start_1d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1e4} :catch_124

    goto/16 :goto_25e

    :catch_1e6
    move-exception v0

    goto :goto_1f1

    :goto_1e8
    :try_start_1e8
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_1eb
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_1ec

    goto :goto_1f0

    :catchall_1ec
    move-exception v0

    :try_start_1ed
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f0
    throw v1
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1f1} :catch_1e6

    :goto_1f1
    :try_start_1f1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught an exception reading /efs/usb_con_hist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25e

    :cond_206
    const-string/jumbo v3, "Make new file"

    invoke-static {v4, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_218

    const-string v0, "File already exists or failed to create new file"

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_217
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_217} :catch_124

    return-void

    :cond_218
    :try_start_218
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v3, v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_223} :catch_23c

    :try_start_223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_238
    .catchall {:try_start_223 .. :try_end_238} :catchall_23e

    :try_start_238
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_23b
    .catch Ljava/io/IOException; {:try_start_238 .. :try_end_23b} :catch_23c

    return-void

    :catch_23c
    move-exception v0

    goto :goto_249

    :catchall_23e
    move-exception v0

    move-object v1, v0

    :try_start_240
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_243
    .catchall {:try_start_240 .. :try_end_243} :catchall_244

    goto :goto_248

    :catchall_244
    move-exception v0

    :try_start_245
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_248
    throw v1
    :try_end_249
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_249} :catch_23c

    :goto_249
    :try_start_249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_258
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_258} :catch_124

    goto :goto_25e

    :goto_259
    const-string v1, "Failed to write vid:pid history"

    invoke-static {v4, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/usb_con_hist"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mConHistFile:Ljava/io/File;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbBlockReceiver:Lcom/android/server/usb/UsbHostRestrictor$2;

    new-instance v1, Lcom/android/server/usb/UsbHostRestrictor$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbHostRestrictionReceiver:Lcom/android/server/usb/UsbHostRestrictor$2;

    new-instance v2, Lcom/android/server/usb/UsbHostRestrictor$2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Lcom/android/server/usb/UsbHostRestrictor$2;

    new-instance v3, Lcom/android/server/usb/UsbHostRestrictor$5;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbHostRestrictor$5;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    iput-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Lcom/android/server/usb/UsbHostRestrictor$5;

    new-instance v4, Lcom/android/server/usb/UsbHostRestrictor$5;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/server/usb/UsbHostRestrictor$5;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    iput-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventDeviceObserver:Lcom/android/server/usb/UsbHostRestrictor$5;

    new-instance v5, Lcom/android/server/usb/UsbHostRestrictor$5;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lcom/android/server/usb/UsbHostRestrictor$5;-><init>(Lcom/android/server/usb/UsbHostRestrictor;I)V

    iput-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHostInterfaceObserver:Lcom/android/server/usb/UsbHostRestrictor$5;

    new-instance v6, Lcom/android/server/usb/UsbHostRestrictor$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/usb/UsbHostRestrictor$8;-><init>(Lcom/android/server/usb/UsbHostRestrictor;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$8;

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string p2, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v3, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-direct {p2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p2, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p2, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.USB_RESTRICTION_TIMER_COMPLETED"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const-string p2, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v4, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p2, "DEVTYPE=usb_interface"

    invoke-virtual {v5, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const/4 p2, 0x0

    sput-boolean p2, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "block_usb_lock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/server/usb/UsbHostRestrictor$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostRestrictor$1;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static checkUsbBlockingCondition(Ljava/lang/String;)Z
    .registers 8

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "UsbHostRestrictor"

    if-nez v1, :cond_12

    if-nez v0, :cond_1b

    :cond_12
    const-string/jumbo v0, "checkUsbBlockingCondition : salesCode is null"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "OXA"

    :cond_1b
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_90

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    const-string/jumbo v5, "ON_ALL_SCREEN"

    const-string/jumbo v6, "ON_HOST_MDM"

    if-nez v1, :cond_54

    const-string v1, "CBK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_54

    :cond_3a
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    goto :goto_4e

    :cond_47
    const-string/jumbo p0, "NOT DISABLE USB 3"

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4e
    :goto_4e
    const-string p0, "DISABLE USB for MDM block or ON_ALL_SCREEN"

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_54
    :goto_54
    const-string/jumbo v0, "ON_ALL_SIM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    const-string/jumbo v0, "ON_ALL_BOTH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_8a

    :cond_73
    const-string/jumbo v0, "OFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_83

    const-string/jumbo p0, "NOT DISABLE USB 1"

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_83
    const-string/jumbo p0, "NOT DISABLE USB 2"

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8a
    :goto_8a
    const-string p0, "DISABLE USB for USER BINARY and CMCC MODEL or MDM block or ON_ALL_SCREEN"

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_90
    const-string/jumbo p0, "NOT DISABLE USB 4"

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static checkWriteValue()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkWriteValue : isLckScrBlock= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSIMBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMDMBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbHostRestrictor"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-ne v2, v1, :cond_38

    const-string/jumbo v0, "ON_ALL_BOTH"

    return-object v0

    :cond_38
    if-ne v0, v1, :cond_42

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-nez v2, :cond_42

    const-string/jumbo v0, "ON_ALL_SCREEN"

    return-object v0

    :cond_42
    if-nez v0, :cond_4c

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-ne v2, v1, :cond_4c

    const-string/jumbo v0, "ON_ALL_SIM"

    return-object v0

    :cond_4c
    if-nez v0, :cond_5a

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-nez v0, :cond_5a

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    if-ne v0, v1, :cond_5a

    const-string/jumbo v0, "ON_HOST_MDM"

    return-object v0

    :cond_5a
    const-string/jumbo v0, "OFF"

    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .registers 12

    const-string v0, "/system/csc/sales_code.dat"

    const-string v1, "/efs/imei/mps_code.dat"

    const-string v2, "IOException(iex): "

    const-string/jumbo v3, "UsbHostRestrictor"

    const-string v4, "File not Found exception: "

    const-string v5, "IOException: "

    const-string v6, "IllegalArgumentException: "

    const-string/jumbo v7, "null"

    const/4 v8, 0x0

    :try_start_13
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_77

    const-string/jumbo v0, "mps exists"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_2e} :catch_73
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2e} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_2e} :catch_6b
    .catchall {:try_start_13 .. :try_end_2e} :catchall_67

    :try_start_2e
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_33} :catch_61
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_33} :catch_55
    .catchall {:try_start_2e .. :try_end_33} :catchall_4f

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_37} :catch_4a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_37} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_37} :catch_40
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    move-object v8, v0

    move-object v0, v1

    goto/16 :goto_b4

    :catchall_3b
    move-exception v4

    move-object v8, v0

    move-object v0, v1

    goto/16 :goto_151

    :catch_40
    move-exception v4

    move-object v8, v0

    move-object v0, v1

    goto/16 :goto_d8

    :catch_45
    move-exception v4

    move-object v8, v0

    move-object v0, v1

    goto/16 :goto_101

    :catch_4a
    move-exception v5

    move-object v8, v0

    move-object v0, v1

    goto/16 :goto_128

    :catchall_4f
    move-exception v4

    move-object v11, v8

    move-object v8, v0

    move-object v0, v11

    goto/16 :goto_151

    :catch_55
    move-exception v4

    move-object v11, v8

    move-object v8, v0

    move-object v0, v11

    goto/16 :goto_d8

    :catch_5b
    move-exception v4

    move-object v11, v8

    move-object v8, v0

    move-object v0, v11

    goto/16 :goto_101

    :catch_61
    move-exception v5

    move-object v11, v8

    move-object v8, v0

    move-object v0, v11

    goto/16 :goto_128

    :catchall_67
    move-exception v4

    move-object v0, v8

    goto/16 :goto_151

    :catch_6b
    move-exception v4

    move-object v0, v8

    goto/16 :goto_d8

    :catch_6f
    move-exception v4

    move-object v0, v8

    goto/16 :goto_101

    :catch_73
    move-exception v5

    move-object v0, v8

    goto/16 :goto_128

    :cond_77
    :try_start_77
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ae

    const-string/jumbo v1, "sales_code exists"

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_88} :catch_73
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_88} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_88} :catch_6b
    .catchall {:try_start_77 .. :try_end_88} :catchall_67

    :try_start_88
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_8d} :catch_ab
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8d} :catch_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_8d} :catch_a5
    .catchall {:try_start_88 .. :try_end_8d} :catchall_a2

    :try_start_8d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_91
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_91} :catch_9e
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_91} :catch_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_91} :catch_97
    .catchall {:try_start_8d .. :try_end_91} :catchall_93

    move-object v8, v1

    goto :goto_b4

    :catchall_93
    move-exception v4

    :goto_94
    move-object v8, v1

    goto/16 :goto_151

    :catch_97
    move-exception v4

    :goto_98
    move-object v8, v1

    goto :goto_d8

    :catch_9a
    move-exception v4

    :goto_9b
    move-object v8, v1

    goto/16 :goto_101

    :catch_9e
    move-exception v5

    :goto_9f
    move-object v8, v1

    goto/16 :goto_128

    :catchall_a2
    move-exception v4

    move-object v0, v8

    goto :goto_94

    :catch_a5
    move-exception v4

    move-object v0, v8

    goto :goto_98

    :catch_a8
    move-exception v4

    move-object v0, v8

    goto :goto_9b

    :catch_ab
    move-exception v5

    move-object v0, v8

    goto :goto_9f

    :cond_ae
    :try_start_ae
    const-string v0, "Both dat does not exist"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b3} :catch_73
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b3} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ae .. :try_end_b3} :catch_6b
    .catchall {:try_start_ae .. :try_end_b3} :catchall_67

    move-object v0, v8

    :goto_b4
    if-eqz v8, :cond_bc

    :try_start_b6
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_bc

    :catch_ba
    move-exception v0

    goto :goto_c3

    :cond_bc
    :goto_bc
    if-eqz v0, :cond_150

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c1} :catch_ba

    goto/16 :goto_150

    :goto_c3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_c8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_150

    :goto_d8
    :try_start_d8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_d8 .. :try_end_eb} :catchall_ff

    if-eqz v8, :cond_f3

    :try_start_ed
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_f3

    :catch_f1
    move-exception v0

    goto :goto_f9

    :cond_f3
    :goto_f3
    if-eqz v0, :cond_150

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f8} :catch_f1

    goto :goto_150

    :goto_f9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_c8

    :catchall_ff
    move-exception v4

    goto :goto_151

    :goto_101
    :try_start_101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catchall {:try_start_101 .. :try_end_114} :catchall_ff

    if-eqz v8, :cond_11c

    :try_start_116
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_11c

    :catch_11a
    move-exception v0

    goto :goto_122

    :cond_11c
    :goto_11c
    if-eqz v0, :cond_150

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_121} :catch_11a

    goto :goto_150

    :goto_122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_c8

    :goto_128
    :try_start_128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catchall {:try_start_128 .. :try_end_13b} :catchall_ff

    if-eqz v8, :cond_143

    :try_start_13d
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_143

    :catch_141
    move-exception v0

    goto :goto_149

    :cond_143
    :goto_143
    if-eqz v0, :cond_150

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_148} :catch_141

    goto :goto_150

    :goto_149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_c8

    :cond_150
    :goto_150
    return-object v7

    :goto_151
    if-eqz v8, :cond_159

    :try_start_153
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_159

    :catch_157
    move-exception v0

    goto :goto_15f

    :cond_159
    :goto_159
    if-eqz v0, :cond_172

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_15e} :catch_157

    goto :goto_172

    :goto_15f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_172
    :goto_172
    throw v4
.end method

.method public static getUsbHostDisableSysNodeWritable()Z
    .registers 1

    const-string v0, "/sys/class/usb_notify/usb_control/disable"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAdbOnlyMode()Z
    .registers 2

    const-string/jumbo v0, "persist.sys.usb.config"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportDexRestrict()Z
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSupportDexRestrict ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UsbHostRestrictor"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    return v0

    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method public static readFileToString()Ljava/lang/String;
    .registers 4

    const-string v0, "/efs/usb_con_hist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_2f

    :goto_11
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    goto :goto_11

    :catchall_20
    move-exception v0

    goto :goto_26

    :cond_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f

    goto :goto_37

    :goto_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    :try_start_2b
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_2f

    :catch_2f
    const-string/jumbo v0, "UsbHostRestrictor"

    const-string v2, "Failed to read from ScrLck Block FILE"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeVpidHistorytoFile(Ljava/lang/String;)V
    .registers 7

    const-string v0, "Failed to close the file writer"

    const-string/jumbo v1, "UsbHostRestrictor"

    const-string/jumbo v2, "writeVpidHistorytoFile"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_c
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_2b
    .catchall {:try_start_c .. :try_end_19} :catchall_29

    :try_start_19
    invoke-virtual {v4, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_27
    .catchall {:try_start_19 .. :try_end_1c} :catchall_24

    :try_start_1c
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    return-void

    :catch_20
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :catchall_24
    move-exception p0

    move-object v2, v4

    goto :goto_36

    :catch_27
    move-object v2, v4

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_36

    :catch_2b
    :goto_2b
    :try_start_2b
    const-string p0, "Failed to write to USB RESTRICT File Path"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_29

    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_20

    :cond_35
    :goto_35
    return-void

    :goto_36
    if-eqz v2, :cond_3f

    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_3f

    :catch_3c
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    throw p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 21

    move-object/from16 v0, p1

    const-string v1, "  CurrentScrLckStateValue :"

    const-string v2, "  mCurrentSysNodeValue :"

    const-string v3, "  MDM mStrAllowList :"

    const-string v4, "  MDM bRestrictHostAPI :"

    const-string v5, "  IsTKInstalled :"

    const-string v6, "  SettingBlockUsbLock :"

    const-string v7, "  IsDeviceConnected :"

    const-string v8, "  IsHostConnected :"

    const-string v9, "  ScreenLockStateValue :"

    const-string v10, "  LckScr BLOCK ON/OFF :"

    const-string v11, "  MDM BLOCK ON/OFF :"

    const-string v12, "  SIM BLOCK ON/OFF :"

    const-string v13, "  Disable Sys Node Writable :"

    const-string v14, "  Disable Sys Node Value :"

    const-string v15, "  All SIM Count:"

    sget-object v16, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    monitor-enter v16

    move-object/from16 v17, v3

    :try_start_25
    const-string/jumbo v3, "USB Host Restrictor State:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, p0

    move-object/from16 v18, v4

    iget-object v4, v15, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentScrLckNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->bRestrictHostAPI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mStrAllowList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v16

    return-void

    :catchall_138
    move-exception v0

    monitor-exit v16
    :try_end_13a
    .catchall {:try_start_25 .. :try_end_13a} :catchall_138

    throw v0
.end method

.method public final isFinishLockTimer()Z
    .registers 9

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_cb

    const-string/jumbo v0, "UsbHostRestrictor"

    const-string/jumbo v2, "isFinishLockTimer"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/usb/UsbHostRestrictor;->startTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v4

    if-ne v4, v5, :cond_30

    const-string/jumbo v4, "TK ENABLED"

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    goto :goto_38

    :cond_30
    const-string/jumbo v4, "TK NOT ENABLED"

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    :cond_38
    :goto_38
    const-wide/32 v6, 0x36ee80

    cmp-long v2, v2, v6

    if-ltz v2, :cond_cb

    sget v2, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-ne v2, v5, :cond_cb

    const-string/jumbo v2, "persist.sys.auto_confirm"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    if-nez v2, :cond_cb

    const-string/jumbo v1, "finishLockTimer--"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    const/4 v1, 0x2

    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    const-string/jumbo v1, "RAINY_RESTRICT_MODE"

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ON_ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "UsbHostRestrictor set SCR LCK BLCK"

    const-string/jumbo v6, "ON_ALL_SCREEN"

    if-eqz v3, :cond_be

    const-string/jumbo v3, "ON_ALL_BOTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b7

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_96

    goto :goto_b7

    :cond_96
    const-string/jumbo v6, "ON_ALL_SIM"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ac

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    return v5

    :cond_ac
    const-string/jumbo p0, "UsbHostRestrictor USB ALL is already BLOCKED by "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_b7
    :goto_b7
    const-string/jumbo p0, "UsbHostRestrictor USB ALL is already BLOCKED by SCR LCK BLCK"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_be
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    :cond_ca
    return v5

    :cond_cb
    return v1
.end method

.method public final onAwakeStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public final onKeyguardStateChanged(Z)V
    .registers 7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1a

    if-eqz v0, :cond_1a

    move p1, v2

    goto :goto_1b

    :cond_1a
    move p1, v1

    :goto_1b
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    if-eq v3, p1, :cond_28

    sput-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_25

    goto :goto_28

    :catchall_25
    move-exception p0

    goto/16 :goto_b5

    :cond_28
    :goto_28
    :try_start_28
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/usb_notify/usb_control/usb_sl"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_37} :catch_38
    .catchall {:try_start_28 .. :try_end_37} :catchall_25

    goto :goto_40

    :catch_38
    :try_start_38
    const-string/jumbo v3, "UsbHostRestrictor"

    const-string v4, "Failed to read from ScrLck Block FILE"

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    sget-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    if-eqz v3, :cond_91

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isAdbOnlyMode()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_4f

    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    if-nez v3, :cond_68

    :cond_4f
    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-eq v3, v4, :cond_68

    const-string p1, "CLOUDY_WORK_MODE"

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    sput v4, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    const-string/jumbo p0, "UsbHostRestrictor"

    const-string/jumbo p1, "onKeyguardStateChanged: LOCK_SCREEN_BLOCK : ON -> OFF"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_b4

    :cond_68
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isAdbOnlyMode()Z

    move-result v3

    if-nez v3, :cond_82

    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    if-ne v3, v2, :cond_82

    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-ne v3, v4, :cond_82

    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    const-string/jumbo v3, "UsbHostRestrictor"

    const-string/jumbo v4, "onKeyguardStateChanged: LOCK_SCREEN_BLOCK : OFF -> ON"

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_82
    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-ne v3, v4, :cond_91

    const-string/jumbo p0, "UsbHostRestrictor"

    const-string/jumbo p1, "onKeyguardStateChanged: LOCK_SCREEN_BLOCK : OFF"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_b4

    :cond_91
    :goto_91
    if-eqz p1, :cond_a4

    sget v3, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-nez v3, :cond_a4

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$8;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$8;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b3

    :cond_a4
    if-nez p1, :cond_b3

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$8;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$8;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b3
    :goto_b3
    monitor-exit v0

    :goto_b4
    return-void

    :goto_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_38 .. :try_end_b6} :catchall_25

    throw p0
.end method

.method public final readDisableSysNodefromFile()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    const-string/jumbo v0, "UsbHostRestrictor"

    const-string v1, "Failed to read from DISABLE FILE"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_1c
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_31

    const-string/jumbo v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    goto :goto_3b

    :cond_31
    const-string/jumbo v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v1, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    :goto_3b
    return-object v0
.end method

.method public final startLockTimer()V
    .registers 6

    const-string/jumbo v0, "startLockTimer++"

    const-string/jumbo v1, "UsbHostRestrictor"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/usb/UsbHostRestrictor;->startTime:J

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    if-eqz v2, :cond_3f

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.intent.action.USB_RESTRICTION_TIMER_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v3, 0x36ee80

    add-long/2addr v0, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_3f
    const-string/jumbo p0, "alarmManager null"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopLockTimer()V
    .registers 5

    const-string/jumbo v0, "stopLockTimer--"

    const-string/jumbo v1, "UsbHostRestrictor"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    if-eqz v2, :cond_2d

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.intent.action.USB_RESTRICTION_TIMER_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void

    :cond_2d
    const-string/jumbo p0, "alarmManager null"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeDisableSysNodetoFile(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "OFF"

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Write Disable Sys Node with ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UsbHostRestrictor"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_20
    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->checkUsbBlockingCondition(Ljava/lang/String;)Z

    move-result v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_44

    const-string v3, "/sys/class/usb_notify/usb_control/disable"

    if-eqz v1, :cond_46

    :try_start_28
    invoke-static {v3, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_44
    move-exception p1

    goto :goto_51

    :cond_46
    invoke-static {v3, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_50} :catch_44

    return-void

    :goto_51
    const-string v1, "Failed to write to DISABLE FILE"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IOException : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    return-void
.end method

.method public final writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "UsbHostRestrictor"

    const-string/jumbo v1, "Write ScrLck Block FILE"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "RAINY_RESTRICT_MODE"

    if-eqz v1, :cond_36

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->emm:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2e

    const-string/jumbo v1, "TK ENABLED 2"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    goto :goto_36

    :cond_2e
    const-string/jumbo v1, "TK NOT ENABLED 2"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    :cond_36
    :goto_36
    const-string/jumbo v1, "persist.sys.auto_confirm"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isEMTokenEnabled:Z

    if-eqz v1, :cond_82

    :cond_4b
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const-string/jumbo p1, "usb debug mode on"

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ON_ALL_SCREEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ON_ALL_BOTH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_7d
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    :cond_80
    const-string p1, "CLOUDY_WORK_MODE"

    :cond_82
    :try_start_82
    const-string p0, "/sys/class/usb_notify/usb_control/usb_sl"

    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentScrLckNodeValue:Ljava/lang/String;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_89} :catch_8a

    return-void

    :catch_8a
    move-exception p0

    const-string p1, "Failed to write to ScrLck Block FILE"

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "IOException : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v4, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentScrLckNodeValue:Ljava/lang/String;

    return-void
.end method
