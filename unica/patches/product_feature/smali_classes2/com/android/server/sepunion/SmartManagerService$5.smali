.class public final Lcom/android/server/sepunion/SmartManagerService$5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$5;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$5;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/SmartManagerService;->-$$Nest$monPermissionChanged(Lcom/android/server/sepunion/SmartManagerService;I)V

    return-void
.end method
