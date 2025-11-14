.class public final Lcom/android/server/uri/NeededUriGrants;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final flags:I

.field public final targetPkg:Ljava/lang/String;

.field public final targetUid:I

.field public final uris:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iput p2, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final merge(Lcom/android/server/uri/NeededUriGrants;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget v1, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    iget v1, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    if-eq v0, v1, :cond_1a

    goto :goto_22

    :cond_1a
    iget-object p0, p0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void

    :cond_22
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The other NeededUriGrants does not share the same targetUid, targetPkg or flags. It cannot be merged into this NeededUriGrants. This NeededUriGrants: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/uri/NeededUriGrants;->toStringWithoutUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Other NeededUriGrants: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/uri/NeededUriGrants;->toStringWithoutUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "NeededUriGrants"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final toStringWithoutUri()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NeededUriGrants{targetPkg=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', targetUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
