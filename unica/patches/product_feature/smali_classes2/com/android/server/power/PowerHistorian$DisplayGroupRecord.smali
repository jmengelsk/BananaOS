.class public final Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mGroupId:I

.field public final mIsAdded:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mIsAdded:Z

    iput p1, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mGroupId:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mGroupId:I

    if-eqz v1, :cond_21

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1b

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_1b
    const-string v1, "CarLife"

    goto :goto_23

    :cond_1e
    const-string v1, "Dex"

    goto :goto_23

    :cond_21
    const-string v1, "Default"

    :goto_23
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %-10s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mIsAdded:Z

    if-eqz p0, :cond_37

    const-string p0, "ADD"

    goto :goto_3a

    :cond_37
    const-string/jumbo p0, "REMOVE"

    :goto_3a
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " %-7s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
