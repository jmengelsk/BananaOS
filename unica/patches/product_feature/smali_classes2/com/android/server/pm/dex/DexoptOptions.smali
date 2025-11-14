.class public final Lcom/android/server/pm/dex/DexoptOptions;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCompilationReason:I

.field public final mCompilerFilter:Ljava/lang/String;

.field public final mFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p2, -0xe70

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    iput-object p5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid flags : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToArtServiceDexoptReason(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid compilation reason "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo p0, "labs"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "install-repair"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "install-speg"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "install-spqr"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "boot-after-mainline-update"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "cmdline"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "inactive"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "bg-dexopt"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "install-bulk-secondary-downgraded"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "install-bulk-downgraded"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "install-bulk-secondary"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "install-bulk"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "install-fast"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "install"

    return-object p0

    :pswitch_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ART Service unsupported compilation reason "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    const-string/jumbo p0, "boot-after-ota"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "first-boot"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-static {v3}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DEXOPT_CHECK_FOR_PROFILES_UPDATES must be set with profile guided filter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    or-int/lit8 p1, p1, 0x10

    :cond_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    or-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_3
    or-int/lit8 p1, p1, 0x1

    :goto_1
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_4

    or-int/lit8 p1, p1, 0x8

    :cond_4
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DEXOPT_INSTALL_WITH_DEX_METADATA_FILE not set in request to optimise "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - ART Service will unconditionally use a DM file if present."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexoptOptions"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_8

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_6

    const/16 v0, 0x50

    goto :goto_2

    :cond_6
    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_7

    const/16 v0, 0x28

    goto :goto_2

    :cond_7
    const/16 v0, 0x3c

    goto :goto_2

    :cond_8
    const/16 v0, 0x64

    :goto_2
    new-instance v1, Lcom/android/server/art/model/DexoptParams$Builder;

    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/art/model/DexoptParams$Builder;->setPriorityClass(I)Lcom/android/server/art/model/DexoptParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Request to optimize only split "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
