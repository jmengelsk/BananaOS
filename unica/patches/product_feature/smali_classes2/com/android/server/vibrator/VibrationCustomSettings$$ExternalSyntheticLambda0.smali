.class public final synthetic Lcom/android/server/vibrator/VibrationCustomSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibrationCustomSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibrationCustomSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibrationCustomSettings;

    return-void
.end method


# virtual methods
.method public final onModeChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibrationCustomSettings;

    iput p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioMode:I

    const-string p0, "Audio mode changed : "

    const-string/jumbo v0, "VibrationCustomSettings"

    invoke-static {p1, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
