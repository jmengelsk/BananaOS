.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

.field public final mCallStateLock:Ljava/lang/Object;

.field public mCameraBlockedForEmergencyCall:Z

.field public final mEmergencyStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mIsInEmergencyCall:Z

.field public mMicUnmutedForEmergencyCall:Z

.field public mTts:Landroid/speech/tts/TextToSpeech;

.field public final mTtsHashForTTSPath:Ljava/util/HashMap;

.field public final mTtsHashForVoiceCallPath:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForVoiceCallPath:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForTTSPath:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

    invoke-direct {v2, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mEmergencyStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

    invoke-direct {v3, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    iput-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

    iget-object v4, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "streamType"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method
