.class public Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartMeetingObserverService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VDC thread msg "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "SmartMeetingObserverService"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 p1, 0x1e

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "unregisterUsageStatsWatcher"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/SmartMeetingObserverService$3;

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    iget p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "get UsageStatsManager null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/server/sepunion/SmartMeetingObserverService;->-$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "onUsageStatsChanged"

    :try_start_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onUsageStatsChanged call failed: "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    const-string/jumbo v1, "onForegroundServiceStateChanged"

    invoke-virtual {p0, v0, v1, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string/jumbo p1, "onFgServiceStateChanged call failed: "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
