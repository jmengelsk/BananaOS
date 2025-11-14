.class public Lcom/android/server/pm/ScanPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

.field public final scanFlag:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    iget v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/high16 p1, 0x200000

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to determine scan flag for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/high16 p1, 0x100000

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40000

    goto :goto_0

    :cond_3
    const/high16 p1, 0x400000

    goto :goto_0

    :cond_4
    const/high16 p1, 0x80000

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    iget p1, p2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    iput-object p3, p0, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    const/high16 p2, 0x800000

    or-int/2addr p2, p1

    iget-boolean v0, p3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->isFactory:Z

    if-eqz v0, :cond_0

    const/high16 p2, 0x2800000

    or-int/2addr p2, p1

    :cond_0
    iget-boolean p1, p3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x1000000

    or-int/2addr p2, p1

    :cond_1
    iput p2, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
