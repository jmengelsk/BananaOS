.class public final synthetic Lcom/android/server/sepunion/SocialComposerObserverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SocialComposerObserverService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SocialComposerObserverService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    sget-object v0, Lcom/android/server/sepunion/SocialComposerObserverService;->SC_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SC/SocialComposerObserverService"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "registerUserUnlockedObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "get ContentResolver null"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/sepunion/SocialComposerObserverService$1;

    invoke-direct {v4, p0}, Lcom/android/server/sepunion/SocialComposerObserverService$1;-><init>(Lcom/android/server/sepunion/SocialComposerObserverService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mObserverRegisterState:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mObserverRegisterState:I

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Lcom/android/server/sepunion/SocialComposerObserverService$3;

    iget-object v4, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mHandler:Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/server/sepunion/SocialComposerObserverService$3;-><init>(Lcom/android/server/sepunion/SocialComposerObserverService;Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;)V

    iget-object v4, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/android/server/sepunion/SocialComposerObserverService;->SC_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {v4, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget v0, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mObserverRegisterState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mObserverRegisterState:I

    return-void

    :cond_1
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
