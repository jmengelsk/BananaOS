.class public final Lcom/android/server/wm/ActivityCallerState$CallerInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInaccessibleContentUris:Landroid/util/ArraySet;

.field public final mIsShareIdentityEnabled:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mReadableContentUris:Landroid/util/ArraySet;

.field public final mUid:I

.field public final mWritableContentUris:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    iput p1, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mUid:I

    iput-object p2, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mPackageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mIsShareIdentityEnabled:Z

    return-void
.end method

.method public static restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "source_user_id"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "uri"

    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "prefix"

    invoke-interface {p0, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    new-instance v0, Lcom/android/server/uri/GrantUri;

    if-eqz p0, :cond_21

    const/16 v2, 0x80

    :cond_21
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    return-object v0
.end method

.method public static saveGrantUriToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/uri/GrantUri;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v1, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const-string/jumbo v2, "source_user_id"

    invoke-interface {p0, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-interface {p0, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "prefix"

    iget-boolean p1, p1, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-interface {p0, v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
