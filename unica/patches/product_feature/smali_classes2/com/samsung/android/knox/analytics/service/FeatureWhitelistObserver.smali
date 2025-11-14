.class public Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HT_NAME:Ljava/lang/String; = "FeatureWhitelistObserver"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] FeatureWhitelistObserver"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

.field public mFeaturesWhitelistCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;",
            ">;"
        }
    .end annotation
.end field

.field public mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getFeatureWhitelist()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeaturesWhitelistCache:Ljava/util/List;

    return-object p0
.end method

.method public final start()V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FeatureWhitelistObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final stop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
