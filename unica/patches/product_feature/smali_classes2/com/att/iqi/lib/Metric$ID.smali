.class public final Lcom/att/iqi/lib/Metric$ID;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIDPattern:Ljava/lang/String; = "[A-Z0-9_]{4}"

.field private static final sPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mID:I

.field private final mStringID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "[A-Z0-9_]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/lib/Metric$ID;->sPattern:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/att/iqi/lib/Metric$ID$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/Metric$ID$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/Metric$ID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    invoke-static {p1}, Lcom/att/iqi/lib/Metric$ID;->idFromInt(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric$ID;->isInvalidId(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Metric ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric$ID;->isInvalidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iput-object p1, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    invoke-static {p1}, Lcom/att/iqi/lib/Metric$ID;->idFromString(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Metric ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static idFromInt(I)Ljava/lang/String;
    .registers 6

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    const/4 v3, 0x4

    new-array v3, v3, [C

    const/4 v4, 0x0

    aput-char v0, v3, v4

    const/4 v0, 0x1

    aput-char v1, v3, v0

    const/4 v0, 0x2

    aput-char v2, v3, v0

    const/4 v0, 0x3

    aput-char p0, v3, v0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static idFromString(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private isInvalidId(Ljava/lang/String;)Z
    .registers 2

    sget-object p0, Lcom/att/iqi/lib/Metric$ID;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public asInt()I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    return p0
.end method

.method public asString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_20

    check-cast p1, Lcom/att/iqi/lib/Metric$ID;

    iget v1, p1, Lcom/att/iqi/lib/Metric$ID;->mID:I

    iget v2, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    if-ne v1, v2, :cond_20

    iget-object p1, p1, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    const/16 v0, 0xd15

    add-int/2addr v0, p0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/Metric$ID;->mID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/att/iqi/lib/Metric$ID;->mStringID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
