.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2e

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->enableTethering()I

    move-result p0

    goto :goto_33

    :cond_2e
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/net/TetheringManager;->setUsbTethering(Z)I

    move-result p0

    :goto_33
    const-string v0, "KnoxCustomManagerService"

    if-nez p0, :cond_3e

    const-string/jumbo p0, "startUsbNet OK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    const-string/jumbo v1, "startUsbNet failed with error "

    invoke-static {p0, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
