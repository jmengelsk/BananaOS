.class public final synthetic Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/StateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timedetector/TimeDetectorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
