.class public abstract Lcom/android/server/wm/InputConfigAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final INPUT_FEATURE_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

.field public static final INPUT_FEATURE_TO_CONFIG_MASK:I

.field public static final LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

.field public static final LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(II)V

    new-instance v1, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v2, 0x2

    const/16 v3, 0x800

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(II)V

    new-instance v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/16 v3, 0x4000

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(II)V

    new-instance v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/16 v5, 0x8

    const/high16 v6, 0x40000

    invoke-direct {v3, v5, v6}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(II)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_28
    if-ge v2, v4, :cond_32

    aget-object v7, v0, v2

    iget v7, v7, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    or-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_32
    sput v3, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    new-instance v0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v5}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(II)V

    new-instance v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/16 v3, 0x200

    invoke-direct {v2, v6, v3}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(II)V

    new-instance v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/high16 v4, 0x20000000

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(II)V

    filled-new-array {v0, v2, v3}, [Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    move v2, v1

    :goto_52
    const/4 v3, 0x3

    if-ge v1, v3, :cond_5d

    aget-object v3, v0, v1

    iget v3, v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_5d
    sput v2, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    return-void
.end method

.method public static applyMapping(I[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;)I
    .registers 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_18

    aget-object v4, p1, v2

    iget v5, v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mFlag:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_10

    :cond_f
    move v5, v1

    :goto_10
    if-eqz v5, :cond_15

    iget v4, v4, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    or-int/2addr v3, v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_18
    return v3
.end method

.method public static getInputConfigFromWindowParams(III)I
    .registers 4

    const/16 v0, 0x7dd

    if-ne p0, v0, :cond_7

    const/16 p0, 0x40

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    sget-object v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    invoke-static {p1, v0}, Lcom/android/server/wm/InputConfigAdapter;->applyMapping(I[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;)I

    move-result p1

    or-int/2addr p0, p1

    sget-object p1, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MAP:[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    invoke-static {p2, p1}, Lcom/android/server/wm/InputConfigAdapter;->applyMapping(I[Lcom/android/server/wm/InputConfigAdapter$FlagMapping;)I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method
