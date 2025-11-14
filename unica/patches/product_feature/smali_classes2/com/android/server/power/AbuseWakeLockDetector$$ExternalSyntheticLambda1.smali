.class public final synthetic Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget p0, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_16

    check-cast p1, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;

    iget-object p0, p1, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->packageName:Ljava/lang/String;

    return-object p0

    :pswitch_a  #0x0
    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    new-instance p0, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;-><init>(ILjava/lang/String;)V

    return-object p0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method
