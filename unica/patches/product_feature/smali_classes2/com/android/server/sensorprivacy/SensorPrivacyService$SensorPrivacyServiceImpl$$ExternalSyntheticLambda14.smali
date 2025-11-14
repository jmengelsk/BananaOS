.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda14;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda14;->$r8$classId:I

    check-cast p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    check-cast p2, Ljava/lang/Integer;

    packed-switch p0, :pswitch_data_8c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIJZZ)V

    return-void

    :pswitch_2c  #0x0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide/32 p4, 0xea60

    div-long/2addr v0, p4

    const-wide/16 p4, 0x0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 p1, 0x3

    const/4 p4, 0x0

    const/4 p5, 0x2

    const/4 v0, 0x1

    if-nez p6, :cond_68

    if-eq p3, v0, :cond_6e

    if-eq p3, p5, :cond_6c

    if-eq p3, p1, :cond_6a

    :cond_68
    move v4, p4

    goto :goto_6f

    :cond_6a
    move v4, p1

    goto :goto_6f

    :cond_6c
    move v4, v0

    goto :goto_6f

    :cond_6e
    move v4, p5

    :goto_6f
    if-eq p2, v0, :cond_77

    if-eq p2, p5, :cond_75

    move v3, p4

    goto :goto_78

    :cond_75
    move v3, p5

    goto :goto_78

    :cond_77
    move v3, v0

    :goto_78
    if-eq p0, v0, :cond_84

    if-eq p0, p5, :cond_82

    if-eq p0, p1, :cond_80

    move v5, p4

    goto :goto_85

    :cond_80
    move v5, v0

    goto :goto_85

    :cond_82
    move v5, p5

    goto :goto_85

    :cond_84
    move v5, p1

    :goto_85
    const/16 v2, 0x17d

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2c  #00000000
    .end packed-switch
.end method
