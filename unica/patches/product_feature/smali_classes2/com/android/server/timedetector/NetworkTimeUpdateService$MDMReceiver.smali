.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string/jumbo p2, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iget-object p2, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    iget-object p1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "date_time_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v2, 0x0

    const v3, 0x10e0124

    const v4, 0x10e0123

    const v5, 0x10e0122

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v8, v6

    if-eqz v10, :cond_1

    long-to-int v5, v6

    iput v5, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v5

    cmp-long v7, v8, v5

    if-eqz v7, :cond_2

    long-to-int v4, v5

    iput v4, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    move-result v1

    if-eqz v1, :cond_3

    iput v1, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    :goto_2
    sput-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    iput v2, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    goto :goto_3

    :cond_4
    sput-boolean v2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    :goto_3
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iget-object p1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    const-string/jumbo p0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sput-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mBootCompleted:Z

    :cond_6
    :goto_4
    return-void
.end method

.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    const-string/jumbo v0, "NTP_PARAMETERS_UPDATED"

    invoke-static {p0, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    return-void
.end method
