.class public final Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;
.super Ljava/lang/Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "groupKey",
        "record",
        "hasSummary"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;,
        Lcom/android/server/notification/NotificationRecord;,
        Z
    }
.end annotation


# instance fields
.field public final groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

.field public final hasSummary:Z

.field public final record:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iput-boolean p3, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    if-eqz v0, :cond_22

    check-cast p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    iget-boolean v1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-boolean p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    const/4 v2, 0x2

    aput-object p0, v4, v2

    const-class p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    const-string/jumbo v2, "groupKey;record;hasSummary"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_24

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_2a

    :cond_24
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3c
    array-length p0, v2

    if-ge v0, p0, :cond_59

    aget-object p0, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v4, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length p0, v2

    sub-int/2addr p0, v1

    if-eq v0, p0, :cond_57

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    add-int/2addr v0, v1

    goto :goto_3c

    :cond_59
    const-string/jumbo p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
