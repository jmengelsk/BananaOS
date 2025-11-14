.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
