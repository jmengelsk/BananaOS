.class public Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SocialComposerObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SocialComposerObserverService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SC thread msg "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "SC/SocialComposerObserverService"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/SocialComposerObserverService;

    if-eq v0, v1, :cond_4b

    const/16 p1, 0x14

    if-eq v0, p1, :cond_1d

    goto :goto_6e

    :cond_1d
    sget-object p1, Lcom/android/server/sepunion/SocialComposerObserverService;->SC_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "unregisterUsageStatsWatcher"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/SocialComposerObserverService$2;

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    iget p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mObserverRegisterState:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mObserverRegisterState:I

    goto :goto_47

    :cond_41
    const-string/jumbo p1, "get UsageStatsManager null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    invoke-static {p0}, Lcom/android/server/sepunion/SocialComposerObserverService;->-$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/SocialComposerObserverService;)V

    return-void

    :cond_4b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/android/server/sepunion/SocialComposerObserverService;->SC_OBSERVER_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "onUsageStatsChanged"

    :try_start_57
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/SocialComposerObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/server/sepunion/SocialComposerObserverService;->SC_OBSERVER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_66} :catch_67

    return-void

    :catch_67
    move-exception p0

    const-string/jumbo p1, "onUsageStatsChanged call failed: "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6e
    return-void
.end method
