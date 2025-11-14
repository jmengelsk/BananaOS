.class public Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/DatabaseObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    sget-object p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onChange() - Uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Debug;->SAVE_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Debug;->DUMP_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->dumpCache()V

    return-void

    :cond_1
    const-string/jumbo p0, "No URI matched!"

    invoke-static {p1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
