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
    .locals 1

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
    .locals 0

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

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x1070159

    invoke-static {p1, p0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    :goto_0
    const p0, 0x1050103

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getFloat(I)F

    return-void
.end method

.method public static getVibrationAttributes(III)Landroid/os/VibrationAttributes;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 p2, 0xe

    if-eq p0, p2, :cond_0

    const/16 p2, 0xf

    if-eq p0, p2, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    :pswitch_0
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    :pswitch_1
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    :pswitch_2
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    :cond_1
    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_2

    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :goto_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    or-int/lit8 v0, v0, 0x1

    :goto_2
    if-nez v0, :cond_4

    return-object p2

    :cond_4
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    if-ne v0, v2, :cond_2

    if-eqz p0, :cond_1

    const v0, 0xc3d4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x64

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    invoke-static {p0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x6d

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_1

    :pswitch_1
    const/16 p0, 0x6c

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_1

    :pswitch_2
    const/16 p0, 0x1b

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_1

    :pswitch_3
    const/4 p0, 0x5

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_1

    :pswitch_4
    const/16 p0, 0x29

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_1

    :cond_3
    :pswitch_5
    const/16 p0, 0xe

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_1

    :cond_4
    :pswitch_6
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    :goto_1
    if-eq p0, v1, :cond_5

    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2713
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
