.class public final Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# instance fields
.field public final mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

.field public final mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    return-void
.end method


# virtual methods
.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final isCallerVerifier(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->isCallerVerifier(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->isCallerVerifier(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final runMessage(ILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->runMessage(ILjava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->runMessage(ILjava/lang/Object;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final sendBroadcastForPackages(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV2:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->sendBroadcastForPackages(Ljava/util/Set;)V

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;->mProxyV1:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->sendBroadcastForPackages(Ljava/util/Set;)V

    return-void
.end method
