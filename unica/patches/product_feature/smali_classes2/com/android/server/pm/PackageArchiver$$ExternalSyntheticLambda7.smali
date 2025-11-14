.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/IntentSender;

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;III)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$4:Landroid/content/IntentSender;

    iput p6, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$5:I

    iput p7, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$6:I

    iput p8, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$7:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$3:I

    iget-object v6, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$4:Landroid/content/IntentSender;

    iget v7, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$5:I

    iget v8, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$6:I

    iget v9, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;->f$7:I

    check-cast p1, Ljava/lang/Void;

    iget-object p0, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v3, Landroid/content/pm/VersionedPackage;

    const/4 p0, -0x1

    invoke-direct {v3, v1, p0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/PackageInstallerService;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    return-void
.end method
