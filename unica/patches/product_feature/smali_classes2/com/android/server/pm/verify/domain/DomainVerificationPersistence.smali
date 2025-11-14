.class public abstract Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    invoke-direct {v2, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    invoke-virtual {v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v2, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "active"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "restored"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    goto :goto_0

    :cond_1
    invoke-static {v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public static readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .locals 19

    move-object/from16 v0, p0

    const-string/jumbo v1, "state"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_0
    const-string/jumbo v4, "package-state"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "packageName"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "id"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v5, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v7, 0x0

    const-string/jumbo v8, "hasAutoVerifyDomains"

    invoke-interface {v5, v7, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v5, "signature"

    invoke-virtual {v0, v5}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v13, v3

    move-object v6, v7

    move v3, v2

    goto/16 :goto_e

    :cond_1
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_1
    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v5, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v13, "domain"

    const-string/jumbo v14, "name"

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_2
    move v5, v2

    goto :goto_3

    :sswitch_0
    const-string/jumbo v15, "uri-relative-filter-groups"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    goto :goto_3

    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    goto :goto_3

    :sswitch_2
    const-string/jumbo v15, "user-states"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_3
    packed-switch v5, :pswitch_data_0

    move v13, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object v6, v7

    move/from16 v18, v8

    :goto_4
    move v3, v2

    goto/16 :goto_d

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_5
    invoke-virtual {v0, v13}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    const-string/jumbo v7, "uri-relative-filter-group"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Landroid/content/UriRelativeFilterGroup;

    const-string/jumbo v3, "action"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    move-result v3

    invoke-direct {v7, v3}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_7
    const-string/jumbo v3, "uri-relative-filter"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "filter"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v2, Landroid/content/UriRelativeFilter;

    move-object/from16 v16, v4

    const-string/jumbo v4, "uri-part"

    move-object/from16 v17, v6

    const/4 v6, -0x1

    invoke-virtual {v0, v6, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    move-result v4

    move/from16 v18, v8

    const-string/jumbo v8, "pattern-type"

    invoke-virtual {v0, v6, v8}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    move-result v8

    invoke-direct {v2, v4, v8, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    goto :goto_8

    :cond_5
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    :goto_8
    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move/from16 v8, v18

    const/4 v2, -0x1

    goto :goto_7

    :cond_6
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual {v12, v5, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    move v13, v3

    move-object v6, v7

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_9
    invoke-virtual {v0, v13}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_9
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_d

    :pswitch_2
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :cond_a
    :goto_a
    const-string/jumbo v2, "user-state"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    goto :goto_c

    :cond_b
    iget-object v4, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v4, Lcom/android/modules/utils/TypedXmlPullParser;

    const-string/jumbo v5, "allowLinkHandling"

    const/4 v6, 0x0

    const/4 v13, 0x0

    invoke-interface {v4, v6, v5, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :cond_c
    const-string/jumbo v7, "enabled-hosts"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :cond_d
    :goto_b
    const-string/jumbo v7, "host"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    new-instance v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {v7, v2, v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    :goto_c
    if-eqz v7, :cond_a

    iget v2, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    invoke-virtual {v10, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    :goto_d
    move v2, v3

    move-object v7, v6

    move v3, v13

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move/from16 v8, v18

    goto/16 :goto_1

    :cond_f
    move v13, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    move v3, v2

    new-instance v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object/from16 v7, v16

    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    move-object v7, v5

    goto :goto_f

    :goto_e
    move-object v7, v6

    :goto_f
    if-eqz v7, :cond_10

    iget-object v2, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_10
    move-object/from16 v4, p1

    :goto_10
    move v2, v3

    move v3, v13

    goto/16 :goto_0

    :cond_11
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5df07dbc -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x614c8a09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    :cond_2
    const-string/jumbo v4, "package-state"

    invoke-virtual {p0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const-string/jumbo v4, "packageName"

    invoke-virtual {p0, v4, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "id"

    invoke-virtual {p0, v4, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v4, Lcom/android/modules/utils/TypedXmlSerializer;

    const-string/jumbo v5, "hasAutoVerifyDomains"

    invoke-interface {v4, v2, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const-string/jumbo v1, "signature"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeStateMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo v3, "user-states"

    invoke-virtual {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-static {p0, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz v1, :cond_6

    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    :goto_3
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUriRelativeFilterGroupMap:Landroid/util/ArrayMap;

    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    goto :goto_6

    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1

    :cond_7
    :goto_8
    return-void
.end method

.method public static writeStateMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const-string/jumbo v3, "domain"

    invoke-virtual {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const-string/jumbo v3, "name"

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public static writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    .locals 6

    new-instance v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;)V

    :try_start_0
    const-string/jumbo v1, "domain-verifications"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_1
    if-ge v3, p1, :cond_1

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "active"

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    const-string/jumbo p1, "restored"

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object p1, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    if-eqz p1, :cond_2

    :goto_2
    iget-object p1, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_7

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_4
    move-exception p1

    :try_start_9
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_7
    :try_start_d
    iget-object p2, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    if-eqz p2, :cond_3

    :goto_8
    iget-object p2, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    goto :goto_8

    :cond_3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p1
.end method

.method public static writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/content/UriRelativeFilterGroup;)V
    .locals 3

    const-string/jumbo v0, "uri-relative-filter-group"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getAction()I

    move-result v0

    const-string/jumbo v1, "action"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriRelativeFilter;

    const-string/jumbo v1, "uri-relative-filter"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const-string/jumbo v1, "uri-part"

    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getUriPart()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    const-string/jumbo v1, "pattern-type"

    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getPatternType()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    const-string/jumbo v1, "filter"

    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public static writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "uri-relative-filter-groups"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v4, "domain"

    invoke-virtual {p0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v2, v0

    :goto_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/UriRelativeFilterGroup;

    invoke-static {p0, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/content/UriRelativeFilterGroup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    return-void

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
.end method

.method public static writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    .locals 4

    const-string/jumbo v0, "user-state"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    const-string/jumbo v1, "userId"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v1, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v2, 0x0

    const-string/jumbo v3, "allowLinkHandling"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "enabled-hosts"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const-string/jumbo v2, "host"

    invoke-virtual {p0, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const-string/jumbo v2, "name"

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    return-void

    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
.end method
