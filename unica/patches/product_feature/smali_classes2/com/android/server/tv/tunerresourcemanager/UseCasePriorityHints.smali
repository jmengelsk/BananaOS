.class public final Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mDefaultBackground:I

.field public mDefaultForeground:I

.field public mPriorityHints:Landroid/util/SparseArray;

.field public mVendorDefinedUseCase:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "UseCasePriorityHints"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public final addNewUseCasePriority(III)V
    .registers 4

    filled-new-array {p2, p3}, [I

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public parseInternal(Ljava/io/InputStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    const-string/jumbo v6, "config"

    const/4 v7, 0x0

    invoke-interface {v5, v2, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const-string/jumbo v8, "UseCasePriorityHints"

    if-eq v6, v1, :cond_11a

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v2, :cond_23

    goto :goto_13

    :cond_23
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "useCaseDefault"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "bgPriority"

    const-string/jumbo v11, "fgPriority"

    if-eqz v9, :cond_49

    invoke-interface {v5, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    invoke-interface {v5, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    invoke-interface {v5, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_49
    const-string/jumbo v9, "useCasePreDefined"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const-string/jumbo v9, "type"

    invoke-interface {v5, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_17e

    :goto_63
    move v9, v3

    goto :goto_a0

    :sswitch_65
    const-string/jumbo v12, "USE_CASE_RECORD"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    goto :goto_63

    :cond_6f
    const/4 v9, 0x4

    goto :goto_a0

    :sswitch_71
    const-string/jumbo v12, "USE_CASE_SCAN"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7b

    goto :goto_63

    :cond_7b
    move v9, v1

    goto :goto_a0

    :sswitch_7d
    const-string/jumbo v12, "USE_CASE_LIVE"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_87

    goto :goto_63

    :cond_87
    move v9, v2

    goto :goto_a0

    :sswitch_89
    const-string/jumbo v12, "USE_CASE_PLAYBACK"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_93

    goto :goto_63

    :cond_93
    move v9, v4

    goto :goto_a0

    :sswitch_95
    const-string/jumbo v12, "USE_CASE_BACKGROUND"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9f

    goto :goto_63

    :cond_9f
    move v9, v0

    :goto_a0
    packed-switch v9, :pswitch_data_194

    move v9, v3

    goto :goto_b3

    :pswitch_a5  #0x4
    const/16 v9, 0x1f4

    goto :goto_b3

    :pswitch_a8  #0x3
    const/16 v9, 0xc8

    goto :goto_b3

    :pswitch_ab  #0x2
    const/16 v9, 0x190

    goto :goto_b3

    :pswitch_ae  #0x1
    const/16 v9, 0x12c

    goto :goto_b3

    :pswitch_b1  #0x0
    const/16 v9, 0x64

    :goto_b3
    if-ne v9, v3, :cond_bd

    const-string/jumbo v6, "Wrong predefined use case name given in the vendor config."

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_bd
    invoke-interface {v5, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v9, v8, v10}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    invoke-interface {v5, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_d0
    const-string/jumbo v8, "useCaseVendor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fe

    const-string/jumbo v8, "id"

    invoke-interface {v5, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    iget-object v9, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    invoke-interface {v5, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_fe
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v2, :cond_114

    move v6, v4

    :goto_105
    if-eqz v6, :cond_13

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    if-eq v8, v2, :cond_112

    if-eq v8, v1, :cond_110

    goto :goto_105

    :cond_110
    add-int/2addr v6, v3

    goto :goto_105

    :cond_112
    add-int/2addr v6, v4

    goto :goto_105

    :cond_114
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_11a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    move p1, v0

    :goto_11e
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_17d

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v3, :cond_17b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{defaultFg="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", defaultBg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "{useCase="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fg="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bg="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v4

    invoke-static {v1, v5, v8, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_17b
    add-int/2addr p1, v4

    goto :goto_11e

    :cond_17d
    return-void

    :sswitch_data_17e
    .sparse-switch
        -0x34bcc93b -> :sswitch_95
        0x16873572 -> :sswitch_89
        0x48d65bc3 -> :sswitch_7d
        0x48d97154 -> :sswitch_71
        0x76aab968 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_b1  #00000000
        :pswitch_ae  #00000001
        :pswitch_ab  #00000002
        :pswitch_a8  #00000003
        :pswitch_a5  #00000004
    .end packed-switch
.end method
