.class public final synthetic Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/input/InputManager$KeyGestureEventHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    return-void
.end method


# virtual methods
.method public final handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method
