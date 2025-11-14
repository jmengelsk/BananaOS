.class public Lcom/android/server/utils/quota/MultiRateLimiter$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCategorizer:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

.field public final mCategory:Lcom/android/server/utils/quota/Category;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

.field public final mQuotaTrackers:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    sget-object p1, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mCategorizer:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    sget-object p1, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    iput-object p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mCategory:Lcom/android/server/utils/quota/Category;

    return-void
.end method


# virtual methods
.method public final addRateLimit(ILjava/time/Duration;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mCategorizer:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    if-eqz v1, :cond_e

    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v3, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    goto :goto_15

    :cond_e
    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    :goto_15
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mCategory:Lcom/android/server/utils/quota/Category;

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    iget-object p0, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
