.class public Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static SERVER_URI:Ljava/lang/String; = "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"


# direct methods
.method public static -$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[BI)[B
    .registers 6

    const/4 p0, 0x1

    if-ne p2, p0, :cond_9

    const-string/jumbo p0, "https://kwb.secmobilesvc.com:7788/requestapi/trq/5/token.kwb"

    sput-object p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->SERVER_URI:Ljava/lang/String;

    goto :goto_11

    :cond_9
    const/4 p0, 0x2

    if-ne p2, p0, :cond_11

    const-string/jumbo p0, "https://kwb.secmobilesvc.com:7788/requestapi/tak/5/token.kwb"

    sput-object p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->SERVER_URI:Ljava/lang/String;

    :cond_11
    :goto_11
    const/4 p0, 0x0

    :try_start_12
    new-instance p2, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;

    sget-object v0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->SERVER_URI:Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_3f

    :try_start_19
    invoke-virtual {p2, p1}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->addByteArrayPart([B)V

    invoke-virtual {p2}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->finish()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_3c

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :catch_3c
    move-exception p1

    goto :goto_41

    :cond_3e
    return-object v0

    :catch_3f
    move-exception p1

    move-object p2, p0

    :goto_41
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p2, :cond_55

    :try_start_46
    iget-object p1, p2, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    iget-object p1, p2, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_55
    :goto_55
    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
