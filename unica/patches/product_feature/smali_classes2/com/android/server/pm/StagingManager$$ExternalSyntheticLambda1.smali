.class public final synthetic Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Landroid/apex/ApexInfo;

    new-instance p0, Landroid/content/pm/StagedApexInfo;

    invoke-direct {p0}, Landroid/content/pm/StagedApexInfo;-><init>()V

    iget-object v0, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/StagedApexInfo;->moduleName:Ljava/lang/String;

    iget-object v0, p1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/StagedApexInfo;->diskImagePath:Ljava/lang/String;

    iget-wide v0, p1, Landroid/apex/ApexInfo;->versionCode:J

    iput-wide v0, p0, Landroid/content/pm/StagedApexInfo;->versionCode:J

    iget-object v0, p1, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/StagedApexInfo;->versionName:Ljava/lang/String;

    iget-boolean p1, p1, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    iput-boolean p1, p0, Landroid/content/pm/StagedApexInfo;->hasClassPathJars:Z

    return-object p0
.end method
