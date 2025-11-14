.class public final Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
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
        "userId",
        "pkg",
        "groupName"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field public final groupName:Ljava/lang/String;

.field public final pkg:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Aggregate_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    if-eqz p3, :cond_e

    iget-object p3, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    goto :goto_f

    :cond_e
    move-object p3, v1

    :goto_f
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "android"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_24

    const-string/jumbo p3, "com.android.systemui"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2c

    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    if-eqz v0, :cond_22

    check-cast p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iget v1, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

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

    iget v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

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
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
