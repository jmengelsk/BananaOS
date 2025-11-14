.class public final Lcom/samsung/accessory/manager/authentication/msg/Message;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final apdu:[B

.field public final data:[B

.field public final inf:[B


# direct methods
.method public constructor <init>(BBBB)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    const/4 p1, 0x1

    aput-byte p2, v0, p1

    const/4 p1, 0x2

    aput-byte p3, v0, p1

    const/4 p1, 0x3

    aput-byte v2, v0, p1

    const/4 p1, 0x4

    aput-byte p4, v0, p1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    array-length p1, v0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    if-eqz p0, :cond_0

    array-length p1, v0

    array-length p2, p0

    invoke-static {p0, v2, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    const/4 v2, 0x5

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->inf:[B

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    add-int/lit8 v0, v0, -0x2

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x3

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final getApdu()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->apdu:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final getData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/Message;->data:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
