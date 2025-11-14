.class public final Lcom/android/server/tv/TvInputManagerService$MessageHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_22

    aget-char v3, p0, v2

    const-string v4, "%=,"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1c

    const/16 v4, 0x25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_be

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_99

    const/4 v1, 0x5

    if-eq v0, v1, :cond_22

    const-string/jumbo p0, "TvInputManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unhandled message code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, p0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_22
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_27
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_4d

    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez p0, :cond_3b

    const-string/jumbo p0, "TvInputManagerService"

    const-string p1, "HdmiTvClient is null!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_3b
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v2, p1, v1}, Landroid/hardware/hdmi/HdmiTvClient;->selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)V

    :goto_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    goto :goto_97

    :cond_4d
    iget v1, p1, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez p1, :cond_6e

    const-string/jumbo p0, "TvInputManagerService"

    const-string/jumbo p1, "Unexpected null TvInputState."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_6e
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result p1

    const/16 v1, 0x3ef

    if-eq p1, v1, :cond_95

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez p1, :cond_87

    const-string/jumbo p0, "TvInputManagerService"

    const-string p1, "HdmiTvClient is null!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :cond_87
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v2, p0, v1}, Landroid/hardware/hdmi/HdmiTvClient;->selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)V

    :cond_95
    :goto_95
    monitor-exit v0

    return-void

    :goto_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_27 .. :try_end_98} :catchall_4b

    throw p0

    :cond_99
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_aa
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mupdateHardwareTvInputServiceBindingLocked(Lcom/android/server/tv/TvInputManagerService;I)V

    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_aa .. :try_end_b0} :catchall_b4

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_b4
    move-exception p0

    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0

    :cond_b7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    return-void

    :cond_be
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "watch_end_time_utc_millis"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "session_token"

    invoke-interface {v0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_e2
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e2 .. :try_end_e9} :catch_ea

    goto :goto_f4

    :catch_ea
    move-exception p0

    const-string/jumbo v0, "TvInputManagerService"

    const-string/jumbo v1, "error in insert db for MSG_LOG_WATCH_END"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f4
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_19c

    :cond_f9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "package_name"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "watch_start_time_utc_millis"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "channel_id"

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v3, :cond_17d

    const-string/jumbo v0, "tune_params"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_140
    :goto_140
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_176

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_153

    goto :goto_140

    :cond_153
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_140

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_140

    :cond_176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17d
    const-string/jumbo v0, "session_token"

    invoke-interface {v4}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_187
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MessageHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_18e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_187 .. :try_end_18e} :catch_18f

    goto :goto_199

    :catch_18f
    move-exception p0

    const-string/jumbo v0, "TvInputManagerService"

    const-string/jumbo v1, "error in insert db for MSG_LOG_WATCH_START"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_199
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_19c
    return-void
.end method
