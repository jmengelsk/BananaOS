.class public final Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final pendingChanges:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    return-void
.end method
