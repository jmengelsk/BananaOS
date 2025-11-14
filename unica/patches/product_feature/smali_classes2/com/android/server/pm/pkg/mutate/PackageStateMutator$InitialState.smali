.class public final Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPackageSequence:I

.field public final mStateSequence:J


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mPackageSequence:I

    iput-wide p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mStateSequence:J

    return-void
.end method
