.class public final Lcom/android/server/pm/ApexManager$ScanResult;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final apexInfo:Landroid/apex/ApexInfo;

.field public final packageName:Ljava/lang/String;

.field public final pkg:Lcom/android/server/pm/pkg/AndroidPackage;


# direct methods
.method public constructor <init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ApexManager$ScanResult;->apexInfo:Landroid/apex/ApexInfo;

    iput-object p2, p0, Lcom/android/server/pm/ApexManager$ScanResult;->pkg:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-object p3, p0, Lcom/android/server/pm/ApexManager$ScanResult;->packageName:Ljava/lang/String;

    return-void
.end method
