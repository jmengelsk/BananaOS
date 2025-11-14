.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    iput-boolean p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return-void
.end method
