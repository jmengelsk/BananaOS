.class public final Lcom/android/server/sepunion/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDefaultClearCoverHeight:I

.field public mDefaultClearCoverWidth:I

.field public mIsCoverAttached:Z

.field public mIsCoverVerified:Z


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, " Current CoverVerifier state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsCoverVerified="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mIsCoverAttached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mDefaultCoverType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, "  mDefaultCoverColor="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mDefaultSViewCoverWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultSViewCoverHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultMiniSViewCoverWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultMiniSViewCoverHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDefaultTypeOfCover()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    if-eqz p0, :cond_7

    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    if-eqz v0, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    if-eqz p0, :cond_7

    const/16 p0, 0xb

    return p0

    :cond_7
    return v1
.end method

.method public final getScreenSizeForClearCover()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    return-void

    :cond_0
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    return-void

    :cond_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    return-void
.end method

.method public final updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    const-string/jumbo v1, "factory"

    const-string/jumbo v2, "ro.factory.factory_binary"

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    sget-object p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    return-void

    :cond_0
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1, p2}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    iget p2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne p2, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    :cond_1
    const/16 v0, 0xff

    if-eq p2, v0, :cond_8

    if-eq p2, v5, :cond_2

    if-eq p2, v3, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    if-eq p2, v5, :cond_3

    if-eq p2, v3, :cond_3

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    :goto_1
    invoke-virtual {p1, v4}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    return-void

    :cond_4
    sget-object p2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    iget-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz p2, :cond_5

    const-string p2, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(ILjava/lang/String;)I

    move-result p2

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v4, v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(ILjava/lang/String;)I

    move-result v0

    const-string v6, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    invoke-static {v4, v6}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(ILjava/lang/String;)I

    move-result v6

    move v8, v0

    move v12, v6

    :goto_2
    move v7, p2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result p2

    move v8, v4

    move v12, v8

    goto :goto_2

    :goto_3
    if-eq v7, v5, :cond_6

    if-eq v7, v3, :cond_6

    move v9, v4

    goto :goto_4

    :cond_6
    iget p2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    move v9, p2

    :goto_4
    if-eq v7, v5, :cond_7

    if-eq v7, v3, :cond_7

    :goto_5
    move v10, v4

    goto :goto_6

    :cond_7
    iget v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    goto :goto_5

    :goto_6
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-boolean v11, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    :cond_8
    return-void
.end method

.method public final updateCoverVerification()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestVisibleRect:Landroid/graphics/Rect;

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v3, -0x1

    invoke-static {v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eq v3, v0, :cond_3

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateCoverVerification : mIsCoverVerified ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", change="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CoverManager_CoverVerifier"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    const-string v0, "CoverManager_CoverVerifier"

    if-nez p1, :cond_0

    const-string/jumbo p0, "updateCoverWindowSize(): CoverState is null"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/16 v4, 0x8

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v5

    if-eq v5, v4, :cond_2

    if-eq v5, v3, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateCoverWindowSize(): old window = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    const-string v5, " new window = "

    invoke-static {v4, v1, v5, v3, p0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    return-void
.end method
