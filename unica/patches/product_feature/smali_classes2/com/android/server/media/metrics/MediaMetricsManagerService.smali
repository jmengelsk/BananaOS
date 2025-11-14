.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

.field public static final PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;


# instance fields
.field public mAllowlist:Ljava/util/List;

.field public mBlockList:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mMode:Ljava/lang/Integer;

.field public mNoUidAllowlist:Ljava/util/List;

.field public mNoUidBlocklist:Ljava/util/List;

.field public final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public static -$$Nest$smgetBucketedDurationMillis(J)J
    .registers 8

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_43

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_d

    goto :goto_43

    :cond_d
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    long-to-double p0, p0

    const-wide v0, 0x40ed4c0000000000L  # 60000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr p0, v4

    const-wide/high16 v4, 0x4020000000000000L  # 8.0

    add-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p1, 0xd

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, -0x8

    int-to-double p0, p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0

    :cond_43
    :goto_43
    return-wide v0
.end method

.method public static -$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const-string p0, ""

    return-object p0
.end method

.method public static -$$Nest$smgetVideoFrameRateEnum(F)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_44

    const/16 v0, 0x19

    if-eq p0, v0, :cond_41

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x32

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_38

    const/16 v0, 0x78

    if-eq p0, v0, :cond_35

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_32

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x3c0

    if-eq p0, v0, :cond_2a

    const/4 p0, 0x0

    return p0

    :cond_2a
    const p0, 0x17700

    return p0

    :cond_2e
    const p0, 0xbb80

    return p0

    :cond_32
    const/16 p0, 0x5dc0

    return p0

    :cond_35
    const/16 p0, 0x2ee0

    return p0

    :cond_38
    const/16 p0, 0x1770

    return p0

    :cond_3b
    const/16 p0, 0x1388

    return p0

    :cond_3e
    const/16 p0, 0xbb8

    return p0

    :cond_41
    const/16 p0, 0x9c4

    return p0

    :cond_44
    const/16 p0, 0x960

    return p0
.end method

.method public static -$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string/jumbo v0, "video/dolby-vision"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p0, 0x5

    return p0

    :cond_f
    invoke-static {p0}, Landroid/hardware/DataSpace;->getStandard(I)I

    move-result p1

    invoke-static {p0}, Landroid/hardware/DataSpace;->getTransfer(I)I

    move-result p0

    const/high16 v0, 0x60000

    if-ne p1, v0, :cond_21

    const/high16 v1, 0x2000000

    if-ne p0, v1, :cond_21

    const/4 p0, 0x2

    return p0

    :cond_21
    if-ne p1, v0, :cond_29

    const/high16 p1, 0x1c00000

    if-ne p0, p1, :cond_29

    const/4 p0, 0x3

    return p0

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static -$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I
    .registers 4

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/16 v1, 0x160

    const/16 v2, 0x280

    if-ne v0, v1, :cond_13

    if-ne p0, v2, :cond_13

    const/16 p0, 0xe4

    return p0

    :cond_13
    const/16 v1, 0x168

    if-ne v0, v1, :cond_1c

    if-ne p0, v2, :cond_1c

    const/16 p0, 0xe9

    return p0

    :cond_1c
    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_25

    if-ne p0, v2, :cond_25

    const/16 p0, 0x137

    return p0

    :cond_25
    if-ne v0, v1, :cond_2e

    const/16 v1, 0x356

    if-ne p0, v1, :cond_2e

    const/16 p0, 0x19e

    return p0

    :cond_2e
    const/16 v1, 0x21c

    if-ne v0, v1, :cond_39

    const/16 v1, 0x3c0

    if-ne p0, v1, :cond_39

    const/16 p0, 0x20c

    return p0

    :cond_39
    const/16 v1, 0x240

    if-ne v0, v1, :cond_44

    const/16 v1, 0x400

    if-ne p0, v1, :cond_44

    const/16 p0, 0x26d

    return p0

    :cond_44
    const/16 v1, 0x500

    if-ne v0, v1, :cond_4f

    const/16 v1, 0x2d0

    if-ne p0, v1, :cond_4f

    const/16 p0, 0x3a3

    return p0

    :cond_4f
    const/16 v1, 0x780

    if-ne v0, v1, :cond_5a

    const/16 v1, 0x438

    if-ne p0, v1, :cond_5a

    const/16 p0, 0x82f

    return p0

    :cond_5a
    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_65

    const/16 v1, 0xa00

    if-ne p0, v1, :cond_65

    const/16 p0, 0xe8c

    return p0

    :cond_65
    const/16 v1, 0xf00

    if-ne v0, v1, :cond_70

    const/16 v1, 0x870

    if-ne p0, v1, :cond_70

    const/16 p0, 0x20ba

    return p0

    :cond_70
    const/16 v1, 0x1e00

    if-ne v0, v1, :cond_7c

    const/16 v0, 0x10e0

    if-ne p0, v0, :cond_7c

    const p0, 0x82e6

    return p0

    :cond_7c
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/metrics/MediaItemInfo$Builder;

    invoke-direct {v0}, Landroid/media/metrics/MediaItemInfo$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo$Builder;->build()Landroid/media/metrics/MediaItemInfo;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    const-string/jumbo v0, "androidx\\.media3:media3-(transformer|muxer):[\\d.]+(-(alpha|beta|rc)\\d\\d)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public static getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_278

    goto/16 :goto_273

    :sswitch_16
    const-string/jumbo v2, "video/x-matroska"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_273

    :cond_21
    const/16 v0, 0x29

    goto/16 :goto_273

    :sswitch_25
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_273

    :cond_30
    const/16 v0, 0x28

    goto/16 :goto_273

    :sswitch_34
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_273

    :cond_3f
    const/16 v0, 0x27

    goto/16 :goto_273

    :sswitch_43
    const-string/jumbo v2, "audio/true-hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto/16 :goto_273

    :cond_4e
    const/16 v0, 0x26

    goto/16 :goto_273

    :sswitch_52
    const-string/jumbo v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto/16 :goto_273

    :cond_5d
    const/16 v0, 0x25

    goto/16 :goto_273

    :sswitch_61
    const-string/jumbo v2, "audio/webm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    goto/16 :goto_273

    :cond_6c
    const/16 v0, 0x24

    goto/16 :goto_273

    :sswitch_70
    const-string/jumbo v2, "audio/opus"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto/16 :goto_273

    :cond_7b
    const/16 v0, 0x23

    goto/16 :goto_273

    :sswitch_7f
    const-string/jumbo v2, "audio/mpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    goto/16 :goto_273

    :cond_8a
    const/16 v0, 0x22

    goto/16 :goto_273

    :sswitch_8e
    const-string/jumbo v2, "audio/midi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    goto/16 :goto_273

    :cond_99
    const/16 v0, 0x21

    goto/16 :goto_273

    :sswitch_9d
    const-string/jumbo v2, "audio/flac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    goto/16 :goto_273

    :cond_a8
    const/16 v0, 0x20

    goto/16 :goto_273

    :sswitch_ac
    const-string/jumbo v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    goto/16 :goto_273

    :cond_b7
    const/16 v0, 0x1f

    goto/16 :goto_273

    :sswitch_bb
    const-string/jumbo v2, "video/raw"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c6

    goto/16 :goto_273

    :cond_c6
    const/16 v0, 0x1e

    goto/16 :goto_273

    :sswitch_ca
    const-string/jumbo v2, "video/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    goto/16 :goto_273

    :cond_d5
    const/16 v0, 0x1d

    goto/16 :goto_273

    :sswitch_d9
    const-string/jumbo v2, "video/avc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    goto/16 :goto_273

    :cond_e4
    const/16 v0, 0x1c

    goto/16 :goto_273

    :sswitch_e8
    const-string/jumbo v2, "video/mp4v-es"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    goto/16 :goto_273

    :cond_f3
    const/16 v0, 0x1b

    goto/16 :goto_273

    :sswitch_f7
    const-string/jumbo v2, "audio/wav"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    goto/16 :goto_273

    :cond_102
    const/16 v0, 0x1a

    goto/16 :goto_273

    :sswitch_106
    const-string/jumbo v2, "audio/raw"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    goto/16 :goto_273

    :cond_111
    const/16 v0, 0x19

    goto/16 :goto_273

    :sswitch_115
    const-string/jumbo v2, "audio/ogg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_120

    goto/16 :goto_273

    :cond_120
    const/16 v0, 0x18

    goto/16 :goto_273

    :sswitch_124
    const-string/jumbo v2, "audio/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12f

    goto/16 :goto_273

    :cond_12f
    const/16 v0, 0x17

    goto/16 :goto_273

    :sswitch_133
    const-string/jumbo v2, "audio/av4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13e

    goto/16 :goto_273

    :cond_13e
    const/16 v0, 0x16

    goto/16 :goto_273

    :sswitch_142
    const-string/jumbo v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14d

    goto/16 :goto_273

    :cond_14d
    const/16 v0, 0x15

    goto/16 :goto_273

    :sswitch_151
    const-string/jumbo v2, "application/dash+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15c

    goto/16 :goto_273

    :cond_15c
    const/16 v0, 0x14

    goto/16 :goto_273

    :sswitch_160
    const-string/jumbo v2, "video/x-flv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16b

    goto/16 :goto_273

    :cond_16b
    const/16 v0, 0x13

    goto/16 :goto_273

    :sswitch_16f
    const-string/jumbo v2, "application/webm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17a

    goto/16 :goto_273

    :cond_17a
    const/16 v0, 0x12

    goto/16 :goto_273

    :sswitch_17e
    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_189

    goto/16 :goto_273

    :cond_189
    const/16 v0, 0x11

    goto/16 :goto_273

    :sswitch_18d
    const-string/jumbo v2, "application/vnd.ms-sstr+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_198

    goto/16 :goto_273

    :cond_198
    const/16 v0, 0x10

    goto/16 :goto_273

    :sswitch_19c
    const-string/jumbo v2, "application/x-matroska"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a7

    goto/16 :goto_273

    :cond_1a7
    const/16 v0, 0xf

    goto/16 :goto_273

    :sswitch_1ab
    const-string/jumbo v2, "audio/x-matroska"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b6

    goto/16 :goto_273

    :cond_1b6
    const/16 v0, 0xe

    goto/16 :goto_273

    :sswitch_1ba
    const-string/jumbo v2, "audio/mpeg-L2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c5

    goto/16 :goto_273

    :cond_1c5
    const/16 v0, 0xd

    goto/16 :goto_273

    :sswitch_1c9
    const-string/jumbo v2, "audio/mpeg-L1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d4

    goto/16 :goto_273

    :cond_1d4
    const/16 v0, 0xc

    goto/16 :goto_273

    :sswitch_1d8
    const-string/jumbo v2, "application/x-mpegURL"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e3

    goto/16 :goto_273

    :cond_1e3
    const/16 v0, 0xb

    goto/16 :goto_273

    :sswitch_1e7
    const-string/jumbo v2, "audio/vorbis"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f2

    goto/16 :goto_273

    :cond_1f2
    const/16 v0, 0xa

    goto/16 :goto_273

    :sswitch_1f6
    const-string/jumbo v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_201

    goto/16 :goto_273

    :cond_201
    const/16 v0, 0x9

    goto/16 :goto_273

    :sswitch_205
    const-string/jumbo v2, "application/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_210

    goto/16 :goto_273

    :cond_210
    const/16 v0, 0x8

    goto/16 :goto_273

    :sswitch_214
    const-string/jumbo v2, "video/webm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21e

    goto :goto_273

    :cond_21e
    const/4 v0, 0x7

    goto :goto_273

    :sswitch_220
    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22a

    goto :goto_273

    :cond_22a
    const/4 v0, 0x6

    goto :goto_273

    :sswitch_22c
    const-string/jumbo v2, "video/mp2t"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_236

    goto :goto_273

    :cond_236
    const/4 v0, 0x5

    goto :goto_273

    :sswitch_238
    const-string/jumbo v2, "video/hevc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_242

    goto :goto_273

    :cond_242
    const/4 v0, 0x4

    goto :goto_273

    :sswitch_244
    const-string/jumbo v2, "video/av01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24e

    goto :goto_273

    :cond_24e
    const/4 v0, 0x3

    goto :goto_273

    :sswitch_250
    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25a

    goto :goto_273

    :cond_25a
    const/4 v0, 0x2

    goto :goto_273

    :sswitch_25c
    const-string/jumbo v2, "video/dolby-vision"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_266

    goto :goto_273

    :cond_266
    const/4 v0, 0x1

    goto :goto_273

    :sswitch_268
    const-string/jumbo v2, "audio/eac3-joc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_272

    goto :goto_273

    :cond_272
    const/4 v0, 0x0

    :goto_273
    packed-switch v0, :pswitch_data_322

    return-object v1

    :pswitch_277  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29
    return-object p0

    :sswitch_data_278
    .sparse-switch
        -0x7e929daa -> :sswitch_268
        -0x6e5534ef -> :sswitch_25c
        -0x63306f58 -> :sswitch_250
        -0x631b55f6 -> :sswitch_244
        -0x63185e82 -> :sswitch_238
        -0x6315f787 -> :sswitch_22c
        -0x6315f167 -> :sswitch_220
        -0x63118f53 -> :sswitch_214
        -0x4a681e4e -> :sswitch_205
        -0x41455b98 -> :sswitch_1f6
        -0x3bd43e14 -> :sswitch_1e7
        -0x3a5c4caa -> :sswitch_1d8
        -0x19cc928c -> :sswitch_1c9
        -0x19cc928b -> :sswitch_1ba
        -0x17118226 -> :sswitch_1ab
        -0x106abbe0 -> :sswitch_19c
        -0x957ced0 -> :sswitch_18d
        -0x3313c2e -> :sswitch_17e
        -0x2974308 -> :sswitch_16f
        0xd45707 -> :sswitch_160
        0x3d3887d -> :sswitch_151
        0xb269698 -> :sswitch_142
        0xb2698e6 -> :sswitch_133
        0xb26c538 -> :sswitch_124
        0xb26cbd6 -> :sswitch_115
        0xb26d66f -> :sswitch_106
        0xb26e933 -> :sswitch_f7
        0x46cdc642 -> :sswitch_e8
        0x4f62373a -> :sswitch_d9
        0x4f62635d -> :sswitch_ca
        0x4f627494 -> :sswitch_bb
        0x59ae0c65 -> :sswitch_ac
        0x59aeaa01 -> :sswitch_9d
        0x59b1cdba -> :sswitch_8e
        0x59b1e81e -> :sswitch_7f
        0x59b2d2d8 -> :sswitch_70
        0x59b64a32 -> :sswitch_61
        0x59c2dc42 -> :sswitch_52
        0x5cc95062 -> :sswitch_43
        0x5f50bed8 -> :sswitch_34
        0x5f50bed9 -> :sswitch_25
        0x79909c15 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_322
    .packed-switch 0x0
        :pswitch_277  #00000000
        :pswitch_277  #00000001
        :pswitch_277  #00000002
        :pswitch_277  #00000003
        :pswitch_277  #00000004
        :pswitch_277  #00000005
        :pswitch_277  #00000006
        :pswitch_277  #00000007
        :pswitch_277  #00000008
        :pswitch_277  #00000009
        :pswitch_277  #0000000a
        :pswitch_277  #0000000b
        :pswitch_277  #0000000c
        :pswitch_277  #0000000d
        :pswitch_277  #0000000e
        :pswitch_277  #0000000f
        :pswitch_277  #00000010
        :pswitch_277  #00000011
        :pswitch_277  #00000012
        :pswitch_277  #00000013
        :pswitch_277  #00000014
        :pswitch_277  #00000015
        :pswitch_277  #00000016
        :pswitch_277  #00000017
        :pswitch_277  #00000018
        :pswitch_277  #00000019
        :pswitch_277  #0000001a
        :pswitch_277  #0000001b
        :pswitch_277  #0000001c
        :pswitch_277  #0000001d
        :pswitch_277  #0000001e
        :pswitch_277  #0000001f
        :pswitch_277  #00000020
        :pswitch_277  #00000021
        :pswitch_277  #00000022
        :pswitch_277  #00000023
        :pswitch_277  #00000024
        :pswitch_277  #00000025
        :pswitch_277  #00000026
        :pswitch_277  #00000027
        :pswitch_277  #00000028
        :pswitch_277  #00000029
    .end packed-switch
.end method

.method public static getListLocked(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    const-string/jumbo v0, "failed_to_get"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_7
    const-string/jumbo v3, "media"

    invoke-static {v3, p0, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_2f

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "failed to get "

    const-string v1, " from DeviceConfig"

    const-string/jumbo v2, "MediaMetricsManagerService"

    invoke-static {v0, p0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_24
    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_2f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method


# virtual methods
.method public final onStart()V
    .registers 3

    new-instance v0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    const-string/jumbo v1, "media_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    const-string/jumbo p0, "media"

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
