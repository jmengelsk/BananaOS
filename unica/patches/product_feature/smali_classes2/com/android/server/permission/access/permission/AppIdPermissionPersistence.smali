.class public final Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V
    .locals 13

    iget-object v0, p1, Lcom/android/server/permission/access/AccessState;->systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/MutableSystemState;

    iget v1, v0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    if-eqz p2, :cond_0

    iget-object p2, v0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p2

    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v1

    const-string/jumbo v3, "Unexpected event type "

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v1

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v1

    const-string v7, " when parsing permissions"

    const-string v8, "AppIdPermissionPersistence"

    if-eq v1, v6, :cond_e

    if-eq v1, v4, :cond_5

    if-ne v1, v5, :cond_4

    goto/16 :goto_6

    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "permission"

    invoke-static {v9, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v7, 0x0

    const-string/jumbo v9, "name"

    invoke-virtual {p0, v7, v9}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "intern(...)"

    invoke-static {v10, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v11, Landroid/content/pm/PermissionInfo;

    invoke-direct {v11}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v9, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string/jumbo v12, "packageName"

    invoke-virtual {p0, v7, v12}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v12, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v10, "protectionLevel"

    invoke-virtual {p0, v7, v10}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const-string/jumbo v10, "type"

    invoke-virtual {p0, v7, v10}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    if-eq v10, v4, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Ignoring permission "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with unknown type "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string/jumbo v8, "icon"

    invoke-virtual {p0, v7, v8, v2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    iput v8, v11, Landroid/content/pm/PermissionInfo;->icon:I

    const-string/jumbo v8, "label"

    invoke-virtual {p0, v7, v8}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_7
    new-instance v7, Lcom/android/server/permission/access/permission/Permission;

    invoke-direct {v7, v11, v2, v10, v2}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII)V

    invoke-virtual {p2, v9, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    const-string v10, "Ignoring unknown tag "

    invoke-static {v10, v9, v7, v8}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v1, :cond_d

    :cond_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v4, :cond_c

    if-ne v7, v5, :cond_b

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_a

    :goto_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_9

    if-eq v7, v4, :cond_9

    if-eq v7, v5, :cond_9

    goto :goto_3

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v1

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_3

    goto :goto_4

    :cond_b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v7, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_9

    if-eq v7, v4, :cond_9

    if-eq v7, v5, :cond_9

    goto :goto_5

    :cond_d
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p1, "Unexpected post-block depth "

    const-string p2, ", expected "

    invoke-static {v7, v1, p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    iget-object p0, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    sub-int/2addr p0, v6

    :goto_7
    const/4 v1, -0x1

    if-ge v1, p0, :cond_10

    iget-object v1, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v3, v3, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v2, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v3, "Dropping permission "

    const-string v4, " from unknown package "

    invoke-static {v3, v2, v4, v1, v7}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    :cond_f
    add-int/lit8 p0, p0, -0x1

    goto :goto_7

    :cond_10
    return-void
.end method

.method public static serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v3, "permission"

    invoke-virtual {p0, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string/jumbo v6, "name"

    invoke-virtual {p0, v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "packageName"

    invoke-virtual {p0, v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v5, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const-string/jumbo v6, "protectionLevel"

    invoke-virtual {p0, v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "type"

    iget v6, v4, Lcom/android/server/permission/access/permission/Permission;->type:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x2

    if-ne v6, v5, :cond_1

    iget-object v4, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v5, v4, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v5, :cond_0

    const-string/jumbo v6, "icon"

    invoke-virtual {p0, v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v5, "label"

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
