.class public final Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCallback:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static assertInternal(I)V
    .locals 3

    if-eqz p0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller "

    const-string v2, " is not allowed to change internal state"

    invoke-static {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    invoke-interface {p2, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->isCallerVerifier(I)Z

    move-result p2

    const-string v0, "Caller "

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    const-string v1, " is not allowed to query domain verification state"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {p0, v1, p2, p1, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    const-string v1, " does not hold android.permission.QUERY_ALL_PACKAGES"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {p0, v1, p2, p1, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final assertApprovedUserSelector(IIILjava/lang/String;)Z
    .locals 4

    if-eq p2, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "Caller is not allowed to edit other users"

    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "Caller is not allowed to edit user selections"

    const-string/jumbo v3, "android.permission.UPDATE_DOMAIN_VERIFICATION_USER_SELECTION"

    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const-string v1, " does not exist"

    const-string/jumbo v2, "User "

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    iget-object p2, p2, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    if-nez p4, :cond_1

    return p2

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p3, p4, p2}, Lcom/android/server/pm/Computer;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    invoke-static {p3, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    invoke-static {p2, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "Caller "

    if-eqz p1, :cond_4

    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_4

    const/16 v2, 0x7d0

    if-eq p1, v2, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DOMAIN_VERIFICATION_AGENT"

    invoke-virtual {v3, v4, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    invoke-virtual {v3, v5, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p2, " does not hold android.permission.DOMAIN_VERIFICATION_AGENT"

    invoke-static {p1, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    const-string v0, " does not hold android.permission.QUERY_ALL_PACKAGES"

    invoke-static {p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {p0, v3, v2, p1, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_3
    invoke-interface {p2, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->isCallerVerifier(I)Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p2, " is not the approved domain verification agent"

    invoke-static {p1, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
