.class public final Lcom/android/server/vr/VrManagerService$6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$b:Z

.field public final synthetic val$c:Landroid/content/ComponentName;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$6;->val$c:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/server/vr/VrManagerService$6;->val$b:Z

    iput p1, p0, Lcom/android/server/vr/VrManagerService$6;->val$pid:I

    return-void
.end method
