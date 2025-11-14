.class public final synthetic Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    packed-switch v0, :pswitch_data_52

    check-cast p1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    return-void

    :pswitch_d  #0x3
    check-cast p1, Landroid/app/time/ExternalTimeSuggestion;

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V

    return-void

    :pswitch_13  #0x2
    check-cast p1, Lcom/android/server/timedetector/GnssTimeSuggestion;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "suggest gnss time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2f  #0x1
    check-cast p1, Landroid/app/timedetector/TelephonyTimeSuggestion;

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void

    :pswitch_35  #0x0
    check-cast p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "suggest network time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_35  #00000000
        :pswitch_2f  #00000001
        :pswitch_13  #00000002
        :pswitch_d  #00000003
    .end packed-switch
.end method
