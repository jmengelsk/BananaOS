.class public Lcom/android/server/power/LibQmg;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final fname:Ljava/lang/String;

.field public handle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    return-void
.end method

.method public static native qmgCheckSupportQmg()I
.end method

.method public static native qmgClose(J)I
.end method

.method public static native qmgGetDelayTime(J)I
.end method

.method public static native qmgGetHeight(J)I
.end method

.method public static native qmgGetWidth(J)I
.end method

.method public static native qmgLoadBitmap(JLandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native qmgOpen(Ljava/lang/String;)J
.end method


# virtual methods
.method public final ensureQmgHandle()V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/LibQmg;->qmgOpen(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    :cond_10
    return-void
.end method

.method public final getHeight()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetHeight(J)I

    move-result p0

    return p0
.end method

.method public final getWidth()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v0, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v0, v1}, Lcom/android/server/power/LibQmg;->qmgGetWidth(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fname: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/LibQmg;->fname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v1, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    move-result v1

    if-gtz v1, :cond_37

    const/16 v1, 0x21

    :cond_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/LibQmg;->handle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
