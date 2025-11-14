.class public final Lcom/android/server/pm/DexOptHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$artManager:Lcom/android/server/art/ArtManagerLocal;


# direct methods
.method public constructor <init>(Lcom/android/server/art/ArtManagerLocal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$1;->val$artManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$1;->val$artManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {p0}, Lcom/android/server/art/ArtManagerLocal;->scheduleBackgroundDexoptJob()I

    return-void
.end method
