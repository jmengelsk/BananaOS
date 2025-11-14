.class public final Lcom/android/server/utils/quota/Uptc;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHash:I

.field public final packageName:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    iput-object p2, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p1, p1, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    goto :goto_2b

    :cond_25
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    :goto_2b
    iput p1, p0, Lcom/android/server/utils/quota/Uptc;->mHash:I

    return-void
.end method

.method public static string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_17

    const-string p0, ""

    goto :goto_1d

    :cond_17
    const-string p0, "::"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/server/utils/quota/Uptc;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    check-cast p1, Lcom/android/server/utils/quota/Uptc;

    iget v1, p1, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget v3, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne v3, v1, :cond_26

    iget-object v1, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object p0, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    return v0

    :cond_26
    return v2
.end method

.method public final hashCode()I
    .registers 1

    iget p0, p0, Lcom/android/server/utils/quota/Uptc;->mHash:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    invoke-static {p0, v0, v1}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
