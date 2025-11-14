.class public final Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;
.super Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeniedActivities:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    const-string/jumbo p1, "{com.android.phone/com.android.phone.UsimDownload}"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;->mDeniedActivities:[Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p2, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo p2, "callername"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final preCondition()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    const-string v1, "KeyboardShortcutManager"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/pm/PackageManager;->semQueryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    :goto_0
    iget-object v0, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;->mDeniedActivities:[Ljava/lang/String;

    array-length v4, p0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, p0, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo p0, "canLaunchAppByExternalKeyboard: It is denied activity"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    move-result p0

    return p0

    :cond_5
    :goto_3
    const-string/jumbo p0, "canLaunchAppByExternalKeyboard : SFinder activity is not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final startTargetApp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "KeyboardShortcutManager"

    const-string/jumbo v0, "sendBroadcastAsUser for launch SFinder on Desktop windowing mode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "com.honeyspace.dexservice.action.TOGGLE_FINDER"

    const-string/jumbo v0, "com.sec.android.app.launcher"

    invoke-static {p1, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)V

    return-void
.end method
