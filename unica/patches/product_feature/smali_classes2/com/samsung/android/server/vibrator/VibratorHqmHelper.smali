.class public final Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BIG_DATA:[Ljava/lang/String;

.field public static sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "FW_TVPC"

    const-string v1, "FW_EVPC"

    const-string v2, "FW_RVPC"

    const-string v3, "FW_AVPC"

    const-string v4, "FW_NVPC"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    return-void
.end method
