.class public Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/MinorModeObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x14

    const-string/jumbo v2, "MinorModeObserverService"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3e

    const/16 p1, 0x1e

    if-eq v0, p1, :cond_3a

    const/16 p1, 0x28

    if-eq v0, p1, :cond_19

    goto :goto_5d

    :cond_19
    sget-object p1, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1e
    iget-boolean p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    if-nez p1, :cond_23

    goto :goto_5d

    :cond_23
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    const-string/jumbo v0, "on_media_config_changed"

    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_31} :catch_32

    goto :goto_5d

    :catch_32
    move-exception p0

    const-string/jumbo p1, "onAudioStateChanged call failed: "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    :cond_3a
    invoke-static {p0}, Lcom/android/server/sepunion/MinorModeObserverService;->-$$Nest$mhandleMinorModeEnabled(Lcom/android/server/sepunion/MinorModeObserverService;)V

    return-void

    :cond_3e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_47
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    const-string/jumbo v1, "on_usage_stats_changed"

    invoke-virtual {p0, v0, v1, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_55} :catch_56

    goto :goto_5d

    :catch_56
    move-exception p0

    const-string/jumbo p1, "onUsageStatsChanged call failed: "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5d
    return-void

    :cond_5e
    sget-object p1, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/server/sepunion/MinorModeObserverService;->handleLimitPackages()V

    return-void
.end method
