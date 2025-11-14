.class public abstract Lcom/android/server/policy/KeyCustomizationConstants;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ALL_KEYCODE_TYPE:[I

.field public static final EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

.field public static final NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

.field public static final SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

.field public static final SUPPORT_PRESS_TYPE_ALL:[I

.field public static final SUPPORT_PRESS_TYPE_BASIC:[I

.field public static final SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

.field public static final VOLD_DECRYPT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    const/16 v0, 0x20

    const/16 v1, 0x40

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_50

    sput-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v6

    sput-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    filled-new-array {v1, v0, v5, v4, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    filled-new-array {v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    const-string/jumbo v0, "com.sprint.sdcplus"

    const-string/jumbo v1, "com.bell.ptt"

    const-string/jumbo v2, "com.verizon.pushtotalkplus"

    const-string/jumbo v3, "com.att.eptt"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

    return-void

    nop

    :array_50
    .array-data 4
        0x3
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data

    :array_60
    .array-data 4
        0x1a
        0xbb
        0x3
        0x4
        0x18
        0x19
        0x3f7
        0x437
        0x4f
        0x445
        0x446
        0x447
        0x448
    .end array-data
.end method

.method public static isAllowId(I)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_25

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_25

    const/16 v0, 0x32

    if-eq p0, v0, :cond_25

    const/16 v0, 0x3b7

    if-eq p0, v0, :cond_25

    const/16 v0, 0x44f

    if-eq p0, v0, :cond_25

    const/16 v0, 0x450

    if-eq p0, v0, :cond_25

    const/16 v0, 0x452

    if-eq p0, v0, :cond_25

    const/16 v0, 0x453

    if-eq p0, v0, :cond_25

    packed-switch p0, :pswitch_data_28

    const/4 p0, 0x0

    return p0

    :cond_25
    :pswitch_25  #0x7d1, 0x7d2, 0x7d3
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_28
    .packed-switch 0x7d1
        :pswitch_25  #000007d1
        :pswitch_25  #000007d2
        :pswitch_25  #000007d3
    .end packed-switch
.end method

.method public static isAllowIntentAction(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo v1, "android.intent.action"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method
