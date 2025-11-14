.class public final Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final pendingChanges:Landroid/util/LongSparseArray;

.field public final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->pendingChanges:Landroid/util/LongSparseArray;

    return-void
.end method
