.class public abstract Lcom/android/server/wm/AppWarnings$BaseDialog;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

.field public mDialog:Landroid/app/AlertDialog;

.field public final mManager:Lcom/android/server/wm/AppWarnings;

.field public final mPackageName:Ljava/lang/String;

.field public final mUiContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mManager:Lcom/android/server/wm/AppWarnings;

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWarnings$BaseDialog$1;-><init>(Lcom/android/server/wm/AppWarnings$BaseDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Showing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    const-string v2, "AppWarnings"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
