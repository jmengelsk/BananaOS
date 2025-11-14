.class public final Lcom/android/server/pm/MultiPackageVerifyingSession;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mChildVerifyingSessions:Ljava/util/List;

.field public final mObserver:Lcom/android/server/pm/PackageSessionVerifier$1;

.field public final mVerificationState:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerifyingSession;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_34

    iput-object p2, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    const/4 p2, 0x0

    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_20

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VerifyingSession;

    iput-object p0, v1, Lcom/android/server/pm/VerifyingSession;->mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_20
    new-instance p2, Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/pm/VerifyingSession;->mObserver:Lcom/android/server/pm/PackageSessionVerifier$1;

    iput-object p1, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mObserver:Lcom/android/server/pm/PackageSessionVerifier$1;

    return-void

    :cond_34
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "No child sessions found!"

    const/16 p2, -0x15

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MultiPackageVerifyingSession{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
