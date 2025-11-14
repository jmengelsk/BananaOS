.class public final Lcom/android/server/pm/ApexManager$ActiveApexInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final activeApexChanged:Z

.field public final apexDirectory:Ljava/io/File;

.field public final apexFile:Ljava/io/File;

.field public final apexModuleName:Ljava/lang/String;

.field public final isFactory:Z

.field public final preInstalledApexPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/apex/ApexInfo;)V
    .locals 6

    iget-object v0, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Landroid/apex/ApexInfo;->isFactory:Z

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Landroid/apex/ApexInfo;->activeApexChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    iput-boolean v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->isFactory:Z

    iput-object v4, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexFile:Ljava/io/File;

    iput-boolean p1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    return-void
.end method
