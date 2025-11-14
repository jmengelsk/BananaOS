.class public Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HT_NAME:Ljava/lang/String; = "FeatureBlacklistObserver"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

.field public mFeaturesBlacklistCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation
.end field

.field public mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[KnoxAnalytics] "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getFeatureBlacklist()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    return-object p0
.end method

.method public final start()V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FeatureBlacklistObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final stop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
