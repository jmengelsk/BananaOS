.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    iput-boolean p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    iget-boolean p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;->f$1:Z

    invoke-interface {v0, p0}, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Z)V

    return-void
.end method
