.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final HexDecimalTable:[Ljava/lang/String;

.field public final chip_id:[B

.field public final color:I

.field public final id:Ljava/lang/String;

.field public final model:I

.field public final reserved:B

.field public final serial:Ljava/lang/String;

.field public final smapp:I

.field public type:I

.field public final url:I

.field public final valid:Z

.field public final year:I


# direct methods
.method public constructor <init>([B)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x17

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    const/16 v3, 0xe

    new-array v4, v3, [B

    const/16 v5, 0x9

    new-array v6, v5, [B

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    const-string/jumbo v40, "Z"

    const-string v41, "I"

    const-string v8, "0"

    const-string v9, "1"

    const-string v10, "2"

    const-string v11, "3"

    const-string v12, "4"

    const-string v13, "5"

    const-string v14, "6"

    const-string v15, "7"

    const-string v16, "8"

    const-string v17, "9"

    const-string v18, "A"

    const-string v19, "B"

    const-string v20, "C"

    const-string v21, "D"

    const-string v22, "E"

    const-string v23, "F"

    const-string v24, "G"

    const-string v25, "H"

    const-string v26, "J"

    const-string v27, "K"

    const-string v28, "L"

    const-string/jumbo v29, "M"

    const-string/jumbo v30, "N"

    const-string/jumbo v31, "P"

    const-string/jumbo v32, "Q"

    const-string/jumbo v33, "R"

    const-string/jumbo v34, "S"

    const-string/jumbo v35, "T"

    const-string/jumbo v36, "V"

    const-string/jumbo v37, "W"

    const-string/jumbo v38, "X"

    const-string/jumbo v39, "Y"

    const-string/jumbo v42, "O"

    const-string/jumbo v43, "U"

    filled-new-array/range {v8 .. v43}, [Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v8, v1

    if-ne v8, v2, :cond_0

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    invoke-static {v1, v7, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    const/16 v2, 0xf

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    const/16 v2, 0x10

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    const/16 v2, 0x11

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    const/16 v2, 0x12

    aget-byte v2, v1, v2

    const/16 v2, 0x13

    aget-byte v2, v1, v2

    const/16 v2, 0x14

    aget-byte v2, v1, v2

    const/16 v2, 0x15

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    const/16 v2, 0x16

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    :cond_0
    return-void
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v1, v4}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    :try_start_0
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xff

    if-ne v1, v3, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->HexDecimalTable:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
