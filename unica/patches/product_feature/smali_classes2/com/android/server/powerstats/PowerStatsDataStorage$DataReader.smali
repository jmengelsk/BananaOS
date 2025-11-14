.class public final Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# instance fields
.field public mCallback:Lcom/android/server/powerstats/PowerStatsLogger$1;


# virtual methods
.method public final read(Ljava/io/InputStream;)V
    .registers 7

    const-string/jumbo v0, "PowerStatsLogger"

    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_b1

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v1, :cond_a3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-lez v1, :cond_97

    const v2, 0x8000

    if-ge v1, v2, :cond_97

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v1, :cond_89

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;->mCallback:Lcom/android/server/powerstats/PowerStatsLogger$1;

    iget v3, v1, Lcom/android/server/powerstats/PowerStatsLogger$1;->$r8$classId:I

    packed-switch v3, :pswitch_data_b2

    :try_start_30
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsLogger$1;->val$pos:Landroid/util/proto/ProtoOutputStream;

    invoke-static {v2, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/StateResidencyResult;Landroid/util/proto/ProtoOutputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_43} :catch_44

    goto :goto_3

    :catch_44
    move-exception v1

    sget v2, Lcom/android/server/powerstats/PowerStatsLogger;->$r8$clinit:I

    const-string v2, "Failed to write residency data to incident report."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_4d  #0x1
    :try_start_4d
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsLogger$1;->val$pos:Landroid/util/proto/ProtoOutputStream;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_61} :catch_62

    goto :goto_3

    :catch_62
    move-exception v1

    sget v2, Lcom/android/server/powerstats/PowerStatsLogger;->$r8$clinit:I

    const-string v2, "Failed to write energy model data to incident report."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_6b  #0x0
    :try_start_6b
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsLogger$1;->val$pos:Landroid/util/proto/ProtoOutputStream;

    invoke-static {v2, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyMeasurement;Landroid/util/proto/ProtoOutputStream;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7e} :catch_7f

    goto :goto_3

    :catch_7f
    move-exception v1

    sget v2, Lcom/android/server/powerstats/PowerStatsLogger;->$r8$clinit:I

    const-string v2, "Failed to write energy meter data to incident report."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_89
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid bytes read, expected: "

    const-string v0, ", actual: "

    invoke-static {v1, v3, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    new-instance p0, Ljava/io/IOException;

    const-string p1, "DataElement size is invalid: "

    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Did not read 4 bytes ("

    const-string v0, ")"

    invoke-static {v3, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b1
    return-void

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_6b  #00000000
        :pswitch_4d  #00000001
    .end packed-switch
.end method
