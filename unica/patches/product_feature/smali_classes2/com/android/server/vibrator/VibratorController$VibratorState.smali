.class final enum Lcom/android/server/vibrator/VibratorController$VibratorState;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/vibrator/VibratorController$VibratorState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/vibrator/VibratorController$VibratorState;

.field public static final enum IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

.field public static final enum UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/VibratorController$VibratorState;

.field public static final enum VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/server/vibrator/VibratorController$VibratorState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    new-instance v1, Lcom/android/server/vibrator/VibratorController$VibratorState;

    const-string/jumbo v2, "VIBRATING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    new-instance v2, Lcom/android/server/vibrator/VibratorController$VibratorState;

    const-string/jumbo v3, "UNDER_EXTERNAL_CONTROL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/vibrator/VibratorController$VibratorState;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/VibratorController$VibratorState;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/vibrator/VibratorController$VibratorState;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->$VALUES:[Lcom/android/server/vibrator/VibratorController$VibratorState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/VibratorController$VibratorState;
    .registers 2

    const-class v0, Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController$VibratorState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/vibrator/VibratorController$VibratorState;
    .registers 1

    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->$VALUES:[Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/VibratorController$VibratorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/VibratorController$VibratorState;

    return-object v0
.end method
