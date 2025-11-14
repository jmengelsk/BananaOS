.class public Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sget-object p1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    const-string p2, "FeatureBlacklistContentObserver()"

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->updateFeatureBlacklistCache()V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    sget-object p1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeatureBlacklist.onChange("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->updateFeatureBlacklistCache()V

    return-void
.end method

.method public final updateFeatureBlacklistCache()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    iget-object v1, v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getFeaturesBlacklist(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    const-string v0, "FeatureBlacklist.updateFeatureBlacklistCache(): blacklist is null!"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
