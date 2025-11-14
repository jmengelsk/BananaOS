.class public Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mJourney:I

.field public final mSessionId:J

.field public final mStartTimeInMills:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    iput-wide p4, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    return-void
.end method
