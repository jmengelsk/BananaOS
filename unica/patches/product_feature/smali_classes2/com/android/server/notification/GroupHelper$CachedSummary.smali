.class public final Lcom/android/server/notification/GroupHelper$CachedSummary;
.super Ljava/lang/Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "id",
        "tag",
        "originalGroupKey",
        "key",
        "deleteIntent"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;,
        Ljava/lang/String;,
        Ljava/lang/String;,
        Landroid/app/PendingIntent;
    }
.end annotation


# instance fields
.field public final deleteIntent:Landroid/app/PendingIntent;

.field public final id:I

.field public final key:Ljava/lang/String;

.field public final originalGroupKey:Ljava/lang/String;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iput-object p3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iget v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    const/4 v2, 0x4

    aput-object p0, v6, v2

    const-class p0, Lcom/android/server/notification/GroupHelper$CachedSummary;

    const-string/jumbo v2, "id;tag;originalGroupKey;key;deleteIntent"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length p0, v2

    if-ge v0, p0, :cond_2

    aget-object p0, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v6, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length p0, v2

    sub-int/2addr p0, v1

    if-eq v0, p0, :cond_1

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
