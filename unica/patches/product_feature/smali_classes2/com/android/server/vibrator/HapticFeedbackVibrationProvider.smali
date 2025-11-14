.class public final Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

.field public final mHapticTextHandleEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x22

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x41

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x52

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Lcom/android/server/vibrator/HapticFeedbackCustomization;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p2, 0x1110181

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    iput-object p3, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    iget-object p0, p3, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    const/16 p2, 0x2711

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    if-eqz p0, :cond_1b

    goto :goto_21

    :cond_1b
    const p0, 0x1070159

    invoke-static {p1, p0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    :goto_21
    const p0, 0x1050103

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getFloat(I)F

    return-void
.end method

.method public static getVibrationAttributes(III)Landroid/os/VibrationAttributes;
    .registers 4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x7

    if-eq p0, v0, :cond_23

    const/16 p2, 0xe

    if-eq p0, p2, :cond_20

    const/16 p2, 0xf

    if-eq p0, p2, :cond_20

    packed-switch p0, :pswitch_data_4a

    packed-switch p0, :pswitch_data_54

    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_2c

    :pswitch_17  #0x2714, 0x2715
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_2c

    :pswitch_1a  #0x2712, 0x2713
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_2c

    :pswitch_1d  #0x12, 0x13, 0x14
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_2c

    :cond_20
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_2c

    :cond_23
    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_2a

    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_2c

    :cond_2a
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :goto_2c
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    packed-switch p0, :pswitch_data_60

    goto :goto_38

    :pswitch_36  #0x12, 0x13, 0x14
    or-int/lit8 v0, v0, 0x1

    :goto_38
    if-nez v0, :cond_3b

    return-object p2

    :cond_3b
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x12
        :pswitch_1d  #00000012
        :pswitch_1d  #00000013
        :pswitch_1d  #00000014
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x2712
        :pswitch_1a  #00002712
        :pswitch_1a  #00002713
        :pswitch_17  #00002714
        :pswitch_17  #00002715
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x12
        :pswitch_36  #00000012
        :pswitch_36  #00000013
        :pswitch_36  #00000014
    .end packed-switch
.end method

.method public static getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;
    .registers 4

    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    sget v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    if-ne v0, v2, :cond_1b

    if-eqz p0, :cond_14

    const v0, 0xc3d4

    if-ne p0, v0, :cond_12

    goto :goto_14

    :cond_12
    move p0, v1

    goto :goto_5f

    :cond_14
    :goto_14
    const/16 p0, 0x64

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_5f

    :cond_1b
    if-eqz p0, :cond_5b

    if-eq p0, v2, :cond_54

    packed-switch p0, :pswitch_data_68

    packed-switch p0, :pswitch_data_7a

    packed-switch p0, :pswitch_data_8c

    packed-switch p0, :pswitch_data_9e

    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5f

    :pswitch_32  #0x18
    const/16 p0, 0x6d

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_5f

    :pswitch_39  #0x17, 0x19
    const/16 p0, 0x6c

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_5f

    :pswitch_40  #0x15, 0x16
    const/16 p0, 0x1b

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_5f

    :pswitch_47  #0x11, 0x2715
    const/4 p0, 0x5

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_5f

    :pswitch_4d  #0x4, 0x6, 0x7, 0x8, 0x9, 0xb, 0xd, 0x1a, 0x1b
    const/16 p0, 0x29

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_5f

    :cond_54
    :pswitch_54  #0xe
    const/16 p0, 0xe

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_5f

    :cond_5b
    :pswitch_5b  #0x3, 0x5, 0xc, 0xf, 0x10, 0x2713, 0x2714
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    :goto_5f
    if-eq p0, v1, :cond_66

    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_66
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_68
    .packed-switch 0x3
        :pswitch_5b  #00000003
        :pswitch_4d  #00000004
        :pswitch_5b  #00000005
        :pswitch_4d  #00000006
        :pswitch_4d  #00000007
        :pswitch_4d  #00000008
        :pswitch_4d  #00000009
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0xb
        :pswitch_4d  #0000000b
        :pswitch_5b  #0000000c
        :pswitch_4d  #0000000d
        :pswitch_54  #0000000e
        :pswitch_5b  #0000000f
        :pswitch_5b  #00000010
        :pswitch_47  #00000011
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x15
        :pswitch_40  #00000015
        :pswitch_40  #00000016
        :pswitch_39  #00000017
        :pswitch_32  #00000018
        :pswitch_39  #00000019
        :pswitch_4d  #0000001a
        :pswitch_4d  #0000001b
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x2713
        :pswitch_5b  #00002713
        :pswitch_5b  #00002714
        :pswitch_47  #00002715
    .end packed-switch
.end method
