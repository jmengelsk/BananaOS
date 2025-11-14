.class public final Lcom/android/server/pm/SettingsXml$ReadSectionImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mDepthStack:Ljava/util/Stack;

.field public final mParser:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p1, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public attribute(ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method public children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v1, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final close()V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v0, "SettingsXml"

    const-string v1, "Children depth stack was not empty, data may have been lost"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getInt(ILjava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public moveToNextInternal(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v3, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v5, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_3

    :cond_0
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v3, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v2

    :catch_0
    return v0
.end method

.method public startSection(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    check-cast v0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
