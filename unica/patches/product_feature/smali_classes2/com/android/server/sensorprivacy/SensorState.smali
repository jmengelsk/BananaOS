.class public final Lcom/android/server/sensorprivacy/SensorState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLastChange:J

.field public mStateType:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    sget-object p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorState;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    iget-wide v0, p1, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .registers 2

    iget p0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
