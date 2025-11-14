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
    .registers 5

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
    .registers 4

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
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4d

    :cond_7
    const-string/jumbo v0, "android.intent.category."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const-string/jumbo v0, "android.app.role."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x2

    return p0

    :cond_1d
    const-string/jumbo v0, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p0, 0x3

    return p0

    :cond_28
    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x25

    if-ne p0, v0, :cond_37

    const/4 p0, 0x4

    return p0

    :cond_37
    const-string/jumbo p0, "com.sec.android.app.launcher"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x5

    return p0

    :cond_42
    const-string/jumbo p0, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const/4 p0, 0x6

    return p0

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-eq p1, v0, :cond_61

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)V

    return-object p1

    :cond_1e
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1

    :cond_26
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

    :cond_3f
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

    :cond_61
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1
.end method

.method public final getShortcutForKey(I)Ljava/lang/String;
    .registers 5

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

    if-ne p1, v0, :cond_26

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    const-string/jumbo p0, "com.samsung.android.intent.action.AI_ASSIST"

    :cond_26
    return-object p0
.end method

.method public final launch(IILjava/lang/String;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    if-nez v0, :cond_e

    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyboardShortcutManager;->getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    move-result-object v0

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launch type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p2, :cond_39

    if-eq p2, v2, :cond_35

    const/4 v3, 0x2

    if-eq p2, v3, :cond_31

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2d

    const/4 v3, 0x4

    if-eq p2, v3, :cond_29

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :cond_29
    const-string/jumbo v3, "META_Z"

    goto :goto_3c

    :cond_2d
    const-string/jumbo v3, "META_U"

    goto :goto_3c

    :cond_31
    const-string/jumbo v3, "META_G"

    goto :goto_3c

    :cond_35
    const-string/jumbo v3, "META_F"

    goto :goto_3c

    :cond_39
    const-string/jumbo v3, "OTHERS"

    :goto_3c
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

    if-nez v1, :cond_5b

    const-string p0, "Intent is null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    move-object v1, v4

    goto :goto_9c

    :cond_5b
    if-eqz p2, :cond_8e

    if-eq p2, v2, :cond_60

    goto :goto_9c

    :cond_60
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_6d

    const-string/jumbo p0, "META_F, Unknown top activity!"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :cond_6d
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

    goto :goto_9c

    :cond_8e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_95

    goto :goto_59

    :cond_95
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_9c
    const/4 p0, 0x0

    if-nez v1, :cond_a5

    const-string p1, "Can not launch app, intent is null"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_a5
    invoke-virtual {v0}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->preCondition()Z

    move-result p2

    if-eqz p2, :cond_ac

    return p0

    :cond_ac
    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)V

    return v2
.end method

.method public final launchCustomizationShortcut(IIILjava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    return v0

    :cond_5
    const/4 v2, 0x2

    if-ne p3, v2, :cond_9

    return v0

    :cond_9
    const/4 v2, 0x4

    if-ne p3, v2, :cond_d

    return v0

    :cond_d
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-ne p3, v2, :cond_20

    iget-object p0, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p4, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_20
    const/4 v2, 0x3

    if-eq p3, v2, :cond_53

    const/4 v2, 0x6

    if-eq p3, v2, :cond_4a

    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object v4, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    goto :goto_5a

    :cond_37
    iget-object v2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object v5, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v2}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)V

    move-object v2, v4

    goto :goto_5a

    :cond_4a
    new-instance v2, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;

    iget-object v4, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_5a

    :cond_53
    new-instance v2, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    iget-object v4, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    :goto_5a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "launch type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch p3, :pswitch_data_108

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_81

    :pswitch_6a  #0x6
    const-string p3, "AI_ASSIST"

    goto :goto_81

    :pswitch_6d  #0x5
    const-string p3, "HOME"

    goto :goto_81

    :pswitch_70  #0x4
    const-string/jumbo p3, "SETTINGS"

    goto :goto_81

    :pswitch_74  #0x3
    const-string/jumbo p3, "SFINDER"

    goto :goto_81

    :pswitch_78  #0x2
    const-string/jumbo p3, "ROLE"

    goto :goto_81

    :pswitch_7c  #0x1
    const-string p3, "CATEGORY"

    goto :goto_81

    :pswitch_7f  #0x0
    const-string p3, "DEFAULT"

    :goto_81
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

    if-eqz p3, :cond_9b

    return v0

    :cond_9b
    invoke-virtual {v2, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)V

    sget-boolean p2, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p2, :cond_ff

    const/16 p2, 0x29

    if-eq p1, p2, :cond_f6

    const/16 p2, 0x2c

    if-eq p1, p2, :cond_f2

    const/16 p2, 0x36

    if-eq p1, p2, :cond_ee

    const/16 p2, 0x2e

    if-eq p1, p2, :cond_ea

    const/16 p2, 0x2f

    if-eq p1, p2, :cond_e6

    packed-switch p1, :pswitch_data_11a

    packed-switch p1, :pswitch_data_12a

    const/4 p1, 0x0

    goto :goto_f9

    :pswitch_be  #0x27
    const-string/jumbo p1, "PKBD0012"

    goto :goto_f9

    :pswitch_c2  #0x26
    const-string/jumbo p1, "PKBD0011"

    goto :goto_f9

    :pswitch_c6  #0x25
    const-string/jumbo p1, "PKBD0061"

    goto :goto_f9

    :pswitch_ca  #0x24
    const-string/jumbo p1, "PKBD0060"

    goto :goto_f9

    :pswitch_ce  #0x22
    const-string/jumbo p1, "PKBD0009"

    goto :goto_f9

    :pswitch_d2  #0x21
    const-string/jumbo p1, "PKBD0059"

    goto :goto_f9

    :pswitch_d6  #0x20
    const-string/jumbo p1, "PKBD0008"

    goto :goto_f9

    :pswitch_da  #0x1f
    const-string/jumbo p1, "PKBD0058"

    goto :goto_f9

    :pswitch_de  #0x1e
    const-string/jumbo p1, "PKBD0057"

    goto :goto_f9

    :pswitch_e2  #0x1d
    const-string/jumbo p1, "PKBD0056"

    goto :goto_f9

    :cond_e6
    const-string/jumbo p1, "PKBD0065"

    goto :goto_f9

    :cond_ea
    const-string/jumbo p1, "PKBD0015"

    goto :goto_f9

    :cond_ee
    const-string/jumbo p1, "PKBD0021"

    goto :goto_f9

    :cond_f2
    const-string/jumbo p1, "PKBD0064"

    goto :goto_f9

    :cond_f6
    const-string/jumbo p1, "PKBD0062"

    :goto_f9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ff
    iput-boolean v1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    const-string/jumbo p0, "consumed"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_7f  #00000000
        :pswitch_7c  #00000001
        :pswitch_78  #00000002
        :pswitch_74  #00000003
        :pswitch_70  #00000004
        :pswitch_6d  #00000005
        :pswitch_6a  #00000006
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x1d
        :pswitch_e2  #0000001d
        :pswitch_de  #0000001e
        :pswitch_da  #0000001f
        :pswitch_d6  #00000020
        :pswitch_d2  #00000021
        :pswitch_ce  #00000022
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x24
        :pswitch_ca  #00000024
        :pswitch_c6  #00000025
        :pswitch_c2  #00000026
        :pswitch_be  #00000027
    .end packed-switch
.end method
