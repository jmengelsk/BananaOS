.class public final Lcom/android/server/uri/UriMetricsHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPersistentUriGrantsProvider:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    sput-object v0, Lcom/android/server/uri/UriMetricsHelper;->DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/uri/UriMetricsHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/uri/UriMetricsHelper;->mPersistentUriGrantsProvider:Lcom/android/server/uri/UriGrantsManagerService;

    return-void
.end method
