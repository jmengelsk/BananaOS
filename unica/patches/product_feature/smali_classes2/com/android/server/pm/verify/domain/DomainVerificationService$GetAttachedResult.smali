.class public final Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mErrorCode:I

.field public final mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    iput p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    return-void
.end method
