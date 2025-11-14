.class public abstract Lcom/android/server/pm/UserTypeFactory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "UserTypeFactory"

    :try_start_3
    const-string/jumbo v1, "user-types"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_c
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_254

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "profile-type"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_1e} :catch_a2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1e} :catch_a2

    const-string v4, " in "

    if-eqz v3, :cond_24

    move v1, v2

    goto :goto_2e

    :cond_24
    :try_start_24
    const-string/jumbo v3, "full-type"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21b

    const/4 v1, 0x0

    :goto_2e
    const-string/jumbo v3, "name"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1fe

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    goto/16 :goto_1fe

    :cond_42
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "android."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x1000

    if-eqz v5, :cond_c1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Customizing user type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    if-eqz v2, :cond_a5

    if-eqz v1, :cond_73

    iget v5, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    if-eq v5, v6, :cond_e6

    :cond_73
    if-nez v1, :cond_7c

    iget v5, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v6, 0x400

    if-ne v5, v6, :cond_7c

    goto :goto_e6

    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wrong base type to customize user type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), which is type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_a2
    move-exception p0

    goto/16 :goto_24f

    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal custom user type name "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Non-AOSP user types cannot start with \'android.\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c1
    if-eqz v1, :cond_1e2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating custom user type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v5}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    iput-object v3, v5, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v6, v5, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iput-boolean v2, v5, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    invoke-virtual {p0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    :cond_e6
    :goto_e6
    if-eqz v1, :cond_124

    const-string/jumbo v3, "max-allowed-per-parent"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "icon-badge"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "badge-plain"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "badge-no-background"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "status-bar-icon"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_124
    const-string/jumbo v3, "enabled"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/4 v6, 0x5

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string/jumbo v3, "max-allowed"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/4 v6, 0x6

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    :goto_140
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_24a

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "default-restrictions"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15e

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    goto :goto_140

    :cond_15e
    if-eqz v1, :cond_173

    const-string/jumbo v6, "badge-labels"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_173

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/4 v6, 0x7

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_140

    :cond_173
    if-eqz v1, :cond_189

    const-string/jumbo v6, "badge-colors"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_189

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/16 v6, 0x8

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_140

    :cond_189
    if-eqz v1, :cond_19f

    const-string/jumbo v6, "badge-colors-dark"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19f

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    const/16 v6, 0x9

    invoke-direct {v5, v2, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;I)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_140

    :cond_19f
    const-string/jumbo v6, "user-properties"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c1

    iget-object v5, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    if-nez v5, :cond_1b7

    new-instance v5, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v5}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    :cond_1b7
    iget-object v5, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/UserProperties;->updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_140

    :cond_1c1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecognized tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_140

    :cond_1e2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creation of non-profile user type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is not currently supported."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1fe
    :goto_1fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping user type with no name in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_24a

    :cond_21b
    const-string/jumbo v2, "change-user-type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_228

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_24a

    :cond_228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skipping unknown element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_24a
    :goto_24a
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_24d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_24d} :catch_a2
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24d} :catch_a2

    goto/16 :goto_c

    :goto_24f
    const-string p1, "Cannot read user type configuration file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_254
    return-void
.end method

.method public static getDefaultBuilders()Landroid/util/ArrayMap;
    .registers 49

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.profile.MANAGED"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/16 v3, 0x1000

    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v4, 0x20

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    const/4 v4, 0x1

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iput-boolean v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    const v5, 0x1040cbf

    const v6, 0x1040cc0

    const v7, 0x1040cc1

    filled-new-array {v5, v6, v7}, [I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    const v5, 0x1080438

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    const v5, 0x1080433

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    const v5, 0x1080435

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    const v5, 0x1080c1e

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    const v5, 0x1040807

    const v6, 0x1040808

    const v7, 0x1040809

    filled-new-array {v5, v6, v7}, [I

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    const v8, 0x1060373

    const v9, 0x1060375

    const v10, 0x1060377

    filled-new-array {v8, v9, v10}, [I

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    const v11, 0x1060374

    const v12, 0x1060376

    const v13, 0x1060378

    filled-new-array {v11, v12, v13}, [I

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    const v14, 0x104015e

    iput v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "managed_profile_contact_remote_search"

    const-string v11, "1"

    invoke-virtual {v14, v15, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "cross_profile_calendar_enabled"

    invoke-virtual {v14, v15, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    sget-object v11, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v30, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v31, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v16, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v17, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v18, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v19, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v20, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v21, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v22, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v23, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v24, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v25, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v26, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v27, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v28, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v29, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array/range {v16 .. v31}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultCrossProfileTelephonyIntentFilters(Z)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    new-instance v11, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v11}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v11, v4}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/pm/UserProperties$Builder;->setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.full.SYSTEM"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/16 v11, 0xc00

    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v11, 0x4003

    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.full.SECONDARY"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/16 v11, 0x400

    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/4 v15, -0x1

    iput v15, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v13, "no_outgoing_calls"

    invoke-virtual {v12, v13, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v8, "no_sms"

    invoke-virtual {v12, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v12, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_140

    const/16 v1, 0x100

    goto :goto_141

    :cond_140
    move v1, v14

    :goto_141
    or-int/lit8 v1, v1, 0x4

    new-instance v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v12, "android.os.usertype.full.GUEST"

    iput-object v12, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v11, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iput v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iput v4, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v13, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "no_config_wifi"

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "no_install_unknown_sources"

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "no_config_credentials"

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.full.DEMO"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v9, 0x200

    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iput v15, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.full.RESTRICTED"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v12, 0x8

    iput v12, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iput v15, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iput-boolean v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.system.HEADLESS"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/16 v12, 0x800

    iput v12, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/4 v12, 0x3

    iput v12, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.profile.CLONE"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iput-boolean v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    const v12, 0x1040cba

    filled-new-array {v12}, [I

    move-result-object v12

    iput-object v12, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    iput v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    const v12, 0x104015c

    iput v12, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    sget-object v47, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v48, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v32, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v33, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v34, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v35, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v36, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v37, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v38, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v39, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v40, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v41, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v42, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v43, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v44, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v45, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v46, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array/range {v32 .. v48}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    const v9, 0x108045c

    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    const v9, 0x108034d

    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    filled-new-array {v5}, [I

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    const v9, 0x1060205

    filled-new-array {v9}, [I

    move-result-object v12

    iput-object v12, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    filled-new-array {v9}, [I

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    new-instance v9, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v9}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setUseParentsContacts(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    const/16 v12, 0xa

    invoke-virtual {v9, v12}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentResolutionStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setDeleteAppWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.profile.COMMUNAL"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iput-boolean v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v9

    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    const v9, 0x1040cbb

    filled-new-array {v9}, [I

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    const v9, 0x1080636

    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    const v9, 0x1080634

    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    const v11, 0x1080635

    iput v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    iput v9, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    filled-new-array {v5, v6, v7}, [I

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    const v5, 0x1060375

    const v11, 0x1060373

    filled-new-array {v11, v5, v10}, [I

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    const v5, 0x1060374

    const v6, 0x1060376

    const v11, 0x1060378

    filled-new-array {v5, v6, v11}, [I

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    new-instance v5, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v5}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v5, v14}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.profile.PRIVATE"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iput-boolean v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    invoke-static {}, Landroid/os/UserManager;->isPrivateProfileEnabled()Z

    move-result v5

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    const v5, 0x1040cbc

    filled-new-array {v5}, [I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    const v5, 0x10805eb

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    const v5, 0x10805ea

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    const v5, 0x1080c1f

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    const v5, 0x1040caa

    filled-new-array {v5}, [I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    const v5, 0x106000c

    filled-new-array {v5}, [I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    const v5, 0x106000b

    filled-new-array {v5}, [I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    const v5, 0x104015f

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultPrivateProfileRestrictions()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    sget-object v26, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PICK_RAW_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v22, v16

    sget-object v16, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v21, v17

    sget-object v17, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v18, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v19, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v20, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v23, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v24, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SEND_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v25, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PICK_INTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-object/from16 v27, v31

    filled-new-array/range {v16 .. v27}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    new-instance v5, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v5}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setAllowStoppingUserWithDelayedLocking(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/pm/UserProperties$Builder;->setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setProfileApiVisibility(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "android.os.usertype.profile.SUPERVISING"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v3, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iput-boolean v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    iput v14, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    const v5, 0x1040cbd

    filled-new-array {v5}, [I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "no_install_apps"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    new-instance v5, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v5}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v5, v14}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/UserProperties$Builder;->setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->LOG_DIR:Ljava/io/File;

    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v2, "com.samsung.android.os.usertype.full.MAINTENANCE_MODE"

    iput-object v2, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/16 v5, 0x400

    iput v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iput v4, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v5, v1, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_496

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "no_fun"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string/jumbo v5, "android.os.usertype.profile.TEST"

    iput-object v5, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iput v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iput v15, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iput-boolean v4, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    const v3, 0x1040cbe

    filled-new-array {v3, v3, v3}, [I

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    const v3, 0x1080636

    iput v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    iput v9, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    const v3, 0x1080635

    iput v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    iput v9, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    const v3, 0x1040807

    const v4, 0x1040808

    filled-new-array {v3, v4, v7}, [I

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    const v3, 0x1060375

    const v4, 0x1060377

    const v11, 0x1060373

    filled-new-array {v11, v3, v4}, [I

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    const v3, 0x1060374

    const v6, 0x1060376

    const v11, 0x1060378

    filled-new-array {v3, v6, v11}, [I

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    iput-object v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_496
    return-object v0
.end method

.method public static getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;
    .registers 2

    const-string/jumbo v0, "user_setup_complete"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPrivateProfileRestrictions()Landroid/os/Bundle;
    .registers 3

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_bluetooth_sharing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultProfileRestrictions()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "no_wallpaper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getUserTypeVersion()I
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :try_start_b
    invoke-static {v0}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14
    return v1

    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
.end method

.method public static getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I
    .registers 6

    const-string/jumbo v0, "UserTypeFactory"

    const-string v1, "Cannot parse value of \'"

    :try_start_5
    const-string/jumbo v2, "user-types"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_1a

    if-eqz v2, :cond_3e

    :try_start_15
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    goto :goto_39

    :catch_1c
    move-exception v3

    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for version in "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v3
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_39} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_39} :catch_1a

    :goto_39
    const-string v1, "Cannot read user type configuration file."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public static parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "UserTypeFactory"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_8
    const-string/jumbo v2, "user-types"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_11
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_76

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "change-user-type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "from"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "to"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Landroid/util/ArrayMap;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Landroid/util/ArrayMap;Ljava/lang/String;)V
    :try_end_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_3a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3a} :catch_4e

    :try_start_3a
    const-string/jumbo v5, "whenVersionLeq"

    invoke-interface {p1, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_45} :catch_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_45} :catch_4e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_45} :catch_4e

    :try_start_45
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    invoke-direct {v5, v3, v2, v4}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :catch_4e
    move-exception p0

    goto :goto_71

    :catch_50
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse value of whenVersionLeq in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :cond_6a
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6d
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_70} :catch_4e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_70} :catch_4e

    goto :goto_11

    :goto_71
    const-string p1, "Cannot read user type configuration file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_76
    return-object v1
.end method

.method public static setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 7

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    const-string v1, "Cannot parse value of \'"

    const-string v2, "\' for "

    const-string v3, " in "

    invoke-static {v1, v0, v2, p1, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "UserTypeFactory"

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p2
.end method

.method public static setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "item"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string/jumbo v3, "Skipping unknown child element "

    const-string v4, " in "

    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UserTypeFactory"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_3a
    const/4 v2, 0x0

    const-string/jumbo v3, "res"

    const/4 v4, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_46

    goto :goto_9

    :cond_46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_4e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    :goto_55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6a
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static validateUserTypeIsProfile(Landroid/util/ArrayMap;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails$Builder;

    if-eqz p0, :cond_1d

    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v0, 0x1000

    if-ne p0, v0, :cond_f

    goto :goto_1d

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal upgrade of user type "

    const-string v1, " : Can only upgrade profiles user types"

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method
