.class public abstract synthetic Lcom/android/server/vibrator/VibratorManagerService$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

.field public static final synthetic $SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    sget-object v4, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/android/server/vibrator/VibrationSession$Status;->values()[Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/16 v5, 0x12

    :try_start_4
    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/16 v4, 0xd

    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/16 v1, 0x15

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/16 v1, 0x16

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/4 v1, 0x5

    const/16 v2, 0x17

    aput v1, v0, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/4 v1, 0x6

    const/16 v2, 0x19

    aput v1, v0, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/4 v1, 0x7

    const/16 v2, 0x1c

    aput v1, v0, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
