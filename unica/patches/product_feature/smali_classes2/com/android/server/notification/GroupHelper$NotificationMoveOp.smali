.class public final Lcom/android/server/notification/GroupHelper$NotificationMoveOp;
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
        "record",
        "oldGroup",
        "newGroup"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/notification/NotificationRecord;,
        Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;,
        Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    }
.end annotation


# instance fields
.field public final newGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

.field public final oldGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

.field public final record:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->record:Lcom/android/server/notification/NotificationRecord;

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->oldGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iput-object p3, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->newGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->record:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->oldGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->oldGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->newGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->newGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

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
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->oldGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->newGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

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
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->oldGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->newGroup:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    const/4 v2, 0x2

    aput-object p0, v4, v2

    const-class p0, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    const-string/jumbo v2, "record;oldGroup;newGroup"

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

    aget-object p0, v4, v0

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
