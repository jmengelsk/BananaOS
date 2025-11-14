.class public final synthetic Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorShellCommand;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorShellCommand;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/app/timedetector/ManualTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timedetector/ManualTimeSuggestion;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/app/time/ExternalTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/time/ExternalTimeSuggestion;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-class v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-static {v0, p0}, Landroid/app/timedetector/TimeSuggestionHelper;->handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;

    move-result-object p0

    new-instance v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;)V

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timedetector/NetworkTimeSuggestion;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
