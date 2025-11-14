.class public final Lcom/android/server/policy/KeyboardShortcutManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SHORT_TYPE_LIST:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsConsumedMeta:Z

.field public mIsTriggeredMeta:Z

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final mPreloadBehaviorMap:Landroid/util/SparseArray;

.field public final mShortcutMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyboardShortcutManager;->SHORT_TYPE_LIST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    iput-boolean v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    return-void
.end method

.method public static determineLaunchType(ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "android.intent.category."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string/jumbo v0, "android.app.role."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string/jumbo v0, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x25

    if-ne p0, v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-string/jumbo p0, "com.sec.android.app.launcher"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-string/jumbo p0, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.accessibility.ACCESSIBILITY_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-object p0, p1, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    return-object p1

    :cond_2
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.game.gametools.action.togglemenu"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.game.gametools"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "package"

    const-string/jumbo v1, "window-g"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object p0, p1, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    return-object p1

    :cond_3
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1
.end method

.method public final getShortcutForKey(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "com.samsung.android.intent.action.AI_ASSIST"

    :cond_0
    return-object p0
.end method

.method public final launch(IILjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyboardShortcutManager;->getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launch type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "META_Z"

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "META_U"

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "META_G"

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "META_F"

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "OTHERS"

    :goto_0
    const-string v4, " componentName="

    const-string v5, " "

    invoke-static {v1, v3, v4, p3, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyboardShortcutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    if-nez v1, :cond_6

    const-string p0, "Intent is null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, v4

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_9

    if-eq p2, v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_8

    const-string/jumbo p0, "META_F, Unknown top activity!"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "META_F, top="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "componentname"

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    const/4 p0, 0x0

    if-nez v1, :cond_b

    const-string p1, "Can not launch app, intent is null"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->preCondition()Z

    move-result p2

    if-eqz p2, :cond_c

    return p0

    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)V

    return v2
.end method

.method public final launchCustomizationShortcut(IIILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x4

    if-ne p3, v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-ne p3, v2, :cond_3

    iget-object p0, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p4, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_3
    const/4 v2, 0x3

    if-eq p3, v2, :cond_6

    const/4 v2, 0x6

    if-eq p3, v2, :cond_5

    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object v4, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object v5, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v2}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)V

    move-object v2, v4

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object v4, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    iget-object v4, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "launch type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch p3, :pswitch_data_0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_0
    const-string p3, "AI_ASSIST"

    goto :goto_1

    :pswitch_1
    const-string p3, "HOME"

    goto :goto_1

    :pswitch_2
    const-string/jumbo p3, "SETTINGS"

    goto :goto_1

    :pswitch_3
    const-string/jumbo p3, "SFINDER"

    goto :goto_1

    :pswitch_4
    const-string/jumbo p3, "ROLE"

    goto :goto_1

    :pswitch_5
    const-string p3, "CATEGORY"

    goto :goto_1

    :pswitch_6
    const-string p3, "DEFAULT"

    :goto_1
    const-string v5, " shortcutSetting= "

    const-string v6, " "

    invoke-static {v4, p3, v5, p4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "KeyboardShortcutManager"

    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->preCondition()Z

    move-result p3

    if-eqz p3, :cond_7

    return v0

    :cond_7
    invoke-virtual {v2, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)V

    sget-boolean p2, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p2, :cond_d

    const/16 p2, 0x29

    if-eq p1, p2, :cond_c

    const/16 p2, 0x2c

    if-eq p1, p2, :cond_b

    const/16 p2, 0x36

    if-eq p1, p2, :cond_a

    const/16 p2, 0x2e

    if-eq p1, p2, :cond_9

    const/16 p2, 0x2f

    if-eq p1, p2, :cond_8

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const/4 p1, 0x0

    goto :goto_2

    :pswitch_7
    const-string/jumbo p1, "PKBD0012"

    goto :goto_2

    :pswitch_8
    const-string/jumbo p1, "PKBD0011"

    goto :goto_2

    :pswitch_9
    const-string/jumbo p1, "PKBD0061"

    goto :goto_2

    :pswitch_a
    const-string/jumbo p1, "PKBD0060"

    goto :goto_2

    :pswitch_b
    const-string/jumbo p1, "PKBD0009"

    goto :goto_2

    :pswitch_c
    const-string/jumbo p1, "PKBD0059"

    goto :goto_2

    :pswitch_d
    const-string/jumbo p1, "PKBD0008"

    goto :goto_2

    :pswitch_e
    const-string/jumbo p1, "PKBD0058"

    goto :goto_2

    :pswitch_f
    const-string/jumbo p1, "PKBD0057"

    goto :goto_2

    :pswitch_10
    const-string/jumbo p1, "PKBD0056"

    goto :goto_2

    :cond_8
    const-string/jumbo p1, "PKBD0065"

    goto :goto_2

    :cond_9
    const-string/jumbo p1, "PKBD0015"

    goto :goto_2

    :cond_a
    const-string/jumbo p1, "PKBD0021"

    goto :goto_2

    :cond_b
    const-string/jumbo p1, "PKBD0064"

    goto :goto_2

    :cond_c
    const-string/jumbo p1, "PKBD0062"

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iput-boolean v1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    const-string/jumbo p0, "consumed"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
