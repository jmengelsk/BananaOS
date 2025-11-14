.class public final synthetic Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Ljava/lang/Object;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_1e

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void

    :pswitch_11  #0x0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11  #00000000
    .end packed-switch
.end method
