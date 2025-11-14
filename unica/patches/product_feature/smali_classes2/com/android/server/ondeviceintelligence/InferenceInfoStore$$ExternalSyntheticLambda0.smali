.class public final synthetic Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Landroid/app/ondeviceintelligence/InferenceInfo;

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/InferenceInfo;->getStartTimeMillis()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
