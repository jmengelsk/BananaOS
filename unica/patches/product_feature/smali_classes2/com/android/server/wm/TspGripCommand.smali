.class public final Lcom/android/server/wm/TspGripCommand;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final MIN_REJECT_ZONE_RATIO:F


# instance fields
.field public final mCommand:Ljava/lang/String;

.field public mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

.field public mLandBottomGripWidth:I

.field public mLandBottomRejectWidth:I

.field public mLandEdgeZone:I

.field public mLandTopGripWidth:I

.field public mLandTopRejectWidth:I

.field public mLandX1:I

.field public mPortEdgeZone:I

.field public mPortX1:I

.field public mPortX2:I

.field public mPortX3:I

.field public mPortY1:I

.field public mPortY2:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez v0, :cond_8

    const v0, 0x3be21965  # 0.0069f

    goto :goto_b

    :cond_8
    const v0, 0x3b656042  # 0.0035f

    :goto_b
    sput v0, Lcom/android/server/wm/TspGripCommand;->MIN_REJECT_ZONE_RATIO:F

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset()V

    const-string v0, "0.35%,0.35%,0,0,2.11%,0,0.22%,0.22%,1.32%,1.32%"

    const-string v1, "0.35%,0.35%,0,0,1.41%,0,0.22%,0.22%,0.88%,0.88%"

    packed-switch p1, :pswitch_data_4e

    :pswitch_10  #0xb, 0xc
    return-void

    :pswitch_11  #0xe
    const-string p1, "1.39%,1.39%,0%,0%,3.00%,0%,0%,0%,0%,0%"

    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    return-void

    :pswitch_19  #0xd
    const-string p1, "2.22%,2.22%,0%,0%,4.17%,0%,0%,0%,0%,0%"

    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    return-void

    :pswitch_1e  #0xa
    const-string p1, "0.69%,1.39%,30%,1.39%,4.17%,2.55%,0.66%,0.66%,1.97%,1.97%"

    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    return-void

    :pswitch_26  #0x7
    const-string p1, "0.69%,0.69%,30%,1.39%,2.78%,4.17%,0.66%,0.66%,1.97%,1.97%"

    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    return-void

    :pswitch_2e  #0x6, 0x9
    iput-object v1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    return-void

    :pswitch_34  #0x5, 0x8
    iput-object v1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    return-void

    :pswitch_3a  #0x4
    const-string p1, "0.69%,1.39%,30%,1.39%,4.17%,4.17%,0.66%,0.66%,1.97%,1.97%"

    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/TspGripCommand;->reset3rdParty()V

    return-void

    :pswitch_42  #0x3
    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    return-void

    :pswitch_45  #0x2
    iput-object v0, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    return-void

    :pswitch_48  #0x1
    const-string p1, "0.69%,2.22%,30%,1.39%,4.17%,4.17%,1.05%,1.05%,1.97%,1.97%"

    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_45  #00000002
        :pswitch_42  #00000003
        :pswitch_3a  #00000004
        :pswitch_34  #00000005
        :pswitch_2e  #00000006
        :pswitch_26  #00000007
        :pswitch_34  #00000008
        :pswitch_2e  #00000009
        :pswitch_1e  #0000000a
        :pswitch_10  #0000000b
        :pswitch_10  #0000000c
        :pswitch_19  #0000000d
        :pswitch_11  #0000000e
    .end packed-switch
.end method

.method public static convertToInt(IIILjava/lang/String;)I
    .registers 7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2a

    int-to-float p0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x42c80000  # 100.0f

    div-float/2addr p1, p2

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_2a
    const-string/jumbo v2, "px"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    int-to-float p1, p1

    mul-float/2addr p2, p1

    int-to-float p0, p0

    div-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_45
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ge p1, p2, :cond_4d

    mul-int/2addr p0, p1

    div-int/2addr p0, p2

    :cond_4d
    return p0
.end method

.method public static getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I
    .registers 7

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c

    if-ge p4, p5, :cond_b

    mul-int/2addr v0, p4

    div-int/2addr v0, p5

    :cond_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    return p2

    :cond_17
    invoke-static {p3, p4, p5, p0}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final convertToIntHeight(Ljava/lang/String;)I
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iget p0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    const/16 v1, 0xa00

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final convertToIntLandscapeHeight(Ljava/lang/String;)I
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iget p0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    const/16 v1, 0x5a0

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final convertToIntWidth(Ljava/lang/String;)I
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iget p0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    const/16 v1, 0x5a0

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)V
    .registers 14

    if-eqz p2, :cond_1ab

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_124

    const-string/jumbo v0, "deadzone_v3"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget v3, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_124

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :try_start_21
    aget-object v0, p1, v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    move-object v0, v1

    :goto_2b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_31} :catch_11d

    const-string v0, "100%"

    const/4 v4, 0x3

    if-lt p2, v4, :cond_58

    :try_start_36
    aget-object v2, p1, v2

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_40

    :cond_3f
    move-object v2, v1

    :goto_40
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    const/4 v2, 0x2

    aget-object v2, p1, v2

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_51

    :cond_50
    move-object v2, v1

    :goto_51
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    goto :goto_5e

    :cond_58
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    :goto_5e
    const/4 v2, 0x5

    if-lt p2, v2, :cond_87

    aget-object v0, p1, v4

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6b

    :cond_6a
    move-object v0, v1

    :goto_6b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const/4 v0, 0x4

    aget-object v0, p1, v0

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_7c

    :cond_7b
    move-object v0, v1

    :goto_7c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    if-lt v0, v4, :cond_8d

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    goto :goto_8d

    :cond_87
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    :cond_8d
    :goto_8d
    const/4 v0, 0x6

    if-lt p2, v0, :cond_a0

    aget-object v2, p1, v2

    if-eqz v2, :cond_99

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_9a

    :cond_99
    move-object v2, v1

    :goto_9a
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    :cond_a0
    const/4 v2, 0x7

    if-lt p2, v2, :cond_b3

    aget-object v0, p1, v0

    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_ad

    :cond_ac
    move-object v0, v1

    :goto_ad
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    :cond_b3
    iget v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const/16 v0, 0x8

    if-lt p2, v0, :cond_cb

    aget-object v2, p1, v2

    if-eqz v2, :cond_c4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_c5

    :cond_c4
    move-object v2, v1

    :goto_c5
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    :cond_cb
    const/16 v2, 0x9

    if-lt p2, v2, :cond_df

    aget-object v0, p1, v0

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    :cond_d8
    move-object v0, v1

    :goto_d9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    :cond_df
    const/16 v0, 0xa

    if-lt p2, v0, :cond_f3

    aget-object v2, p1, v2

    if-eqz v2, :cond_ec

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_ed

    :cond_ec
    move-object v2, v1

    :goto_ed
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    :cond_f3
    const/16 v2, 0xb

    if-lt p2, v2, :cond_107

    aget-object v0, p1, v0

    if-eqz v0, :cond_100

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_101

    :cond_100
    move-object v0, v1

    :goto_101
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    :cond_107
    const/16 v0, 0xc

    if-lt p2, v0, :cond_119

    aget-object p1, p1, v2

    if-eqz p1, :cond_113

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_113
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    :cond_119
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(I)V
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_11c} :catch_11d

    return-void

    :catch_11d
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1ab

    :cond_124
    const-string/jumbo v0, "deadzone_v2"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_133

    goto/16 :goto_1ab

    :cond_133
    iget v4, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iget v8, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iget v5, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iget v9, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    const/16 v6, 0x5a0

    const-string/jumbo v2, "dead_zone_port_x1"

    const/4 v3, -0x1

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p1

    const-string/jumbo v2, "dead_zone_port_x2"

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p2

    move v0, v5

    const/4 v2, -0x1

    if-eq p1, v2, :cond_156

    if-ne p2, v2, :cond_156

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    goto :goto_15a

    :cond_156
    if-eq p1, v2, :cond_15a

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    :cond_15a
    :goto_15a
    if-eq p2, v2, :cond_15e

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    :cond_15e
    iget v7, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    const/16 v10, 0xa00

    const-string/jumbo v6, "dead_zone_port_y1"

    move-object v5, v1

    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    const-string/jumbo p1, "dead_zone_port_real_y1"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_179

    mul-int/2addr v9, p1

    div-int/2addr v9, v8

    iput v9, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    :cond_179
    iget v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    const/16 v6, 0x5a0

    const-string/jumbo v2, "dead_zone_land_x1"

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    iget v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    const-string/jumbo v2, "edge_zone_width"

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const-string/jumbo v2, "edge_zone_land"

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    iget v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    const-string/jumbo v2, "edge_zone_port"

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {p0, v5}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(I)V

    :cond_1ab
    :goto_1ab
    return-void
.end method

.method public final parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z
    .registers 12

    iput-object p1, p0, Lcom/android/server/wm/TspGripCommand;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/server/wm/TspGripCommand;->mCommand:Ljava/lang/String;

    :cond_6
    iget v0, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iget v1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iget p1, p1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10b

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v2, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v2, v4, :cond_31

    :try_start_1e
    aget-object p2, p2, v3

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_26
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    goto/16 :goto_ef

    :catch_2e
    move-exception p1

    goto/16 :goto_102

    :cond_31
    aget-object v3, p2, v3

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    :cond_3a
    move-object v3, v5

    :goto_3b
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_65

    aget-object v6, p2, v4

    if-eqz v6, :cond_4d

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_4e

    :cond_4d
    move-object v6, v5

    :goto_4e
    const/4 v7, 0x2

    aget-object v7, p2, v7

    if-eqz v7, :cond_58

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_59

    :cond_58
    move-object v7, v5

    :goto_59
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    invoke-virtual {p0, v7}, Lcom/android/server/wm/TspGripCommand;->convertToIntHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    :cond_65
    const/4 v6, 0x4

    if-lt v2, v6, :cond_78

    aget-object v3, p2, v3

    if-eqz v3, :cond_71

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_72

    :cond_71
    move-object v3, v5

    :goto_72
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    :cond_78
    const/4 v3, 0x5

    if-lt v2, v3, :cond_8b

    aget-object v6, p2, v6

    if-eqz v6, :cond_84

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_85

    :cond_84
    move-object v6, v5

    :goto_85
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    :cond_8b
    iget v6, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const/4 v6, 0x6

    if-lt v2, v6, :cond_a2

    aget-object v3, p2, v3

    if-eqz v3, :cond_9b

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_9c

    :cond_9b
    move-object v3, v5

    :goto_9c
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntWidth(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    :cond_a2
    const/4 v3, 0x7

    if-lt v2, v3, :cond_b5

    aget-object v6, p2, v6

    if-eqz v6, :cond_ae

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_af

    :cond_ae
    move-object v6, v5

    :goto_af
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    :cond_b5
    const/16 v6, 0x8

    if-lt v2, v6, :cond_c9

    aget-object v3, p2, v3

    if-eqz v3, :cond_c2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_c3

    :cond_c2
    move-object v3, v5

    :goto_c3
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    :cond_c9
    const/16 v3, 0x9

    if-lt v2, v3, :cond_dd

    aget-object v6, p2, v6

    if-eqz v6, :cond_d6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_d7

    :cond_d6
    move-object v6, v5

    :goto_d7
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    :cond_dd
    const/16 v6, 0xa

    if-lt v2, v6, :cond_ef

    aget-object p2, p2, v3

    if-eqz p2, :cond_e9

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_e9
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TspGripCommand;->convertToIntLandscapeHeight(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    :cond_ef
    :goto_ef
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz p2, :cond_105

    iget p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    iput p2, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const-string p2, "100%"

    const/16 v2, 0xa00

    invoke-static {v0, p1, v2, p2}, Lcom/android/server/wm/TspGripCommand;->convertToInt(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I
    :try_end_101
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_101} :catch_2e

    goto :goto_105

    :goto_102
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_105
    :goto_105
    if-eqz p3, :cond_10a

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TspGripCommand;->setMinimumValue(I)V

    :cond_10a
    return v4

    :cond_10b
    return v3
.end method

.method public final reset()V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const/16 v1, 0x300

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    const/16 v1, 0xa00

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    return-void
.end method

.method public final reset3rdParty()V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    iput v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public final set(Lcom/android/server/wm/TspGripCommand;)V
    .registers 3

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz v0, :cond_1c

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    :cond_1c
    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    iget v0, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    iput v0, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    iget p1, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    return-void
.end method

.method public final setMinimumValue(I)V
    .registers 3

    int-to-float p1, p1

    sget v0, Lcom/android/server/wm/TspGripCommand;->MIN_REJECT_ZONE_RATIO:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    if-ge v0, p1, :cond_11

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    :cond_11
    iget v0, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    if-ge v0, p1, :cond_17

    iput p1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    :cond_17
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "portX1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portX2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portX3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portY1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portY2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", landX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", landEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLandTopRejectWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLandBottomRejectWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLandTopGripWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLandBottomGripWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
