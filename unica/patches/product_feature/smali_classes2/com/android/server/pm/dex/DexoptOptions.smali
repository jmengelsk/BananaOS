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
    .registers 10

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
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p2, -0xe70

    if-nez v0, :cond_12

    iput-object p3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    iput-object p5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return-void

    :cond_12
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
    .registers 3

    packed-switch p0, :pswitch_data_5e

    packed-switch p0, :pswitch_data_80

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid compilation reason "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12  #0x19
    const-string/jumbo p0, "labs"

    return-object p0

    :pswitch_16  #0x18
    const-string/jumbo p0, "install-repair"

    return-object p0

    :pswitch_1a  #0x16
    const-string/jumbo p0, "install-speg"

    return-object p0

    :pswitch_1e  #0x15
    const-string/jumbo p0, "install-spqr"

    return-object p0

    :pswitch_22  #0xd
    const-string/jumbo p0, "boot-after-mainline-update"

    return-object p0

    :pswitch_26  #0xc
    const-string/jumbo p0, "cmdline"

    return-object p0

    :pswitch_2a  #0xb
    const-string/jumbo p0, "inactive"

    return-object p0

    :pswitch_2e  #0x9, 0x17
    const-string/jumbo p0, "bg-dexopt"

    return-object p0

    :pswitch_32  #0x8
    const-string/jumbo p0, "install-bulk-secondary-downgraded"

    return-object p0

    :pswitch_36  #0x7
    const-string/jumbo p0, "install-bulk-downgraded"

    return-object p0

    :pswitch_3a  #0x6
    const-string/jumbo p0, "install-bulk-secondary"

    return-object p0

    :pswitch_3e  #0x5
    const-string/jumbo p0, "install-bulk"

    return-object p0

    :pswitch_42  #0x4
    const-string/jumbo p0, "install-fast"

    return-object p0

    :pswitch_46  #0x3
    const-string/jumbo p0, "install"

    return-object p0

    :pswitch_4a  #0x2, 0xa, 0xe
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ART Service unsupported compilation reason "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_56  #0x1
    const-string/jumbo p0, "boot-after-ota"

    return-object p0

    :pswitch_5a  #0x0
    const-string/jumbo p0, "first-boot"

    return-object p0

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5a  #00000000
        :pswitch_56  #00000001
        :pswitch_4a  #00000002
        :pswitch_46  #00000003
        :pswitch_42  #00000004
        :pswitch_3e  #00000005
        :pswitch_3a  #00000006
        :pswitch_36  #00000007
        :pswitch_32  #00000008
        :pswitch_2e  #00000009
        :pswitch_4a  #0000000a
        :pswitch_2a  #0000000b
        :pswitch_26  #0000000c
        :pswitch_22  #0000000d
        :pswitch_4a  #0000000e
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x15
        :pswitch_1e  #00000015
        :pswitch_1a  #00000016
        :pswitch_2e  #00000017
        :pswitch_16  #00000018
        :pswitch_12  #00000019
    .end packed-switch
.end method


# virtual methods
.method public final convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    if-nez v1, :cond_7d

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    if-nez v2, :cond_1d

    invoke-static {v3}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_1d

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DEXOPT_CHECK_FOR_PROFILES_UPDATES must be set with profile guided filter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_23

    or-int/lit8 p1, p1, 0x10

    :cond_23
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2a

    or-int/lit8 p1, p1, 0x2

    goto :goto_2c

    :cond_2a
    or-int/lit8 p1, p1, 0x1

    :goto_2c
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_32

    or-int/lit8 p1, p1, 0x8

    :cond_32
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_4e

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

    :cond_4e
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_63

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_59

    const/16 v0, 0x50

    goto :goto_65

    :cond_59
    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_60

    const/16 v0, 0x28

    goto :goto_65

    :cond_60
    const/16 v0, 0x3c

    goto :goto_65

    :cond_63
    const/16 v0, 0x64

    :goto_65
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

    :cond_7d
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
