.class public final Lcom/android/server/uri/GrantUri;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final prefix:Z

.field public final sourceUserId:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(IILandroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iput-object p3, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    and-int/lit16 p1, p2, 0x80

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    return-void
.end method

.method public static resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;
    .registers 5

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-static {p2, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p0

    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    return-object v0

    :cond_1b
    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-object v0, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10500000001L

    iget p0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/server/uri/GrantUri;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/android/server/uri/GrantUri;

    iget-object v0, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v2, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v0, v2, :cond_1f

    iget-boolean p0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    iget-boolean p1, p1, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-ne p0, p1, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz p0, :cond_15

    const/16 p0, 0x4cf

    goto :goto_17

    :cond_15
    const/16 p0, 0x4d5

    :goto_17
    add-int/2addr v2, p0

    return v2
.end method

.method public final toSafeString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const-string/jumbo v2, "]"

    invoke-static {v1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz p0, :cond_27

    const-string p0, " [prefix]"

    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const-string/jumbo v2, "]"

    invoke-static {v1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz p0, :cond_27

    const-string p0, " [prefix]"

    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    return-object v0
.end method
