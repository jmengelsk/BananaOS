.class public final synthetic Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/MinorModeObserverService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/MinorModeObserverService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/MinorModeObserverService;

    sget-object v0, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "MinorModeObserverService"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "registerUserUnlockedObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/sepunion/MinorModeObserverService$1;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/MinorModeObserverService$1;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    new-instance v1, Lcom/android/server/sepunion/MinorModeObserverService$4;

    iget-object v3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/sepunion/MinorModeObserverService$4;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;)V

    iget-object v3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/android/server/sepunion/MinorModeObserverService;->MM_URI:Landroid/net/Uri;

    const-string/jumbo v5, "limit_packages"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "registerLimitPackagesObserver fail: get ContentResolver null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Lcom/android/server/sepunion/MinorModeObserverService$5;

    iget-object v3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/sepunion/MinorModeObserverService$5;-><init>(Lcom/android/server/sepunion/MinorModeObserverService;Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;)V

    iget-object v3, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "minors_mode_enabled"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mObserverRegisterState:I

    return-void

    :cond_1
    const-string/jumbo p0, "registerMinorModeStateObserver fail: get ContentResolver null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
