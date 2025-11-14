.class public abstract Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    .registers 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    invoke-direct {v2, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    invoke-virtual {v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_12
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    iget-object p0, v2, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "active"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string/jumbo v3, "restored"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_12

    :cond_37
    invoke-static {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    goto :goto_12

    :cond_3b
    invoke-static {v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    goto :goto_12

    :cond_3f
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public static readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .registers 21

    move-object/from16 v0, p0

    const-string/jumbo v1, "state"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_a
    const-string/jumbo v4, "package-state"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ed

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

    if-nez v5, :cond_40

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    :cond_40
    move v13, v3

    move-object v6, v7

    move v3, v2

    goto/16 :goto_1dc

    :cond_45
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_5b
    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1cb

    iget-object v5, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v5, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v13, "domain"

    const-string/jumbo v14, "name"

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1ee

    :goto_79
    move v5, v2

    goto :goto_9b

    :sswitch_7b
    const-string/jumbo v15, "uri-relative-filter-groups"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_85

    goto :goto_79

    :cond_85
    const/4 v5, 0x2

    goto :goto_9b

    :sswitch_87
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    goto :goto_79

    :cond_8e
    const/4 v5, 0x1

    goto :goto_9b

    :sswitch_90
    const-string/jumbo v15, "user-states"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    goto :goto_79

    :cond_9a
    move v5, v3

    :goto_9b
    packed-switch v5, :pswitch_data_1fc

    move v13, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object v6, v7

    move/from16 v18, v8

    :goto_a6
    move v3, v2

    goto/16 :goto_1c0

    :pswitch_a9  #0x2
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_ac
    invoke-virtual {v0, v13}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12d

    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_be
    const-string/jumbo v7, "uri-relative-filter-group"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_120

    new-instance v7, Landroid/content/UriRelativeFilterGroup;

    const-string/jumbo v3, "action"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    move-result v3

    invoke-direct {v7, v3}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_d6
    const-string/jumbo v3, "uri-relative-filter"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_114

    const-string/jumbo v3, "filter"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_106

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

    goto :goto_10c

    :cond_106
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    :goto_10c
    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move/from16 v8, v18

    const/4 v2, -0x1

    goto :goto_d6

    :cond_114
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    goto :goto_be

    :cond_120
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual {v12, v5, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto :goto_ac

    :cond_12d
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    move v13, v3

    move-object v6, v7

    goto/16 :goto_a6

    :pswitch_137  #0x1
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :goto_140
    invoke-virtual {v0, v13}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_157

    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_140

    :cond_157
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_1c0

    :pswitch_15b  #0x0
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :cond_164
    :goto_164
    const-string/jumbo v2, "user-state"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_157

    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_17b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    goto :goto_1b8

    :cond_17b
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

    :cond_190
    const-string/jumbo v7, "enabled-hosts"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    :cond_19c
    :goto_19c
    const-string/jumbo v7, "host"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_190

    invoke-virtual {v0, v14}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19c

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_19c

    :cond_1b3
    new-instance v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {v7, v2, v5, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    :goto_1b8
    if-eqz v7, :cond_164

    iget v2, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    invoke-virtual {v10, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_164

    :goto_1c0
    move v2, v3

    move-object v7, v6

    move v3, v13

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move/from16 v8, v18

    goto/16 :goto_5b

    :cond_1cb
    move v13, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    move v3, v2

    new-instance v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object/from16 v7, v16

    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    move-object v7, v5

    goto :goto_1dd

    :goto_1dc
    move-object v7, v6

    :goto_1dd
    if-eqz v7, :cond_1e7

    iget-object v2, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e9

    :cond_1e7
    move-object/from16 v4, p1

    :goto_1e9
    move v2, v3

    move v3, v13

    goto/16 :goto_a

    :cond_1ed
    return-void

    :sswitch_data_1ee
    .sparse-switch
        -0x5df07dbc -> :sswitch_90
        0x68ac491 -> :sswitch_87
        0x614c8a09 -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_15b  #00000000
        :pswitch_137  #00000001
        :pswitch_a9  #00000002
    .end packed-switch
.end method

.method public static writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    .registers 10

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_a9

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p3, :cond_1f

    move-object v3, v2

    goto :goto_25

    :cond_1f
    invoke-virtual {p3, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_25
    if-nez v3, :cond_29

    iget-object v3, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    :cond_29
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

    if-eqz v1, :cond_4f

    iget-object v4, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v4, Lcom/android/modules/utils/TypedXmlSerializer;

    const-string/jumbo v5, "hasAutoVerifyDomains"

    invoke-interface {v4, v2, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4f
    const-string/jumbo v1, "signature"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_55
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeStateMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V

    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_63

    goto :goto_8b

    :cond_63
    const-string/jumbo v3, "user-states"

    invoke-virtual {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_95

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7d

    const/4 v3, 0x0

    :goto_6d
    if-ge v3, v2, :cond_88

    :try_start_6f
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-static {p0, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    :catchall_7b
    move-exception p1

    goto :goto_97

    :cond_7d
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz v1, :cond_88

    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    :try_end_88
    .catchall {:try_start_6f .. :try_end_88} :catchall_7b

    :cond_88
    :try_start_88
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    :goto_8b
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUriRelativeFilterGroupMap:Landroid/util/ArrayMap;

    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_95

    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    goto/16 :goto_c

    :catchall_95
    move-exception p1

    goto :goto_a0

    :goto_97
    :try_start_97
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception p2

    :try_start_9c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9f
    throw p1
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_95

    :goto_a0
    :try_start_a0
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_a8

    :catchall_a4
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a8
    throw p1

    :cond_a9
    :goto_a9
    return-void
.end method

.method public static writeStateMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .registers 7

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_3b

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
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_39

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :catchall_39
    move-exception p1

    goto :goto_3f

    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    return-void

    :goto_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p1
.end method

.method public static writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    .registers 12

    new-instance v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;)V

    :try_start_5
    const-string/jumbo v1, "domain-verifications"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_6f

    :try_start_b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_2a

    iget-object v5, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :catchall_28
    move-exception p1

    goto :goto_85

    :cond_2a
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_2e
    if-ge v3, p1, :cond_3c

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3c
    const-string/jumbo p1, "active"

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_28

    :try_start_42
    invoke-static {v0, v1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_7b

    :try_start_45
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    const-string/jumbo p1, "restored"

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_28

    :try_start_4e
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Ljava/util/Collection;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_71

    :try_start_55
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_28

    :try_start_58
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6f

    iget-object p1, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    if-eqz p1, :cond_6b

    :goto_5f
    iget-object p1, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6b

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    goto :goto_5f

    :cond_6b
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    return-void

    :catchall_6f
    move-exception p1

    goto :goto_8e

    :catchall_71
    move-exception p1

    :try_start_72
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception p2

    :try_start_77
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7a
    throw p1
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_28

    :catchall_7b
    move-exception p1

    :try_start_7c
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception p2

    :try_start_81
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_84
    throw p1
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_28

    :goto_85
    :try_start_85
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception p2

    :try_start_8a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8d
    throw p1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_6f

    :goto_8e
    :try_start_8e
    iget-object p2, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    if-eqz p2, :cond_9e

    :goto_92
    iget-object p2, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9e

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    goto :goto_92

    :cond_9e
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_a1
    .catchall {:try_start_8e .. :try_end_a1} :catchall_a2

    goto :goto_a6

    :catchall_a2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a6
    throw p1
.end method

.method public static writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/content/UriRelativeFilterGroup;)V
    .registers 5

    const-string/jumbo v0, "uri-relative-filter-group"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getAction()I

    move-result v0

    const-string/jumbo v1, "action"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    :try_start_10
    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

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
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_4c

    goto :goto_18

    :catchall_4c
    move-exception p1

    goto :goto_52

    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    return-void

    :goto_52
    :try_start_52
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw p1
.end method

.method public static writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/util/ArrayMap;)V
    .registers 7

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "uri-relative-filter-groups"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    :try_start_f
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_4c

    :cond_28
    const-string/jumbo v4, "domain"

    invoke-virtual {p0, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_58

    move v2, v0

    :goto_35
    :try_start_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_49

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/UriRelativeFilterGroup;

    invoke-static {p0, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Landroid/content/UriRelativeFilterGroup;)V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_47

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :catchall_47
    move-exception p1

    goto :goto_4f

    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_58

    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :goto_4f
    :try_start_4f
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v0

    :try_start_54
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_57
    throw p1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p1

    goto :goto_5e

    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    return-void

    :goto_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_66
    throw p1
.end method

.method public static writeUserStateToXml(Lcom/android/server/pm/SettingsXml$ReadSectionImpl;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    .registers 6

    const-string/jumbo v0, "user-state"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mUserId:I

    const-string/jumbo v1, "userId"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v1, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v2, 0x0

    const-string/jumbo v3, "allowLinkHandling"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1d
    :try_start_1d
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    const-string/jumbo v0, "enabled-hosts"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_50

    :try_start_2b
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v0, :cond_4c

    const-string/jumbo v2, "host"

    invoke-virtual {p0, v2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    const-string/jumbo v2, "name"

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_4a

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :catchall_4a
    move-exception p1

    goto :goto_52

    :cond_4c
    :try_start_4c
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_5b

    :catchall_50
    move-exception p1

    goto :goto_5f

    :goto_52
    :try_start_52
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v0

    :try_start_57
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw p1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_50

    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    return-void

    :goto_5f
    :try_start_5f
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_67
    throw p1
.end method
