.class public final Lcom/android/server/vibrator/VibratorManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    iget p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_25e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    if-nez p1, :cond_1b5

    new-instance p1, Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "VibratorService"

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    goto/16 :goto_1b5

    :cond_26
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "com.sec.media.action.VIBRTOR_LOGGING"

    const/4 v2, 0x0

    if-eqz v0, :cond_83

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p2, p1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    if-nez v0, :cond_57

    new-instance v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v3, "HqmManagerService"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SemHqmManager;

    iput-object v3, v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string/jumbo v3, "alarm"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    :cond_57
    sget-object p2, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    iput-object p2, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    invoke-static {p0, v2, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v3, p1, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long v5, p0, v0

    const-wide/32 v7, 0x5265c00

    const/4 v4, 0x3

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_1b5

    :cond_83
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11a

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    goto/16 :goto_11a

    :cond_94
    const-string/jumbo v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_c4

    const-string/jumbo p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v2, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1b5

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1b5

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    const-string v0, "Detected device changed"

    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1b5

    :cond_c4
    const-string/jumbo v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    const-string/jumbo v0, "headset plug"

    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1b5

    :cond_de
    const-string/jumbo v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    const-string/jumbo p1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1b5

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    const-string/jumbo v0, "a2dp device connected"

    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1b5

    :cond_101
    const-string/jumbo p2, "com.android.launcher3.quickstep.closeall"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b5

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1b5

    :cond_11a
    :goto_11a
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    if-eqz p1, :cond_1b5

    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_12d
    const/4 v4, 0x5

    if-ge v3, v4, :cond_155

    sget-object v4, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    aget-object v5, v4, v3

    iget-object v6, p2, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_152

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_152
    add-int/lit8 v3, v3, 0x1

    goto :goto_12d

    :cond_155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :try_start_159
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move v4, v2

    :goto_15f
    if-ge v4, p2, :cond_174

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16e
    .catch Lorg/json/JSONException; {:try_start_159 .. :try_end_16e} :catch_171

    add-int/lit8 v4, v4, 0x1

    goto :goto_15f

    :catch_171
    move-exception v0

    move-object p2, v0

    goto :goto_179

    :cond_174
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_17d

    :goto_179
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p2, 0x0

    :goto_17d
    if-nez p2, :cond_180

    goto :goto_1a9

    :cond_180
    const-string/jumbo v0, "\\{"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "\\}"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v3, p1, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v3, :cond_1a9

    const-string v8, "0.0"

    const-string/jumbo v9, "sec"

    const/4 v4, 0x0

    const-string v5, "Audio"

    const-string/jumbo v6, "VIBE"

    const-string/jumbo v7, "sm"

    const-string v10, ""

    const-string v12, ""

    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1a9
    :goto_1a9
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    :cond_1b5
    :goto_1b5
    return-void

    :pswitch_1b6  #0x0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_232

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1c8
    const-string/jumbo v0, "reason"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x13

    if-ne p2, v0, :cond_1e2

    const-string/jumbo p0, "VibratorManagerService"

    const-string p2, "Keep screen turned off"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    goto/16 :goto_25d

    :catchall_1df
    move-exception v0

    move-object p0, v0

    goto :goto_230

    :cond_1e2
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p2, p2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz p2, :cond_21c

    invoke-interface {p2}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const-string/jumbo v1, "com.android.server.telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21c

    invoke-interface {p2}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p2

    const/16 v1, 0x21

    if-ne p2, v1, :cond_21c

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ignore cancelling current vibration: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "VibratorManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    goto :goto_21d

    :cond_21c
    const/4 p2, 0x0

    :goto_21d
    if-eqz p2, :cond_221

    monitor-exit p1

    goto :goto_25d

    :cond_221
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;I)V

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    monitor-exit p1

    goto :goto_25d

    :goto_230
    monitor-exit p1
    :try_end_231
    .catchall {:try_start_1c8 .. :try_end_231} :catchall_1df

    throw p0

    :cond_232
    invoke-static {}, Lcom/android/server/pm/UserManagerInternal;->shouldShowNotificationForBackgroundUserSounds()Z

    move-result p1

    if-eqz p1, :cond_25d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25d

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_24a
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;I)V

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_FOREGROUND_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {p0, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    monitor-exit p1

    goto :goto_25d

    :catchall_259
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_25c
    .catchall {:try_start_24a .. :try_end_25c} :catchall_259

    throw p0

    :cond_25d
    :goto_25d
    return-void

    :pswitch_data_25e
    .packed-switch 0x0
        :pswitch_1b6  #00000000
    .end packed-switch
.end method
