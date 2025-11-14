.class public final Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;
.super Landroid/os/RemoteCallbackList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    check-cast p1, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return-void
.end method
