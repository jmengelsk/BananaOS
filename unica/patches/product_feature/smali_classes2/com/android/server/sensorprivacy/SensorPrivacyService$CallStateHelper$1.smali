.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

.field public final synthetic val$callState:I


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->val$callState:I

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->val$callState:I

    iget-object v0, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;

    invoke-direct {v1, p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
