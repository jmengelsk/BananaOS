.class public abstract Lcom/android/server/permission/access/appop/BaseAppOpPersistence;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static parseAppOps(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    const-string/jumbo v1, "Unexpected event type "

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_3

    goto/16 :goto_5

    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "app-op"

    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "intern(...)"

    invoke-static {v7, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v7, "mode"

    invoke-virtual {p0, v5, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Ignoring unknown tag "

    const-string v7, " when parsing app-op state"

    const-string v8, "BaseAppOpPersistence"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v0, :cond_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v2, :cond_9

    if-ne v5, v4, :cond_8

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_7

    :goto_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_6

    if-eq v5, v2, :cond_6

    if-eq v5, v4, :cond_6

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_2

    goto :goto_3

    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_6

    if-eq v5, v2, :cond_6

    if-eq v5, v4, :cond_6

    goto :goto_4

    :cond_a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p1, "Unexpected post-block depth "

    const-string v1, ", expected "

    invoke-static {v5, v0, p1, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    return-void
.end method

.method public static serializeAppOps(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "app-op"

    invoke-virtual {p0, v4, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "name"

    invoke-virtual {p0, v4, v6, v2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "mode"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, v4, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
.end method

.method public abstract serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
.end method
