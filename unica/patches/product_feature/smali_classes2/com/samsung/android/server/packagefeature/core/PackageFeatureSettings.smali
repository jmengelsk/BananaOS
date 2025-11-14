.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;


# instance fields
.field public final mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "package_policy_disabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "package_policy_disabled"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p1, p2, v0, p0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-eqz p2, :cond_3

    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    const-string/jumbo p1, "onSettingsChanged, mAllFeaturesDisabled="

    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    iget-object p2, p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "package_policy_disabled"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move v1, v0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    iget-boolean v2, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->forAllGroups(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
