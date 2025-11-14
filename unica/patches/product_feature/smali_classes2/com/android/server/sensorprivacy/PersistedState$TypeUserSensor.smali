.class public final Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mSensor:I

.field public final mType:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    iput p2, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    iput p3, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v1, p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    iget v3, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    if-ne v3, v1, :cond_1f

    iget v1, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    iget v3, p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    if-ne v1, v3, :cond_1f

    iget p0, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    iget p1, p1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    if-ne p0, p1, :cond_1f

    return v0

    :cond_1f
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    add-int/2addr v0, p0

    return v0
.end method
