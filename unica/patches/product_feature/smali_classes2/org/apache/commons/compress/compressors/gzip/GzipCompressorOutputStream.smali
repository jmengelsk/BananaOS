.class public final Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;
.super Ljava/io/OutputStream;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public closed:Z

.field public final crc:Ljava/util/zip/CRC32;

.field public final deflateBuffer:[B

.field public final deflater:Ljava/util/zip/Deflater;

.field public final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V
    .registers 8

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p2, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, -0x74e1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    long-to-int v1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p2, p2, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    const/16 v1, 0x9

    if-ne p2, v1, :cond_47

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_51

    :cond_47
    if-ne p2, v2, :cond_4e

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_51

    :cond_4e
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_51
    const/16 p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->closed:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->finish()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->closed:Z

    return-void

    :catchall_15
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->closed:Z

    throw v1

    :cond_23
    return-void
.end method

.method public final finish()V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :cond_d
    :goto_d
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_d

    :cond_29
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_50
    return-void
.end method

.method public final flush()V
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .registers 5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 8

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_31

    if-lez p3, :cond_30

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    :cond_f
    :goto_f
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_f

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_f

    :cond_2b
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_30
    return-void

    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot write more data, the end of the compressed data stream has been reached"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
