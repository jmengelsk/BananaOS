.class public final Lcom/android/server/people/data/Event$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDurationSeconds:I

.field public mTimestamp:J

.field public mType:I


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    iput p3, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return-void
.end method
