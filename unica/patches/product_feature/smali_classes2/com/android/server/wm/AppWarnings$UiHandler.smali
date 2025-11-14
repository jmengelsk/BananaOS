.class public final Lcom/android/server/wm/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x1020226

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x104000a

    const/16 v6, 0x7d2

    const/4 v7, 0x5

    const/high16 v8, 0x447a0000    # 1000.0f

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageNightModeDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    if-eqz p1, :cond_21

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mShouldShowPackageNightModeDialog:Z

    if-eqz v1, :cond_21

    new-instance v1, Lcom/android/server/wm/PackageNightModeDialog;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v9, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v5, v9, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v5

    const v7, 0x10409a4

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x10302d1

    goto :goto_0

    :cond_1
    const v8, 0x10302d2

    :goto_0
    invoke-direct {v7, v3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v8, 0x10409a3

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/android/server/wm/PackageNightModeDialog$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3}, Lcom/android/server/wm/PackageNightModeDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const v3, 0x10409a5

    invoke-virtual {v4, v3, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->create()V

    iget-object v3, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const-string/jumbo v4, "PackageNightModeDialog"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mShouldShowPackageNightModeDialog:Z

    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_2

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PageSizeMismatchDialog;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/AppWarnings$2;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/android/server/wm/PageSizeMismatchDialog;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p0}, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PageSizeMismatchDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-static {v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Lcom/android/server/wm/PageSizeMismatchDialog;->show()V

    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_5

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_7
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p1

    const v3, 0x1040470

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DeprecatedAbiDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    iget-object p1, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string v2, "DeprecatedAbiDialog"

    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_8

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1040472

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v1, p0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v4, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2, p1}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p1, 0x1040471

    invoke-virtual {v3, p1, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_b
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    iget-object p1, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string v2, "DeprecatedTargetSdkVersionDialog"

    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_c

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v1, :cond_e

    if-eqz v0, :cond_d

    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_f

    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_11

    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_14

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    if-eqz v1, :cond_14

    if-eqz v0, :cond_13

    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PageSizeMismatchDialog;

    if-eqz v1, :cond_16

    if-eqz v0, :cond_15

    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageNightModeDialog;

    if-eqz v1, :cond_21

    if-eqz v0, :cond_17

    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_2

    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-eqz v2, :cond_19

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_19
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {p0, v0, v9, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v2, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v9

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, p0, v9, v10, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p1, v10, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v7

    const v8, 0x1041001

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1090205

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, p1}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1a

    new-instance v5, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, v9, p1}, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const p1, 0x1041000

    invoke-virtual {v4, p1, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1a
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string/jumbo v4, "UnsupportedCompileSdkDialog"

    invoke-virtual {p1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/UnsupportedCompileSdkDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_1b

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_1c

    goto/16 :goto_2

    :cond_1c
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_1d

    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_2

    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1f
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v2, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v9

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, p0, v9, v10, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p1, v10, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p1

    const v7, 0x1041003

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, v7, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x1090206

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string/jumbo v4, "UnsupportedDisplaySizeDialog"

    invoke-virtual {p1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_20

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_21
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
