.class public abstract synthetic Lcom/android/server/vibrator/VibratorManagerService$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

.field public static final synthetic $SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    sget-object v4, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    invoke-static {}, Lcom/android/server/vibrator/VibrationSession$Status;->values()[Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/16 v5, 0x12

    :try_start_3e
    aput v1, v4, v5
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v1, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/16 v4, 0xd

    aput v0, v1, v4
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/16 v1, 0x15

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4c
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/16 v1, 0x16

    aput v3, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/4 v1, 0x5

    const/16 v2, 0x17

    aput v1, v0, v2
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/4 v1, 0x6

    const/16 v2, 0x19

    aput v1, v0, v2
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    const/4 v1, 0x7

    const/16 v2, 0x1c

    aput v1, v0, v2
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_67} :catch_67

    :catch_67
    return-void
.end method
