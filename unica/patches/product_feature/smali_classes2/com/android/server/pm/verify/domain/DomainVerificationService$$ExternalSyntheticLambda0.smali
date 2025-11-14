.class public final synthetic Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Computer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Computer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Computer;

    iput p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Computer;

    iget p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    const-wide/16 v2, -0x1

    if-nez v1, :cond_16

    move-wide v4, v2

    goto :goto_1e

    :cond_16
    invoke-interface {v1, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v4

    :goto_1e
    if-nez v0, :cond_21

    goto :goto_29

    :cond_21
    invoke-interface {v0, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v2

    :goto_29
    cmp-long p0, v4, v2

    if-eqz p0, :cond_30

    sub-long/2addr v4, v2

    long-to-int p0, v4

    return p0

    :cond_30
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
