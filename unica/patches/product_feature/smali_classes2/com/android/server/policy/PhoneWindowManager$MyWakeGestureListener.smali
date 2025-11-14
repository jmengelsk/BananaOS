.class public final Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

.field public final mListener:Lcom/android/server/policy/WakeGestureListener$1;

.field public final mLock:Ljava/lang/Object;

.field public final mSensor:Landroid/hardware/Sensor;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTriggerRequested:Z

.field public final mWakeUpRunnable:Lcom/android/server/policy/WakeGestureListener$2;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    new-instance p1, Lcom/android/server/policy/WakeGestureListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/WakeGestureListener$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mListener:Lcom/android/server/policy/WakeGestureListener$1;

    new-instance p1, Lcom/android/server/policy/WakeGestureListener$2;

    invoke-direct {p1, p0}, Lcom/android/server/policy/WakeGestureListener$2;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mWakeUpRunnable:Lcom/android/server/policy/WakeGestureListener$2;

    const-string/jumbo p1, "sensor"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 p2, 0x17

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method
