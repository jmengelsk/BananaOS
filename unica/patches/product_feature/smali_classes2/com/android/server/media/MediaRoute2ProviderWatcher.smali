.class public final Lcom/android/server/media/MediaRoute2ProviderWatcher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z

.field public static final RESOLVE_INFO_FLAGS:Landroid/content/pm/PackageManager$ResolveInfoFlags;


# instance fields
.field public final mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProxies:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mScanPackagesReceiver:Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

.field public final mScanPackagesRunnable:Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "MR2ProviderWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->DEBUG:Z

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->RESOLVE_INFO_FLAGS:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mCallback:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iput p4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
