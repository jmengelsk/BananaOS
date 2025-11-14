.class public interface abstract Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/DomainVerificationConnection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p0

    :goto_0
    if-eqz v7, :cond_1

    new-instance v2, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;-><init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/DomainVerificationConnection;Landroid/content/ComponentName;)V

    goto :goto_1

    :cond_1
    move-object v3, p2

    move-object v6, p5

    move-object v2, v0

    :goto_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    invoke-direct {v0, v3, v6, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;-><init>(Landroid/content/Context;Lcom/android/server/pm/DomainVerificationConnection;Landroid/content/ComponentName;)V

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    new-instance p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;

    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;-><init>(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;)V

    return-object p0

    :cond_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract isCallerVerifier(I)Z
.end method

.method public abstract runMessage(ILjava/lang/Object;)Z
.end method

.method public abstract sendBroadcastForPackages(Ljava/util/Set;)V
.end method
