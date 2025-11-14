.class public final Lcom/android/server/power/stats/PowerStatsSpan;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final DATE_FORMAT:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

.field public final mSections:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/PowerStatsSpan;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    return-void
.end method

.method public static varargs read(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 9

    invoke-static {p3}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/android/server/power/stats/PowerStatsSpan;

    invoke-direct {v2, p0}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-eq p0, v6, :cond_a

    const/4 v7, 0x2

    const-string/jumbo v8, "section"

    if-eqz v4, :cond_2

    const/4 v6, 0x3

    if-ne p0, v6, :cond_1

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_9

    move v4, v3

    goto :goto_4

    :cond_1
    if-ne p0, v7, :cond_9

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    if-ne p0, v7, :cond_9

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo p0, "type"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_4

    invoke-virtual {p3, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_4

    :cond_4
    :goto_1
    move-object v6, p2

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;

    if-eqz v6, :cond_5

    invoke-interface {v6, p1}, Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v1

    :goto_2
    if-nez v6, :cond_7

    if-eqz v0, :cond_6

    new-instance v6, Lcom/android/server/power/stats/PowerStatsSpan$1;

    invoke-direct {v6, p0, p0}, Lcom/android/server/power/stats/PowerStatsSpan$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo p2, "Unsupported PowerStatsStore section type: "

    invoke-static {p2, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    invoke-virtual {v2, v6}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    goto :goto_4

    :cond_8
    const-string/jumbo v6, "metadata"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    :cond_9
    :goto_4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p0

    goto/16 :goto_0

    :cond_a
    return-object v2
.end method


# virtual methods
.method public final addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->dump(Landroid/util/IndentingPrintWriter;Z)V

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v3, v2, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "metadata"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "id"

    iget-wide v3, p1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    invoke-interface {p2, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "version"

    const/4 v3, 0x2

    invoke-interface {p2, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "timeframe"

    invoke-interface {p2, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "start"

    iget-wide v9, v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    invoke-interface {p2, v0, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "monotonic"

    iget-wide v9, v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    invoke-interface {p2, v0, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "duration"

    iget-wide v9, v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    invoke-interface {p2, v0, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v4

    :goto_1
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "section"

    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    check-cast v7, Ljava/lang/String;

    invoke-interface {p2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v0, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_1
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v4, p1, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    invoke-interface {p2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v1, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    invoke-interface {p2, v0, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1, p2}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method
