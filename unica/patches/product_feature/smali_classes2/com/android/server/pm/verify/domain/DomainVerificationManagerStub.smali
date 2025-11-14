.class public final Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;
.super Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    return-void
.end method

.method public static rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 1

    instance-of v0, p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v0, :cond_0

    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final queryValidVerificationPackageNames()Ljava/util/List;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x400

    if-ge p3, v0, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Caller is not allowed to set state code "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;ZI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->mService:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;->rethrow(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
