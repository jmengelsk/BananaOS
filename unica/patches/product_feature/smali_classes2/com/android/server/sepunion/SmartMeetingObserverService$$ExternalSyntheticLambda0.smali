.class public final synthetic Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SmartMeetingObserverService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    sget-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SmartMeetingObserverService"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "registerUserUnlockedObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/sepunion/SmartMeetingObserverService$2;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/SmartMeetingObserverService$2;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    :try_start_0
    const-string/jumbo v1, "registerForegroundServiceObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mForegroundServiceObserver:Lcom/android/server/sepunion/SmartMeetingObserverService$1;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    iget v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "registerForegroundServiceObserver: failed "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v1, Lcom/android/server/sepunion/SmartMeetingObserverService$4;

    iget-object v3, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/sepunion/SmartMeetingObserverService$4;-><init>(Lcom/android/server/sepunion/SmartMeetingObserverService;Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;)V

    iget-object v3, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/android/server/sepunion/SmartMeetingObserverService;->SMMT_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mObserverRegisterState:I

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "get ContentResolver null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
