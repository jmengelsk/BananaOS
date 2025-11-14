.class public abstract Lcom/android/server/pm/verify/domain/DomainVerificationUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sCachedMatcher:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static isDomainVerificationIntent(Landroid/content/Intent;J)Z
    .registers 11

    invoke-virtual {p0}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    :cond_17
    sget-object v2, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Matcher;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2a

    return v1

    :cond_2a
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_36

    return v1

    :cond_36
    const/4 v3, 0x1

    const-string/jumbo v4, "android.intent.category.BROWSABLE"

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    if-ne v0, v2, :cond_4d

    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v3

    :cond_4c
    return v1

    :cond_4d
    const-wide/32 v6, 0x10000

    and-long/2addr p1, v6

    const-wide/16 v6, 0x0

    cmp-long p1, p1, v6

    if-eqz p1, :cond_58

    move v1, v3

    :cond_58
    if-nez v0, :cond_5b

    goto :goto_61

    :cond_5b
    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    :goto_61
    return v1

    :cond_62
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static throwPackageUnavailable(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo v1, "Package "

    const-string v2, " unavailable"

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
