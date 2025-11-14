.class public final Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mGroupId:I

.field public final mIsAdded:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mIsAdded:Z

    iput p1, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mGroupId:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mGroupId:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "CarLife"

    goto :goto_0

    :cond_1
    const-string v1, "Dex"

    goto :goto_0

    :cond_2
    const-string v1, "Default"

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %-10s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/PowerHistorian$DisplayGroupRecord;->mIsAdded:Z

    if-eqz p0, :cond_3

    const-string p0, "ADD"

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "REMOVE"

    :goto_1
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
