.class public final Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;
.super Landroid/os/IStatsBootstrapAtomService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final reportBootstrapAtom(Landroid/os/StatsBootstrapAtom;)V
    .locals 12

    iget p0, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    const-string/jumbo v0, "StatsBootstrapAtomService"

    const/4 v1, 0x1

    if-lt p0, v1, :cond_5

    const/16 v2, 0x2710

    if-lt p0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    iget v2, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    iget-object v2, p1, Landroid/os/StatsBootstrapAtom;->values:[Landroid/os/StatsBootstrapAtomValue;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    iget-object v7, v6, Landroid/os/StatsBootstrapAtomValue;->value:Landroid/os/StatsBootstrapAtomValue$Primitive;

    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v8

    const-string/jumbo v9, "Unexpected value type "

    packed-switch v8, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when logging atom "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getStringArrayValue()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeStringArray([Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getBytesValue()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getFloatValue()F

    move-result v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    goto :goto_1

    :pswitch_4
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getLongValue()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    goto :goto_1

    :pswitch_5
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getIntValue()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto :goto_1

    :pswitch_6
    invoke-virtual {v7}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getBoolValue()Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    :goto_1
    iget-object v6, v6, Landroid/os/StatsBootstrapAtomValue;->annotations:[Landroid/os/StatsBootstrapAtomValue$Annotation;

    array-length v7, v6

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_3

    aget-object v10, v6, v8

    iget-byte v11, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    if-eq v11, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected annotation ID: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", for atom "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    const-string v1, ": only UIDs are supported!"

    invoke-static {p1, v1, v0, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_1
    iget-object v11, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    invoke-virtual {v11}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    move-result v11

    if-eqz v11, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    invoke-virtual {v1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when logging UID for atom "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_2
    iget-byte v11, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    iget-object v10, v10, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    invoke-virtual {v10}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getBoolValue()Z

    move-result v10

    invoke-virtual {p0, v11, v10}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void

    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Atom ID "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    const-string v1, " is not a valid atom ID"

    invoke-static {p1, v1, v0, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
