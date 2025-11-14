.class public final synthetic Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    sget-object p0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    new-instance p0, Landroid/apex/CompressedApexInfo;

    invoke-direct {p0}, Landroid/apex/CompressedApexInfo;-><init>()V

    iget-object v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/apex/CompressedApexInfo;->moduleName:Ljava/lang/String;

    iget-wide v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    iput-wide v0, p0, Landroid/apex/CompressedApexInfo;->decompressedSize:J

    iget-wide v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    iput-wide v0, p0, Landroid/apex/CompressedApexInfo;->versionCode:J

    return-object p0
.end method
