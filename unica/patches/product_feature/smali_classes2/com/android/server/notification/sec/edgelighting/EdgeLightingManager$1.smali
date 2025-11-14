.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    :goto_5
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    iget-boolean p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mRinging:Z

    if-ne p2, p1, :cond_c

    return-void

    :cond_c
    iput-boolean p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mRinging:Z

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
